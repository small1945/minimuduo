#include "CEpoll.h"
#include <unistd.h>
#include <fcntl.h>
#include <iostream>
#include <string.h>
#include <Channel.h>
#define MAXSIZE 500

Epoll::Epoll(EventLoop *loop) : m_loop(loop), m_channelindex(1)
{
    m_epollfd = epoll_create(MAXSIZE);
    Epollevents.reserve(MAXSIZE);
}

Epoll::~Epoll()
{
    close(m_epollfd);
    for (auto ptchannel : ActiveChannels)
    {
        delete ptchannel;
    }
}

void Epoll::_add(Channel *channel)
{
    struct epoll_event m_event;
    int fd = channel->fd();
    m_event.data.fd = fd;
    m_event.data.ptr = channel;
    m_event.events = channel->getEvent();
    //   m_event.events|=EPOLLET;
    channel->setIndex(m_channelindex++);
    if (epoll_ctl(m_epollfd, EPOLL_CTL_ADD, fd, &m_event) < 0)
    {
        perror("add false");
    }
    _setNonBlocking(fd);
}

int Epoll::_setNonBlocking(int fd)
{
    int old_station = fcntl(fd, F_GETFL);
    int new_station = old_station | O_NONBLOCK;
    fcntl(fd, F_SETFL, new_station);
    return old_station;
}

void Epoll::poll(ChannelLists &activeLists)
{
    int nums = epoll_wait(m_epollfd, &*Epollevents.begin(), MAXSIZE, -1);
    for (int i = 0; i < nums; i++)
    {
        Channel *ptchannel = static_cast<Channel *>(Epollevents[i].data.ptr);
        ptchannel->setEvent(Epollevents[i].events);
        activeLists.push_back(ptchannel);
    }
}

void Epoll::removeChannel(Channel *channel)
{
    struct epoll_event m_event;
    if (epoll_ctl(m_epollfd, EPOLL_CTL_DEL, channel->fd(), &m_event) < 0)
    {
        perror("remove error");
    }
}

void Epoll::_mod(Channel *channel)
{
    struct epoll_event m_event;
    m_event.data.fd = channel->fd();
    m_event.data.ptr = channel;
    m_event.events = channel->getEvent();
    if (epoll_ctl(m_epollfd, EPOLL_CTL_MOD, channel->fd(), &m_event) < 0)
    {
        perror("modify error");
    }
}

void Epoll::updateChannel(Channel *channel)
{
    if (channel->index() < 0)
    {
        _add(channel);
    }
    else
    {
        _mod(channel);
    }
}