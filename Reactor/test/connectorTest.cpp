#include <sys/epoll.h>
#include <stdio.h>
#include <sys/socket.h>
#include "CSocket.h"
#include <iostream>
#include <stdlib.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <string.h>
#include "CEpoll.h"
#include "Thread.h"
#include "CEventLoop.h"


#include "CInetaddr.h"
#include "CEventLoopthread.h"
#include <boost/bind.hpp>
#include"CConnector.h"
using namespace std;

void onConnect(Inetaddr*addr,int port)
{
    printf("handlewrite,onConnect \n");
}

int main()
{
    EventLoop loop;
    EventLoop *mainloop = &loop;
    Connector connector(mainloop,8000,"127.0.0.1");
    connector.init();
    connector.setConnectCallBack(onConnect);
    connector.start();
    
    loop.loop();

}