#include"CEventLoop.h"
#include<iostream>
 EventLoop::EventLoop():
  m_threadid(CurrentThread::tid()),
  m_poll(new Epoll(this)),
   m_quit(false),
   m_IsCallPendFunc(false),
   m_timerManager(this)
 {
     m_timerManager.init();
     assertInThread();
 }

EventLoop::~EventLoop()
{

}
void EventLoop::runInLoop(const Functor&func)
{
   if(IsInLoopThread())
   {
       //printf("runInLoop\n");
       func();
   } 
   else{
       queueInLoop(func);
   }
}


void EventLoop::update(Channel*channel)
{
    if(!m_poll){perror("m_poll is null");}
    else{
        m_poll->updateChannel(channel);
    }
}

void EventLoop::remove(Channel*channel)
{
    if(m_poll)
    {
        m_poll->removeChannel(channel);
    }
}

void EventLoop::loop()
{
    assertInThread();
    while(!m_quit)
    {  
        m_activelists.clear();
        m_poll->poll(m_activelists);
        for(auto iter=m_activelists.begin();iter!=m_activelists.end();iter++)
        {
            auto channel=(*iter);
            channel->handleEvent();
        }
        doPendingFun(); 
    }
    
}

 void EventLoop::doPendingFun()
 {
     vector<Functor>functors;
     {
         lock_guard<mutex>lock(m_mut);
         functors.swap(m_functor);
     }
     for(auto iter=functors.begin();iter!=functors.end();iter++)
     {
         auto func=*iter;
         func();
     }
     m_IsCallPendFunc=false;
     m_functor.clear();
 }
 
 void EventLoop::queueInLoop(const Functor&func)
 {
     {
        lock_guard<mutex>lock(m_mut);
        m_functor.push_back(func);
     }
 }

void EventLoop::repeatRunAfter(int sec,const Timer::Callback &func)
{
    m_timerManager.addRepeatTimer(sec,func);
}

void EventLoop::runAfter(int sec,const Timer::Callback &func)
{
    m_timerManager.addTimer(sec,func);
}

void EventLoop::runAfter(Timer *timer)
{
     m_timerManager.addTimer(timer);
}
