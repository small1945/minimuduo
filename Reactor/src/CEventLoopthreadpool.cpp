#include "CEventLoopthreadpool.h"

EventLoopThreadpool::EventLoopThreadpool(EventLoop *baseloop) : m_threadNum(0), m_baseloop(baseloop), m_index(0)
{
}

EventLoopThreadpool::~EventLoopThreadpool()
{
}

void EventLoopThreadpool::setThreadnum(int nums)
{
    m_threadNum = nums;
    m_threadvec.reserve(m_threadNum);
    m_loopvec.reserve(m_threadNum);
}

EventLoop *EventLoopThreadpool::getNextLoop()
{
    if (m_loopvec.empty())
    {
        return m_baseloop;
    }
    auto retloop = m_loopvec[m_index++];
    if (m_index == m_threadNum)
    {
        m_index = 0;
    }
    return retloop;
}

void EventLoopThreadpool::start(const EventLoopThread::InitFunc &cb)
{

    if (m_threadNum == 0 && cb)
    {
        cb(m_baseloop);
        return;
    }
    for (int i = 0; i < m_threadNum; i++)
    {
        EventLoopThread *Eventthread = new EventLoopThread(cb);
        m_threadvec.push_back(Eventthread);
        m_loopvec.push_back(Eventthread->startLoop());
    }
}