#include "CTcpClient.h"
#include "boost/bind.hpp"
#include "boost/make_shared.hpp"
TcpClient::TcpClient(int port, EventLoop *loop, const char *ip)
    : m_connector(new Connector(loop, port, ip)),
      m_port(port),
      m_loop(loop),
      m_state(State::Disconnect)
{
    m_connector->init();
    m_connector->setConnectCallBack(boost::bind(&TcpClient::newConnection, this, _1, _2));
}

void TcpClient::newConnection(Inetaddr *addr, int port)
{
    m_state = State::Connecting;
    char name[30];
    snprintf(name, sizeof(name), "%d", port);
    boost::shared_ptr<TcpConnection> conn = boost::make_shared<TcpConnection>(m_connector->fd(), m_loop, name, addr, m_connector->getChannel());
    conn->setConnectCallback(m_connectCb);
    conn->setMessageCallback(m_messageCb);
    conn->setWriteCompleteCallback(m_writeCompleteCb);
    conn->setCloseCallback(bind(&TcpClient::destoryConnection, this));
    conn->connectEstablished();
    m_conn = conn;
}

void TcpClient::destoryConnection()
{
    if(m_closeback)
    {
        m_closeback();
    }
    printf("close connect\n");
    close(m_connector->fd());
}

void TcpClient::start()
{

    m_connector->start();
}

void TcpClient::send(const char *buf,int len)
{
    if (m_state != State::Connecting)
    {
        perror("diconnect,send false\n");
        return;
    }
    if (m_conn)
    {
        m_conn->sendInLoop(buf,len);
    }
}

TcpClient::~TcpClient()
{
    m_conn->connectionDestory();
}
