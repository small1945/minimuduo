#include "CTcpServer.h"
#include "CEventLoop.h"
#include <boost/bind.hpp>
#include <boost/make_shared.hpp>
#include <CInetaddr.h>

Tcpserver::Tcpserver(EventLoop *loop, int port, const char *ip = "")
    : m_acceptor(make_shared<Acceptor>(port, loop, ip)),
      m_IsStart(false),
      m_loop(loop),
      m_port(port),
      m_connectId(0),
      m_loopThreadpool(new EventLoopThreadpool(loop))
{
  m_acceptor->init();
  m_acceptor->setConnectCallBack(bind(&Tcpserver::newConnection, this, _1, _2));
}

void Tcpserver::newConnection(int sockfd, Inetaddr *addr)
{
  char buf[32];
  snprintf(buf, sizeof(buf), "%d%d", m_port, m_connectId++);

  auto ploop = m_loopThreadpool->getNextLoop();
  boost::shared_ptr<TcpConnection> conn=boost::make_shared<TcpConnection> (sockfd, ploop, buf, addr);

  conn->setConnectCallback(m_connectCb);
  conn->setMessageCallback(m_messageCb);
  conn->setWriteCallback(m_writeCb);
  conn->setWriteCompleteCallback(m_writeCompleteCb);
  conn->setCloseCallback(bind(&Tcpserver::closeConnection, this, _1));
  
  boost::shared_ptr<Timer>timer=boost::make_shared<Timer>(boost::bind(&Tcpserver::closeConnection,this,conn),15);
  Timers.push_back(timer);
  conn->setTimer(timer.get());
  ploop->runAfter(timer.get());

  conn->connectEstablished();
  string connname = buf;
  Connections[connname] = conn;

 
}

Tcpserver::~Tcpserver()
{
  for (auto iter = Connections.begin(); iter != Connections.end(); iter++)
  {
    auto conn = iter->second;
    conn->getLoop()->runInLoop(bind(&TcpConnection::connectionDestory, conn));
  }
}

void Tcpserver::start()
{
  if (!m_IsStart)
  {
    m_IsStart = true;
    m_loopThreadpool->start(m_loopCallback);
  }
}

void Tcpserver::closeConnection(const boost::shared_ptr<TcpConnection> &conn)
{
  if(m_closecb){m_closecb(conn);}
  if(Connections.find(conn->getName())==Connections.end()){return;}
  Connections.erase(conn->getName());
  auto ploop = conn->getLoop();
  ploop->runInLoop(bind(&TcpConnection::connectionDestory, conn));
}

void Tcpserver::timeoutClose()
{
   printf("expire\n");
}
