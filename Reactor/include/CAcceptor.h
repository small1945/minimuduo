#ifndef CACCEPTOR_H_
#define CACCEPTOR_H_
#include"Channel.h"
#include"CEventLoop.h"
#include"CSocket.h"
#include"CInetaddr.h"
#include<boost/shared_ptr.hpp>
class Acceptor
{
    public:
        using ConnectionCallBack=function<void(int fd,Inetaddr*)>;

        Acceptor(int port,EventLoop*,const char*ip);
        ~Acceptor();
        void setConnectCallBack(ConnectionCallBack cb){m_connectionCB=cb;}
        void handleConnect();
        void init();
        EventLoop* getLoop()const{return m_loop;}
    private:
        Channel m_acceptChannel;
        EventLoop *m_loop;
        Socket m_acceptSocket;
        ConnectionCallBack m_connectionCB;
        boost::shared_ptr<Inetaddr> m_addr;

};






#endif