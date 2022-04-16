#include"CBuffer.h"
#include<string>
#include<sys/uio.h>



const int Buffer::kpreindex=8;
const int Buffer::kdefaultsize=1024;
void Buffer::ensureWrite(int bytes)
{
    if(pretendBytes()+writeableBytes()<bytes)
    {
       m_buffer.resize((size()+bytes)*2);      
    }

    //move menory
    else{  
        auto movelen=readableBytes();
        std::copy(begin()+m_readIndex,begin()+m_writeIndex,begin()+kpreindex);
        m_readIndex=kpreindex;
        m_writeIndex=m_readIndex+movelen;
    }
}

void Buffer::append(const char*buf,int bytes)
{
   ensureWrite(bytes);
   std::copy(buf,buf+bytes,writeIndex());
   m_writeIndex+=bytes; 
}




 std::string Buffer::retrieveStr(int bytes)
{
    if(bytes>readableBytes())
    {
        bytes=readableBytes();
    }
     std::string result(peek(),peek()+bytes);
     retrieve(bytes);
     return result;
}


void Buffer::retrieve(int bytes)
{
    m_readIndex+=bytes;
    if(m_readIndex==m_writeIndex)
    {
        m_readIndex=kpreindex;
        m_writeIndex=kpreindex;
    }
}

int Buffer::readFd(int fd)
{
    char stackbuf[65536];
    struct iovec vec[2];
    int writeBytes=writeableBytes();
    vec[0].iov_base=peek();
    vec[0].iov_len=writeBytes;
    vec[1].iov_base=stackbuf;
    vec[1].iov_len=sizeof(stackbuf);
    auto retsize=readv(fd,vec,2);
    if(retsize>writeBytes)
    {
        m_writeIndex=size();
        append(stackbuf,retsize-writeBytes);
    }
    else{
        m_writeIndex+=retsize;
    }
    return retsize;
}

void Buffer::swap(Buffer& rhs)
{
    m_buffer.swap(rhs.m_buffer);
    std::swap(m_readIndex,rhs.m_readIndex);
    std::swap(m_writeIndex,rhs.m_writeIndex);
}
