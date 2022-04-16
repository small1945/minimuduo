#include "CInetaddr.h"
#include <stdio.h>
#include <string.h>

Inetaddr::Inetaddr(sockaddr_in *addr) : m_address(*addr)
{
    m_port = m_address.sin_port;
    _setIp();
}

void Inetaddr::_init()
{
    bzero(&m_address, sizeof(m_address));
    m_address.sin_family = AF_INET;

    if (m_ip.empty())
    {
        m_address.sin_addr.s_addr = INADDR_ANY;
        _setIp();
    }
    else
    {
        inet_pton(AF_INET, m_ip.c_str(), &m_address.sin_addr);
        //_setIp();
        // printf("%s\n",m_ip.c_str());
    }
    m_address.sin_port = htons(m_port);
}

void Inetaddr::_setIp()

{
    auto srcaddr = m_address.sin_addr.s_addr;
    char ipdst[32];
    inet_ntop(AF_INET, (void *)&srcaddr, ipdst, sizeof(ipdst));
    m_ip = ipdst;
}
