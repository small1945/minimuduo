
#include "CEventLoop.h"
#include"boost/make_shared.hpp"
#include"boost/bind.hpp"

void onConnect(int sec)
{
    printf("onConnect,time is %d\n",sec);
}


int main()
{
    EventLoop loop;
    EventLoop *mainloop = &loop;
    boost::shared_ptr<Timer>timer=boost::make_shared<Timer>(boost::bind(onConnect,5),5);
    mainloop->runAfter(timer.get());
    mainloop->repeatRunAfter(3,bind(onConnect,3));
    mainloop->runAfter(1,bind(onConnect,1));
    mainloop->runAfter(4,bind(onConnect,4));

    loop.loop();

}