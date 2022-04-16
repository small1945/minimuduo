#ifndef CINETADDR_H_
#define CINETADDR_H_
#include <sys/socket.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <sys/unistd.h>
#include <string>

class Inetaddr
{
public:
    Inetaddr(int port, const char *ip = "") : m_port(port),m_ip(ip)
    {
        _init();
    }
    Inetaddr(sockaddr_in *addr);
    ~Inetaddr(){}
    int getPort() const { return m_port; }
    const std::string &getIp() const { return m_ip; }
    const struct sockaddr_in &Addr() const { return m_address; }

private:
    void _init();
    void _setIp();
    struct sockaddr_in m_address;
    int m_port;
    std::string m_ip;
};

#endif