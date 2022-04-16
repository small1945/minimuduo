#ifndef CTCPCONNECTION_H_
#define CTCPCONNECTION_H_
#include <functional>
#include <memory>
#include "CSocket.h"
#include "Channel.h"
#include <boost/shared_ptr.hpp>
#include <boost/enable_shared_from_this.hpp>
#include <boost/noncopyable.hpp>
#include "CBuffer.h"
#include"boost/any.hpp"

class EventLoop;
class Timer;
class TcpConnection : public boost::enable_shared_from_this<TcpConnection>
{
public:
    enum class State
    {
        connecting,
        connected,
        disconnected
    };
    using MessageCallback = std::function<void(const boost::shared_ptr<TcpConnection>, Buffer *buf)>;
    using ConnectionCallBack = function<void(const boost::shared_ptr<TcpConnection>)>;
    using CloseCallBack = function<void(const boost::shared_ptr<TcpConnection>)>;
    using WriteCallBack = function<void(const char *buf)>;
    using WriteCallBackComplete = function<void(const boost::shared_ptr<TcpConnection>)>;

    TcpConnection(int fd, EventLoop *, const string &, Inetaddr *);
    TcpConnection(int fd, EventLoop *, const string &, Inetaddr *, Channel *);
    ~TcpConnection();
    int getSendBytesSum()const{return m_sendBytesSum;}
    TcpConnection(const TcpConnection &) = delete;
    TcpConnection operator=(const TcpConnection &) = delete;

    void setTimer(Timer *timer) { m_timer = timer; }
    void setMessageCallback(const MessageCallback &cb) { m_messageCb = cb; }
    void setConnectCallback(const ConnectionCallBack &cb) { m_connectCb = cb; }
    void setCloseCallback(const CloseCallBack &cb) { m_closeCb = cb; }
    void setWriteCallback(const WriteCallBack &cb) { m_writeCb = cb; }
    void setWriteCompleteCallback(const WriteCallBackComplete &cb) { m_writeCompleteCb = cb; }
    void setState(State s) { m_state = s; }
    bool IsConnected() const { return m_state == State::connected; }
    void handleread();
    void handleclose();
    void handlewrite();
    void connectEstablished();
    void connectionDestory();
    void writeComplete();
    void enableWrite() { m_channel->enableWriting(); }
    const string &getClientIP() const { return m_addr->getIp(); }
    int getClientPort() const { return m_addr->getPort(); }
    void send(const char *,int);
    void sendInLoop(const char *,int);
    void setChannelIndex(int i) { m_channel->setIndex(i); }
    void shutdown();

    const string &getName() const { return m_name; }
    pid_t getThreadId() const;
    EventLoop *getLoop() const { return m_loop; }
    void setReadable() { m_channel->setAbleRead(); }
    void setContext(const boost::any&  context){m_context=context;}
    const boost::any& getContext()const{return m_context;}
    boost::any *getMutableContext(){return &m_context;}


    
    

private:
    MessageCallback m_messageCb;
    ConnectionCallBack m_connectCb;
    CloseCallBack m_closeCb;
    WriteCallBack m_writeCb;
    WriteCallBackComplete m_writeCompleteCb;
    State m_state;
    std::shared_ptr<Channel> m_channel;
    std::shared_ptr<Socket> m_socket;
    EventLoop *m_loop;
    string m_name;
    Inetaddr *m_addr;
    Buffer m_inputBuffer;
    Buffer m_outputBuffer;
    Timer *m_timer;
    boost::any m_context;
    int m_sendBytesSum;
};

#endif