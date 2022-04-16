#ifndef CTIMERMANAGER_H_
#define CTIMERMANAGER_H_
#include"CTimerqueue.h"
#include"CTimer.h"
#include"boost/shared_ptr.hpp"
class TimerManager
{
    public:
        TimerManager();
        ~TimerManager();
        void init();
        void addTimer(int,const Timer::Callback &);
        void addRepeatTimer(int,const Timer::Callback &);
        void onHandle();
        int timerFd()const{return m_queue->fd();}
        

    private:
        boost::shared_ptr<Timerqueue>m_queue;
        int m_timerfd;

};




#endif