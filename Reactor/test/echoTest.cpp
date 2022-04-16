#include <sys/epoll.h>
#include <stdio.h>
#include <sys/socket.h>
#include "CSocket.h"
#include <iostream>
#include <stdlib.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <string.h>
#include "CEpoll.h"
#include "Thread.h"
#include "CEventLoop.h"
#include "CAcceptor.h"
#include "CTcpServer.h"
#include "CInetaddr.h"
#include "CEventLoopthread.h"
#include <boost/bind.hpp>
#include <CTime.h>
using namespace std;

class EchoServer
{
public:
    EchoServer(int port, EventLoop *loop, const char *ip) : m_loop(loop),
                                                            m_server(loop, port, ip)

    {
        m_server.setLoopNum(20);
        m_server.setConnectCallback(boost::bind(&EchoServer::onConnect, this, _1));
        m_server.setMessageCallback(boost::bind(&EchoServer::onMessage, this, _1, _2));
        // m_server.setWriteCompleteCallback(boost::bind(&EchoServer::onWriteComplete, this,_1));
    }
    ~EchoServer() {}

    void start()
    {
        m_server.start();
        m_loop->loop();
    }

    void onConnect(const boost::shared_ptr<TcpConnection> &conn)
    {
       
           m_loop->repeatRunAfter(1,boost::bind(&TcpConnection::send,conn,"123\n",4));
       
    }

    void onMessage(const boost::shared_ptr<TcpConnection> &conn, Buffer *buf)
    {
    }

private:
    const char *_getStrTime()
    {
        auto nowtime = CTime::Now();
        return nowtime.str();
    }
    void _SmallToBigLetter(string &str)
    {
        for (auto &c : str)
        {
            if (c >= 'a' && c <= 'z')
            {
                c -= 32;
            }
        }
    }
    EventLoop *m_loop;
    Tcpserver m_server;
};

int main()
{
    EventLoop loop;
    EventLoop *mainloop = &loop;
    EchoServer echoserver(8000, mainloop, "127.0.0.1");
    echoserver.start();
    mainloop->loop();
}