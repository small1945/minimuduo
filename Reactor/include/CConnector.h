#ifndef CCONNECTOR_H_
#define CCONNECTOR_H_
#include"CEventLoop.h"
#include"CInetaddr.h"
#include"Channel.h"
#include"CInetaddr.h"
#include"CSocket.h"
#include"Channel.h"
#include"boost/shared_ptr.hpp"
#include"CTimer.h"
class Connector
{
    public:
        using ConnectCallBack=function<void(Inetaddr*,int)>;
        Connector(EventLoop*,int port,const char*ip);
        ~Connector(){}
        void setConnectCallBack(const ConnectCallBack&cb){m_connectCb=cb;}
        void start();
        void init();
        void restart();
        void stop();
        void connecting();
        void handlewrite();
        int fd()const{return m_connectSocket.fd();}
        int getChannelIndex()const{return m_connectChannel.index();}
         Channel* getChannel(){return &m_connectChannel;}


    private:
        EventLoop *m_loop;
        boost::shared_ptr<Inetaddr> m_clientAddr;
        Socket m_connectSocket;
        ConnectCallBack  m_connectCb;
        Channel m_connectChannel;





};










#endif