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
using namespace std;

class ChatServer
{
public:
    ChatServer(int port, EventLoop *loop, const char *ip) : m_loop(loop),
                                                            m_server(loop, port, ip)

    {

        m_server.setLoopNum(10);
        m_server.setConnectCallback(boost::bind(&ChatServer::onConnect, this, _1));
        m_server.setMessageCallback(boost::bind(&ChatServer::onMessage, this, _1, _2));
        m_server.setWriteCompleteCallback(boost::bind(&ChatServer::onWriteComplete, this, _1));
    }
    ~ChatServer() {}
    void func() { printf("func\n"); }
    void start()
    {
        m_server.start();
        m_loop->loop();
        m_loop->runInLoop(boost::bind(&ChatServer::func, this));
    }

    void onConnect(const boost::shared_ptr<TcpConnection> &conn)
    {
        if (conn->IsConnected())
        {
            cout << conn->getName() << ":connect with " << conn->getClientIP() << ":" << conn->getClientPort() << " threadID:" << conn->getThreadId() << endl;
        }
    }

    void onWriteComplete(const boost::shared_ptr<TcpConnection> &conn)
    {

        printf("send successful\n");
        cout << "complete" << endl;
    }

    void onMessage(const boost::shared_ptr<TcpConnection> &conn, Buffer *buf)
    {
        boardcast(conn,buf);
       
    }
    void boardcast(const boost::shared_ptr<TcpConnection> &conn, Buffer *buf)
    {
        int bytes = buf->readableBytes();
        auto str = buf->retrieveStr(bytes);
        printf("receive %d bytes from %s:%d,message is [%s]\n", bytes, conn->getClientIP().c_str(), conn->getClientPort(), str.c_str());
        auto ActiveConnections = m_server.getConnections();
        for (auto iter = ActiveConnections.begin(); iter != ActiveConnections.end(); iter++)
        {
            auto activeConn = iter->second;
            if (activeConn != conn)
            {
                activeConn->send(str.c_str(),bytes);
                printf("sned to %s:%d",activeConn->getClientIP().c_str(),activeConn->getClientPort());          
            }
        }
    }

private:
    EventLoop *m_loop;
    Tcpserver m_server;
};

void test()
{
    printf("test\n");
}
int main()
{
    EventLoop loop;
    EventLoop *mainloop = &loop;
    ChatServer server(8000, mainloop, "127.0.0.1");
    server.start();
    // mainloop->runInLoop(test);
    // mainloop->loop();
}