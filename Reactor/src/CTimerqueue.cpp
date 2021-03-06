#include "CTimerqueue.h"
#include <sys/timerfd.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include "CEventLoop.h"

void Timerqueue::init()
{
    m_timerfd = timerfd_create(CLOCK_REALTIME, 0);
    if (m_timerfd == -1)
    {
        perror("create error");
    }
    m_channel.setFd(m_timerfd);
    m_channel.setReadCallBack(bind(&Timerqueue::onHandle,this));
    m_channel.enableReading();
    // int old_station = fcntl(m_timerfd, F_GETFL);
    // int new_station = old_station | O_NONBLOCK;
    // fcntl(m_timerfd, F_SETFL, new_station);
}

void Timerqueue::add( Timer *timer)
{
    m_timerQueue.insert(timer);
    if (_updateIntervalTime(timer))
    {
        _setTime(m_minInterval);
    }
}

bool Timerqueue::_updateIntervalTime( Timer *timer)
{
    auto nowtime = CTime::Now();
    auto intersecond = nowtime.getSecond() - timer->getBegSecond();
    auto factsecond = timer->getSeq() - intersecond;
    if (factsecond < 0)
    {
        return false;
    }
    if (factsecond < m_minInterval || m_minInterval == 0)
    {
        m_minInterval = factsecond;
        return true;
    }
    return false;
}

void Timerqueue::_setTime(int sec)
{
    struct itimerspec new_value;
    struct timespec now;
    bzero(&new_value, sizeof(new_value));
    bzero(&now, sizeof(now));
    new_value.it_value.tv_sec = now.tv_sec + sec;
    new_value.it_value.tv_nsec = now.tv_nsec;
    new_value.it_interval.tv_sec = now.tv_sec + sec;
    new_value.it_interval.tv_nsec = 0;
    if (timerfd_settime(m_timerfd, TFD_TIMER_ABSTIME, &new_value, NULL) == -1)
    {
        perror("timerfd_settime false");
    }
}

void Timerqueue::onHandle()
{
    for (auto iter = m_timerQueue.begin(); iter != m_timerQueue.end();)
    {
        auto timer = *iter;
        if (timer->judgeExpire())
        {
            timer->callbackFunc();
            if (!timer->IsReapt())
            {
                iter = m_timerQueue.erase(iter);
            }
            else
            {
                timer->addBegSecond();
                iter++;
            }
        }
        else
        {
            iter++;
        }
    }

    m_minInterval = 0;
    if (m_timerQueue.empty())
    {
        return;
    }
    for (auto iter = m_timerQueue.begin(); iter != m_timerQueue.end(); iter++)
    {
        auto timer = *iter;
        _updateIntervalTime(timer);
    }
    if (m_minInterval > 0)
    {
        _setTime(m_minInterval);
    }
}

// Timerqueue::Timerqueue() : m_timerfd(-1),s
//                            m_minInterval(0),
//

// {
// }

Timerqueue::Timerqueue(EventLoop *loop) : m_timerfd(-1),
                                          m_minInterval(0),
                                          m_loop(loop),
                                          m_channel(loop)
{
}

Timerqueue::~Timerqueue()
{
    close(m_timerfd);
}
