#include"CTimerManager.h"
#include"boost/make_shared.hpp"
TimerManager::TimerManager()
        :m_queue(boost::make_shared<Timerqueue>())
{

}

TimerManager::~TimerManager()
{

}

void TimerManager::addTimer(int sec,const Timer::Callback &func)
{
    Timer *timer=new Timer(func,sec);
    m_queue->add(timer);
    
} 

void TimerManager::addRepeatTimer(int sec,const Timer::Callback &func)
{
    Timer *timer=new Timer(func,sec);
    timer->setRepeat();
    m_queue->add(timer);
}


void TimerManager::onHandle()
{
    m_queue->onHandle();
}

void TimerManager::init()
{
    m_queue->init();
}