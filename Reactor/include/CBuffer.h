#ifndef CBUFFER_H_
#define CBUFFER_H_
#include<vector>
#include<string>
#include<algorithm>

class Buffer
{

    public:
        static const int kpreindex;
        static const int kdefaultsize;

        Buffer():m_buffer(kdefaultsize),m_readIndex(kpreindex),m_writeIndex(kpreindex)
        {}

        ~Buffer(){}
        int size()const{return m_buffer.size();}
        void append(const char*,int);
        int readableBytes()const{return m_writeIndex-m_readIndex;}
        int writeableBytes()const{return size()-m_writeIndex;}
        int pretendBytes()const{return m_readIndex-kpreindex;}
        int readFd(int);

        void swap(Buffer&);
        const char *peek()const{return begin()+m_readIndex;}
        char*peek(){return begin()+m_readIndex;}
        const char*begin()const{return &*m_buffer.begin();}
        char *begin(){return &*m_buffer.begin();}
        const char*writeIndex()const{return begin()+m_writeIndex;}
        char*writeIndex(){return begin()+m_writeIndex;}
        void ensureWrite(int);
        void makeSpace(int);
       
        std::string retrieveStr(int);
        void retrieve(int);

    private:
        std::vector<char>m_buffer;
        int m_readIndex;
        int m_writeIndex;


};









#endif