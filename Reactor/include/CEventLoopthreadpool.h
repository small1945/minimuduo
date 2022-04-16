#ifndef CEVENTLOOPTHREADPOOL_H_
#define CEVENTLOOPTHREADPOOL_H_
#include"CEventLoopthread.h"
#include<vector>
#include<boost/ptr_container/ptr_vector.hpp>
class EventLoopThreadpool
{
    public:
        EventLoopThreadpool(EventLoop*);
        ~EventLoopThreadpool();
        EventLoop* getNextLoop();
        void start(const EventLoopThread::InitFunc&);
        void setThreadnum(int);
    private:
        boost::ptr_vector<EventLoopThread>m_threadvec;
        vector<EventLoop*>m_loopvec;
        int m_threadNum;
        EventLoop *m_baseloop;
        int m_index;
      
};










#endif