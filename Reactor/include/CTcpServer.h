#ifndef CTCPSERVER_H_
#define CTCPSERVER_H_
#include"CAcceptor.h"
#include"CTcpConnection.h"
#include"CEventLoopthreadpool.h"
#include"CTimer.h"
class EventLoop;
class Tcpserver
{
    public:
        
        using CloseCallBack=function<void(boost::shared_ptr<TcpConnection>)>;
        using ConnectMap=map<string,boost::shared_ptr<TcpConnection>>;
        using ConnectionTimerMap=vector<boost::shared_ptr<Timer>>;
        Tcpserver(EventLoop*,int port,const char*ip);
        ~Tcpserver();
        void start();
        void setConnectCallback(const TcpConnection::ConnectionCallBack &cb){m_connectCb=cb;}
        void setMessageCallback(const TcpConnection::MessageCallback &cb){m_messageCb=cb;}
        void setLoopInitCallback(const  EventLoopThread::InitFunc&func){m_loopCallback=func;}
        void setWriteCallback(const TcpConnection::WriteCallBack &cb){m_writeCb=cb;}
        void setWriteCompleteCallback(const TcpConnection::WriteCallBackComplete &cb){m_writeCompleteCb=cb;}
        void setCloseCallback(const CloseCallBack&cb){m_closecb=cb;}
        void newConnection(int fd,Inetaddr*);
        void closeConnection(const boost::shared_ptr<TcpConnection> &conn);
        void setLoopNum(int num){m_loopNum=num;m_loopThreadpool->setThreadnum(m_loopNum);}
        void timeoutClose();
        const ConnectMap& getConnections()const {return Connections;}

    private: 
        std::shared_ptr<Acceptor> m_acceptor;
        bool m_IsStart;
        EventLoop*m_loop;
        int m_port;
        int m_connectId;
        TcpConnection::ConnectionCallBack m_connectCb;
        TcpConnection::MessageCallback m_messageCb;
        TcpConnection::WriteCallBack m_writeCb;
        TcpConnection::WriteCallBackComplete m_writeCompleteCb;
        ConnectMap Connections;
        ConnectionTimerMap Timers;
        EventLoopThread::InitFunc m_loopCallback;
        std::shared_ptr<EventLoopThreadpool>m_loopThreadpool;
        CloseCallBack m_closecb;
        int m_loopNum;
};  








#endif