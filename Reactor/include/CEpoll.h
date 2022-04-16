#ifndef CEPOLL_H_
#define CEPOLL_H_
#include<sys/epoll.h>
#include<vector>
#include<map>
#include"CSocket.h"
#include"Channel.h"
#include"CEventLoop.h"
using namespace std;

class Channel;
class EventLoop;
class Epoll
{
    public:
        using ChannelLists=vector<Channel*>;
    //    using ChannelMap=map<int ,Channel*>;
        using EpollEvent=vector<struct epoll_event>;

        Epoll(EventLoop *loop);
        ~Epoll();
      
        void removeChannel(Channel*);
        void mod(Channel*);
        void poll(ChannelLists &activeLists);
        void updateChannel(Channel*);


    private:
        int _setNonBlocking(int);
        int m_epollfd;
        void _mod(Channel*);
        void _add(Channel*);
        ChannelLists ActiveChannels;
      //  ChannelMap ChannelSet;
        EventLoop *m_loop;
        EpollEvent Epollevents;
        int m_channelindex;


};










#endif