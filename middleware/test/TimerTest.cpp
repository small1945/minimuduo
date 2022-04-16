#include"CTimerqueue.h"
#include"CTime.h"
#include"CTimerManager.h"
#include"CTimer.h"
#include"boost/bind.hpp"
using namespace std;

void func(int num)
{
    printf("timer%d:func\n",num);
}
int main()
{
   TimerManager timermanager;
   timermanager.init();
   timermanager.addRepeatTimer(3,boost::bind(func,1));
   timermanager.addTimer(1,boost::bind(func,2));
   timermanager.addTimer(5,boost::bind(func,5));
   timermanager.addRepeatTimer(4,boost::bind(func,4));


    auto timerfd=timermanager.timerFd();
    uint64_t exp=0;
   while(1)
   {
       int ret=read(timerfd,&exp,sizeof(uint64_t));
       if(ret==sizeof(uint64_t))
       {
            timermanager.onHandle();
       }
       

   }
   
}
