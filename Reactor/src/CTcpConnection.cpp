#include "CTcpConnection.h"
#include "CEventLoop.h"
#include <iostream>
#include <string.h>
#include <CInetaddr.h>
#include "boost/bind.hpp"
#include"CTimer.h"
TcpConnection::TcpConnection(int fd, EventLoop *loop, const string &name, Inetaddr *addr)
    : m_state(State::connecting),
      m_channel(make_shared<Channel>(fd, loop)),
      m_socket(make_shared<Socket>(fd)),
      m_loop(loop),
      m_name(name),
      m_addr(addr),
      m_sendBytesSum(0)
{
    m_channel->setReadCallBack(bind(&TcpConnection::handleread, this));
    m_channel->setCloseCallBack(bind(&TcpConnection::handleclose, this));
    m_channel->setWriteCallBack(bind(&TcpConnection::handlewrite, this));
}

TcpConnection::TcpConnection(int fd, EventLoop *loop, const string &name, Inetaddr *addr, Channel *channel)
    : m_state(State::connecting),
      m_channel(channel),
      m_socket(make_shared<Socket>(fd)),
      m_loop(loop),
      m_name(name),
      m_addr(addr),
      m_sendBytesSum(0)
{
    m_channel->setReadCallBack(bind(&TcpConnection::handleread, this));
    m_channel->setCloseCallBack(bind(&TcpConnection::handleclose, this));
    m_channel->setWriteCallBack(bind(&TcpConnection::handlewrite, this));
}

TcpConnection::~TcpConnection()
{
}

void TcpConnection::handlewrite()
{

    int ret = write(m_channel->fd(), m_outputBuffer.peek(), m_outputBuffer.readableBytes());
   
    if (ret > 0)
    {
         m_sendBytesSum+=ret;
        m_outputBuffer.retrieve(ret);
        if (m_outputBuffer.readableBytes() == 0)
        {
            m_channel->disableWriting();
            m_channel->enableReading();
            if (m_writeCompleteCb)
            {
                m_writeCompleteCb(shared_from_this());
            }
        }
    }

    else
    {
        perror("write error");
    }
}

void TcpConnection::sendInLoop(const char *buf,int len)
{
    m_loop->runInLoop(boost::bind(&TcpConnection::send,this,buf,len));
}



void TcpConnection::send(const char *buf,int len)
{
    if(m_state!=State::connected){return;}
    // if(m_timer)
    // {
    //     m_timer->delayExpireTime(10);
    // }
  
    int remain = len;
    bool error = false;

    if (!m_channel->IsWriting()&&m_outputBuffer.readableBytes() == 0)
    {
        int ret = write(m_channel->fd(), buf, len);
       
        if (ret > 0)
        {
             m_sendBytesSum+=ret;
            remain -= ret;
            if (remain == 0 && m_writeCompleteCb)
            {
                //m_loop->runInLoop(boost::bind(&TcpConnection::m_writeCompleteCb, shared_from_this()));
                m_writeCompleteCb(shared_from_this());
            }
        }
        else
        {
            if (errno != EWOULDBLOCK)
            {
                if (errno == EPIPE)
                {
                    error = true;
                    cout << "send false" << buf;
                }
            }
        }
    }

    if (!error && remain > 0)
    {
        m_outputBuffer.append(buf, remain);
        m_channel->enableWriting();
    }
}



void TcpConnection::handleread()
{
    if(m_timer)
    {
        m_timer->delayExpireTime(10);
        cout<<"ip:"<<m_addr->getIp()<<":"<<m_addr->getPort()<<" delay 10 s"<<endl;
    }
    int rbytes = m_inputBuffer.readFd(m_channel->fd());
    if (rbytes < 0)
    {
        if ((errno != EAGAIN) && (errno != EWOULDBLOCK))
        {
            perror("read false");
        }
    }
    else if (rbytes == 0)
    {
        handleclose();
    }
    else
    {
        if (m_messageCb)
        {
            m_messageCb(shared_from_this(), &m_inputBuffer);
        }
    }
}

void TcpConnection::connectEstablished()
{
    setState(State::connected);

    m_channel->enableReading();

    if (m_connectCb)
    {
        m_connectCb(shared_from_this());
    }
}


void TcpConnection::shutdown()
{
    if(m_state==State::disconnected)
    {
        perror("connecion had been closed");
    }
    setState(State::disconnected);
    m_loop->queueInLoop(boost::bind(&TcpConnection::connectionDestory,this));

}


void TcpConnection::handleclose()
{
    setState(State::disconnected);
    if (m_closeCb)
    {
        m_closeCb(shared_from_this());
    }
}

void TcpConnection::connectionDestory()
{
    m_channel->remove();
    if (m_channel->index() > 0)
    {
        close(m_channel->fd());
        m_channel->setIndex(-1);
        std::cout << "CLOSE ip:" << m_addr->getIp() << " port:" << m_addr->getPort() << " threadId: " << m_loop->getThreadId() << endl;

    }
    if (m_addr)
    {
        delete m_addr;
        m_addr = nullptr;
    }
}

pid_t TcpConnection::getThreadId() const
{
    return m_loop->getThreadId();
}
