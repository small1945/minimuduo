#ifndef CSOCKET_H_
#define CSOCKET_H_
#include<sys/socket.h>
#include<arpa/inet.h>
#include<stdlib.h>
#include<sys/unistd.h>
#include"CInetaddr.h"
class Socket
{
    public:
        Socket(int fd);
        Socket(){};
        ~Socket();
        void init(Inetaddr*);
        int Accept(sockaddr_in&);
        int fd()const {return m_fd;}
        void CreateFd();
        void Listen();
        void Bind(Inetaddr*);
        int GetSocketError();

    private:

        bool _listenSockFd();
        bool _createSocketFd();
        bool _bindSockFd(Inetaddr*);
        int m_fd;
      
};









#endif