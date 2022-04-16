#include"CAcceptor.h"
#include<iostream>

Acceptor::Acceptor(int port,EventLoop*loop,const char *ip="")
:
m_acceptChannel(loop),
m_loop(loop),
m_addr(new Inetaddr(port,ip))
{
    m_acceptChannel.setReadCallBack(bind(&Acceptor::handleConnect,this));   
}

Acceptor::~Acceptor()
{}

void Acceptor::init()
{
    m_acceptSocket.CreateFd();
    m_acceptSocket.Bind(m_addr.get());
    m_acceptSocket.Listen();
    m_acceptChannel.setFd(m_acceptSocket.fd());
    m_acceptChannel.enableReading();
}


void Acceptor::handleConnect()
{
        sockaddr_in client;
        int confd=m_acceptSocket.Accept(client);
        Inetaddr *clientaddr=new Inetaddr(&client);
        if(confd>0)
        {
            m_connectionCB(confd,clientaddr);
           // std::cout<<clientaddr->getIp()<< ":"<<clientaddr->getPort()<<std::endl;
           // std::cout<<m_loop->getThreadId()<<endl;
        }
       
}
