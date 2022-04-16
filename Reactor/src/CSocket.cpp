#include "CSocket.h"
#include <string.h>
#include <stdio.h>
Socket::Socket(int fd) : m_fd(fd)
{
}

Socket::~Socket()
{
    if (m_fd != 0)
    {
        close(m_fd);
    }
}

void Socket::Bind(Inetaddr *inetaddr)
{
    if (!_bindSockFd(inetaddr))
    {
        printf("bind error");
    }
}

void Socket::CreateFd()
{
    if (!_createSocketFd())
    {
        printf("create error");
    }
}

bool Socket::_createSocketFd()
{
    m_fd = socket(PF_INET, SOCK_STREAM, 0);
    if (m_fd < 0)
    {
        return false;
    }
    return true;
}

bool Socket::_bindSockFd(Inetaddr *inetaddr)
{
    auto address = inetaddr->Addr();
    int ret = bind(m_fd, (struct sockaddr *)&address, sizeof(address));
    if (ret < 0)
    {
        return false;
    }
    return true;
}

void Socket::Listen()
{
    if (!_listenSockFd())
    {
        perror("listen false");
    }
}

bool Socket::_listenSockFd()
{
    int ret = listen(m_fd, 5);
    if (ret < 0)
    {
        return false;
    }
    return true;
}

int Socket::Accept(sockaddr_in &client)
{
    socklen_t clientlen = sizeof(client);
    int newfd = accept(m_fd, (struct sockaddr *)&client, &clientlen);
    return newfd;
}

int Socket::GetSocketError()
{
    int optval;
    socklen_t optsize = sizeof(optval);
    if (getsockopt(m_fd, SOL_SOCKET, SO_ERROR, &optval, &optsize) < 0)
    {
        printf("getsockopt\n");
        return errno;
    }
    else
    {
        return optval;
    }
}
