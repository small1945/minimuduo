#include "Channel.h"
#include <sys/epoll.h>
#include <poll.h>
#include <CEventLoop.h>
#include <iostream>
const int Channel::kReadEvent = EPOLLIN | EPOLLPRI;
const int Channel::kWriteEvent = EPOLLOUT;
const int Channel::kNoneEvent = 0;

Channel::Channel(int fd, EventLoop *loop) : m_event(0),
                                            m_revent(0),
                                            m_fd(fd),
                                            m_index(-1),
                                            m_IsHandleing(false),
                                            m_IsEableWrite(false),
                                            m_IsEnableRead(false),
                                            m_loop(loop)
{
}

Channel::~Channel() {}
void Channel::update() { m_loop->update(this); }
void Channel::remove() { if(m_index!=-1){m_loop->remove(this);} }

Channel::Channel(EventLoop *loop) : m_event(0),
                                    m_revent(0),
                                    m_fd(-1),
                                    m_index(-1),
                                    m_IsHandleing(false),
                                    m_IsEableWrite(false),
                                    m_IsEnableRead(false),
                                    m_loop(loop) {}

void Channel::handleEvent()
{
    if (m_event & EPOLLRDHUP)
    {
        if (m_closecallback)
        {
            m_closecallback();
        }
    }
    else if (m_event & EPOLLIN)
    {
        if (m_readcallback)
        {
            m_readcallback();
        }
    }
    else if (m_event & EPOLLOUT)
    {
        if (m_writecallback)
        {
            m_writecallback();
        }
    }
}