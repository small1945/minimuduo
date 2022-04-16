#ifndef CHANNEL_H_
#define CHANNEL_H_
#include<functional>
#include"CSocket.h"

using namespace std;
class EventLoop;
class Channel
{
    public:
       
        using EventCallBack=std::function<void()>;

        Channel(int,EventLoop*);
        Channel(EventLoop*loop);
        ~Channel();
        void setFd(int fd){m_fd=fd;}

        void setReadCallBack(const EventCallBack &cb){m_readcallback=cb;}
        void setWriteCallBack(const EventCallBack &cb){m_writecallback=cb;}
        //void setConnectCallBack(const EventCallBack &cb){m_connectcallback=cb;}
        void setCloseCallBack(const EventCallBack &cb){m_closecallback=cb;}
        void handleEvent();
        void setEvent(int event){m_event=event;}
        void enableReading(){m_event|=kReadEvent;update();}
        void enableWriting(){m_event|=kWriteEvent;update();}
        void disableWriting(){ m_event&= ~kWriteEvent;update();}
        int  getEvent()const{return m_event;}
        void update();
        void remove();
        void setAbleRead(){m_IsEnableRead=true;}
        int fd()const{return m_fd;}
        int index()const{return m_index;}
        void setIndex(int index){m_index=index;}
        bool IsWriting(){return m_event & kWriteEvent;}
        
        
    private:
        EventCallBack m_readcallback;
        EventCallBack m_writecallback;
      //  EventCallBack m_connectcallback;
        EventCallBack m_closecallback;
        int m_event;
        int m_revent; 
        int m_fd;
        int m_index;
        bool m_IsHandleing;
        bool m_IsEableWrite;
        bool m_IsEnableRead;
        EventLoop*m_loop;

        static const int kReadEvent;
        static const int kWriteEvent;
        static const int kNoneEvent;

};









#endif