#include "CConnector.h"
#include "boost/make_shared.hpp"
#include"boost/bind.hpp"
Connector::Connector(EventLoop *loop, int port, const char *ip)
    : m_loop(loop),
      m_clientAddr(new Inetaddr(port, ip)),
      m_connectSocket(),
      m_connectChannel(loop)
{
}

void Connector::init()
{
    m_connectSocket.CreateFd();
    m_connectChannel.setFd(m_connectSocket.fd());
}

void Connector::start()
{
    auto clientAddr = m_clientAddr->Addr();
    int len = sizeof(clientAddr);
    int ret = connect(m_connectSocket.fd(), (struct sockaddr *)&clientAddr, len);
    if (ret == 0)
    {
        printf("connect success,port is %d\n", m_clientAddr->getPort());
        connecting();
    }

    switch (errno)
    {
    case ECONNREFUSED:
         m_loop->runAfter(5,boost::bind(&Connector::restart,this));
        perror("connect false");
        break;

    case ETIMEDOUT:
        m_loop->runAfter(5,boost::bind(&Connector::restart,this));
       // restart();
        break;
    default:
        break;
    }
}

void Connector::stop()
{
    close(m_connectSocket.fd());
}

void Connector::restart()
{
    printf("restart,try to connect\n");
    start();
}

void Connector::connecting()
{
    m_connectChannel.setWriteCallBack(bind(&Connector::handlewrite, this));
    m_connectChannel.enableWriting();
}

void Connector::handlewrite()
{
    auto err = m_connectSocket.GetSocketError();
    if (err)
    {
        printf("error::%d\n",err);
        restart();
    }
    else
    {
        m_connectCb(m_clientAddr.get(), m_clientAddr->getPort());
        m_connectChannel.disableWriting();
    }
}