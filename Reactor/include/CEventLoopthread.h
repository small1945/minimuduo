#ifndef CEVENTLOOPTHREAD_H_
#define CEVENTLOOPTHREAD_H_
#include<Thread.h>
#include<mutex>
#include<functional>
class EventLoop;
class EventLoopThread
{
   public:
        using InitFunc=function<void(EventLoop*)>;
        EventLoopThread(const InitFunc&func);
        ~EventLoopThread();
        void threadFunc();
        EventLoop* startLoop();


   private: 
        EventLoop *m_loop;
        mutex m_mutex;
        Thread m_thread;
        InitFunc m_callback;


};










#endif