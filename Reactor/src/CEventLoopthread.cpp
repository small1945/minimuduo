#include"CEventLoopthread.h"
#include<thread>
#include<chrono>
#include<CEventLoop.h>
EventLoopThread::EventLoopThread(const InitFunc&func)
  :m_loop(NULL),
   m_thread(bind(&EventLoopThread::threadFunc,this))
{
    m_callback=func;
}

EventLoopThread::~EventLoopThread()
{
  //  m_loop->quit();
    m_thread.join();
}

 void EventLoopThread::threadFunc()
 {
     EventLoop loop;
     if(m_callback)
     {
         m_callback(&loop);
     }   
     m_loop=&loop;
     m_loop->loop();
 }

EventLoop* EventLoopThread::startLoop()
{
    m_thread.start();
    
    while(1)
    {  
        if(m_loop){break;}    
        this_thread::sleep_for(chrono::microseconds(10));
    }
    return m_loop;
}