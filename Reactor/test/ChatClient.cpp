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

#include "CInetaddr.h"
#include "CEventLoopthread.h"
#include <boost/bind.hpp>
#include "CTcpClient.h"
using namespace std;

class TestClient
{
public:
    TestClient(int port, EventLoop *loop, const char *ip):
    m_stdinChannel(0,loop),
    m_client(port,loop,ip)
    {
        m_stdinChannel.setReadCallBack(bind(&TestClient::handleread,this));
        m_client.setConnectCallback(bind(&TestClient::onConnect,this,_1));
        m_client.setMessageCallback(bind(&TestClient::onMessage,this,_1,_2));
        m_client.setWriteCompleteCallback(bind(&TestClient::onWriteCompelte,this,_1));
        m_client.setCloseCallback(bind(&TestClient::onClose,this));
        m_stdinChannel.enableReading();
    }
    void onClose(){}
    ~TestClient() {}
    void connect()
    {
        m_client.start();
    }
    void handleread()
    {
        char buf[1024];
        fgets(buf,1024,stdin);  
        buf[strlen(buf)-1]='\0';
        m_client.send(buf,strlen(buf));
    }

    void onConnect(const boost::shared_ptr<TcpConnection> &conn)
    {
       
    }
    void onMessage(const boost::shared_ptr<TcpConnection> &conn, Buffer *buf)
    {
        int bytes = buf->readableBytes();
        auto str = buf->retrieveStr(bytes); 
        printf("%s\n",str.c_str());       
       
    }

    void onWriteCompelte(const boost::shared_ptr<TcpConnection> &conn)
    {
        printf("write complete\n");
    }
   

private:
    Channel m_stdinChannel;
    TcpClient m_client;
    
};

int main()
{
    EventLoop loop;
    EventLoop *mainloop = &loop;

    TestClient client(8000,mainloop,"127.0.0.1");
    client.connect();
    
    loop.loop();
}