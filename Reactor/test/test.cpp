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

class TestServer
{
public:
    TestServer(int port, EventLoop *loop,const char*ip) : m_loop(loop),
                                            m_server(loop, port,ip),
                                            m_message()
    {
        getMessage();
      
        m_server.setLoopNum(10);
        m_server.setConnectCallback(boost::bind(&TestServer::onConnect, this, _1));
        m_server.setMessageCallback(boost::bind(&TestServer::onMessage, this, _1, _2));
        m_server.setWriteCompleteCallback(boost::bind(&TestServer::onWriteComplete, this,_1));
    }
    ~TestServer() {}
    void func(){printf("func\n");}
    void start()
    {
        m_server.start();
        m_loop->loop();
        m_loop->runInLoop(boost::bind(&TestServer::func,this)); 
    }
  
    void getMessage()
    {
       // for (int i = 0; i < 600; i++)
        //{
            string line;
            for (int i = 33; i < 127; ++i)
            {
                line.push_back(char(i));
            }
            line += line;

            for (size_t i = 0; i < 127 - 33; ++i)
            {
                m_message += line.substr(i, 72) + '\n';
            }
       // }
    }
    void onConnect(const boost::shared_ptr<TcpConnection> &conn)
    {
        if (conn->IsConnected())
        {
            cout << conn->getName() << ":connect with " << conn->getClientIP() <<":"<<conn->getClientPort()<< " threadID:" << conn->getThreadId() << endl;
        }
        conn->send(m_message.c_str(),m_message.size());
    }

    void onWriteComplete(const boost::shared_ptr<TcpConnection> &conn)
    {
        // conn->send(m_message.c_str());
        printf("send successful\n");
        cout<<"complete"<<endl;
    }

    void onMessage(const boost::shared_ptr<TcpConnection> &conn, Buffer *buf)
    {
        int bytes = buf->readableBytes();
        auto str = buf->retrieveStr(bytes);
        printf("receive %d bytes from %s:%d,message is [%s]\n", bytes, conn->getClientIP().c_str(),conn->getClientPort(), str.c_str());
      //  conn->send(str.c_str());
    }

private:
    EventLoop *m_loop;
    Tcpserver m_server;
    string m_message;
};

void test()
{
    printf("test\n");
}
int main()
{
    EventLoop loop;
     EventLoop *mainloop = &loop;
     TestServer server(8000, mainloop,"127.0.0.1");
      server.start();
    // mainloop->runInLoop(test);
    // mainloop->loop();

}