#ifndef CEVENTLOOP_H_
#define CEVENTLOOP_H_
#include"CEpoll.h"
#include"Channel.h"
#include"CSocket.h"
#include<memory>
#include"CurrentThread.h"
#include<vector>
#include <boost/scoped_ptr.hpp>
#include<mutex>
#include<boost/function.hpp>
#include"CTimerManager.h"

//__thread EventLoop* t_loopInThisThread=0;
class Channel;
class Epoll;
class EventLoop
{
    public:
        using Functor=boost::function<void()>; 
        EventLoop();
        ~EventLoop();
        void loop();
        void update(Channel*channel);
        void remove(Channel*channel);
        bool IsInLoopThread()const{return m_threadid==CurrentThread::tid();}
        void quit(){m_quit=true;}
        void runAfter(int,const Timer::Callback &func);
        void repeatRunAfter(int,const Timer::Callback &func);
        void runAfter(Timer *timer);
        void repeatRunAfter(Timer *timer);
        void assertInThread(){ 
            if(!IsInLoopThread())
           {
            perror("error,one thread one loop");
           }
        }
        void doPendingFun();
        void runInLoop(const Functor&);
        void queueInLoop(const Functor&);
        const pid_t&getThreadId()const{return m_threadid;}

    private:
         const pid_t m_threadid;
         //boost::scoped_ptr<Epoll>m_poll;
         Epoll*m_poll;
         bool m_quit;
         std::vector<Channel*> m_activelists;
         vector<Functor>m_functor;
         mutex m_mut;
         bool m_IsCallPendFunc;
         TimerManager m_timerManager;
         



};


#endif