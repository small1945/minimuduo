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
#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <boost/shared_ptr.hpp>
#include <boost/make_shared.hpp>
#include <sys/stat.h>
#include <fstream>
using namespace std;

class FileServer
{
public:
    const int kBUFSIZE = 1024 * 1024;
    FileServer(int port, EventLoop *loop, const char *ip, const char *filename) : m_loop(loop),
                                                                                  m_server(loop, port, ip), m_filename(filename), m_filesize(0)

    {
        ifstream fin(filename);
        if (fin.is_open())
        {
            fin.seekg(0, ios::end);
            m_filesize = fin.tellg();
            fin.close();
        }

        m_server.setLoopNum(0);
        m_server.setCloseCallback(boost::bind(&FileServer::onClose, this, _1));
        m_server.setConnectCallback(boost::bind(&FileServer::onConnect, this, _1));
   
    }
    ~FileServer() {}

    void start()
    {
        m_server.start();
        m_loop->loop();
    }

    void onClose(const boost::shared_ptr<TcpConnection> &conn)
    {
        printf("snedbytesum:%d\n",conn->getSendBytesSum());
    }
    void onConnect(const boost::shared_ptr<TcpConnection> &conn)
    {

        FILE *fp = fopen(m_filename, "r");
        if (fp == NULL)
        {
            printf("reason=%s\n", strerror(errno));
            printf("open file:%s fail", m_filename);
            conn->shutdown();
        }
        else if (conn->IsConnected())
        {
            std::string result;
            char buf[kBUFSIZE];
            int readbytes = 0;
            while ((readbytes = fread(buf, 1, sizeof buf, fp)) > 0)
            {   
                result.append(buf,readbytes);    
            }
           
            conn->send(result.c_str(),result.size());
        }
    }


private:
    EventLoop *m_loop;
    Tcpserver m_server;
    const char *m_filename;
    int m_filesize;
};

int main(int argc, char *argv[])
{
    EventLoop loop;
    EventLoop *mainloop = &loop;
    // if(argc>1)
    // {
    FileServer fileserver(8000, mainloop, "127.0.0.1", "../build/BIGFILE.txt");
    fileserver.start();
    mainloop->loop();
    //}
}