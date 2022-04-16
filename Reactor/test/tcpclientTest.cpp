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
    m_client(port,loop,ip),m_factfilesize(0),m_writefilesize(0)
    {
        m_stdinChannel.setReadCallBack(bind(&TestClient::handleread,this));
        m_client.setConnectCallback(bind(&TestClient::onConnect,this,_1));
        m_client.setMessageCallback(bind(&TestClient::onMessage,this,_1,_2));
        m_client.setWriteCompleteCallback(bind(&TestClient::onWriteCompelte,this,_1));
        m_client.setCloseCallback(bind(&TestClient::closefile,this));
        m_stdinChannel.enableReading();
    }
    void closefile(){fclose(m_file);}
    ~TestClient() {}
    void connect()
    {
        m_file=fopen("RESULT.txt","a");
        m_client.start();
    }
    void handleread()
    {
        char buf[1024];
        fgets(buf,1024,stdin);
        
        buf[strlen(buf)-1]='\0';
        printf("%s\n",buf);
        m_client.send(buf,strlen(buf));
    }

    void onConnect(const boost::shared_ptr<TcpConnection> &conn)
    {
       
    }
    void onMessage(const boost::shared_ptr<TcpConnection> &conn, Buffer *buf)
    {
        int bytes = buf->readableBytes();
        auto str = buf->retrieveStr(bytes);
        m_factfilesize+=bytes;
       // printf("receive %d bytes from %s:%d,message is [%s]\n", bytes, conn->getClientIP().c_str(), conn->getClientPort(), str.c_str());       
        int size=fwrite(str.c_str(),1,str.size(),m_file);
        m_writefilesize+=size;
         printf("receive %d bytes from %s,filesize is %d wtirefilesize:%d\n", bytes,conn->getClientIP().c_str(),m_factfilesize,m_writefilesize);
        
       
    }

    void onWriteCompelte(const boost::shared_ptr<TcpConnection> &conn)
    {
        printf("write complete\n");
    }
   

private:
    Channel m_stdinChannel;
    TcpClient m_client;
    int m_writefilesize;
    int m_factfilesize;
    FILE *m_file;
};

int main()
{
    EventLoop loop;
    EventLoop *mainloop = &loop;

    TestClient client(8000,mainloop,"127.0.0.1");
    client.connect();
    
    loop.loop();
}