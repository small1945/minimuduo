#ifndef CTCPCLIENT_H_
#define CTCPCLIENT_H_
#include"CTcpConnection.h"
#include"CConnector.h"

class TcpClient
{
    public:

        using CloseCallBack=function<void()>;
        enum class State
        {
            Connecting,
            Disconnect
        };
        TcpClient(int ,EventLoop*,const char *);
        ~TcpClient();
        void newConnection(Inetaddr*addr,int port);
        void destoryConnection();
        void start();
        void send(const char*,int);
        void setReadCallBack();
        void setConnectCallback(const TcpConnection::ConnectionCallBack &cb){m_connectCb=cb;}
        void setMessageCallback(const TcpConnection::MessageCallback &cb){m_messageCb=cb;}
        void setWriteCallback(const TcpConnection::WriteCallBack &cb){m_writeCb=cb;}
        void setWriteCompleteCallback(const TcpConnection::WriteCallBackComplete &cb){m_writeCompleteCb=cb;}
        void setCloseCallback(const CloseCallBack&cb){m_closeback=cb;}

    private:

        TcpConnection::ConnectionCallBack m_connectCb;
        TcpConnection::MessageCallback m_messageCb;
        TcpConnection::WriteCallBack m_writeCb;
        TcpConnection::WriteCallBackComplete m_writeCompleteCb;
        boost::shared_ptr<Connector> m_connector;
        int m_port;
        EventLoop *m_loop;
        State m_state;
        boost::shared_ptr<TcpConnection> m_conn;
        CloseCallBack m_closeback;
        




};














#endif