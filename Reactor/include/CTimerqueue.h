#ifndef CTIMEQUEUE_H_
#define CTIMEQUEUE_H_
#include "CTime.h"
#include "CTimer.h"
#include <set>
#include "Channel.h"

class EventLoop;
class Timerqueue
{
public:
    // Timerqueue();
    Timerqueue(EventLoop *);
    ~Timerqueue();
    void init();
    void add(Timer *);
    void del(Timer *);
    void onHandle();
    int fd() const { return m_timerfd; }

private:
    void _setTime(int);
    bool _updateIntervalTime(Timer *timer);
    std::set<Timer *> m_timerQueue;
    int m_timerfd;
    int m_minInterval;
    EventLoop *m_loop;
    Channel m_channel;
};

#endif