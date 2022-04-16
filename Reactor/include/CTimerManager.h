#ifndef CTIMERMANAGER_H_
#define CTIMERMANAGER_H_
#include"CTimerqueue.h"
#include"CTimer.h"
#include"boost/shared_ptr.hpp"
#include<vector>
class EventLoop;
class TimerManager
{
    public:
        TimerManager(EventLoop*);
        ~TimerManager();
        void init();
        void addTimer( Timer *timer);
        void addTimer(int,const Timer::Callback &);
        void addRepeatTimer(int,const Timer::Callback &);
        void onHandle();
        int timerFd()const{return m_queue->fd();}        

    private:
        boost::shared_ptr<Timerqueue>m_queue;
        int m_timerfd;
        EventLoop*m_loop;
        std::vector<Timer*>timers;

};




#endif