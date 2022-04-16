cmake_minimum_required(VERSION 3.0)

project(TEST)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -std=c++11 -Wall -pthread")
include_directories(${CMAKE_SOURCE_DIR}/include)

#add_executable(mymake test/test.cpp src/CAcceptor.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/Thread.cc src/CTcpServer.cpp src/CTcpConnection.cpp src/CInetaddr.cpp src/CEventLoopthread.cpp src/CEventLoopthreadpool.cpp src/CBuffer.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)
#add_executable(connectortest test/connectorTest.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/CInetaddr.cpp src/CConnector.cpp src/Thread.cc src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)
add_executable(tcpclienttest test/tcpclientTest.cpp src/CConnector.cpp src/CTcpClient.cpp src/CAcceptor.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/Thread.cc src/CTcpServer.cpp src/CTcpConnection.cpp src/CInetaddr.cpp src/CEventLoopthread.cpp src/CEventLoopthreadpool.cpp src/CBuffer.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)
#add_executable(timertest test/timerTest.cpp  src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp src/Thread.cc)
#add_executable(echotest test/echoTest.cpp src/CConnector.cpp src/CTcpClient.cpp src/CAcceptor.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/Thread.cc src/CTcpServer.cpp src/CTcpConnection.cpp src/CInetaddr.cpp src/CEventLoopthread.cpp src/CEventLoopthreadpool.cpp src/CBuffer.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)
#add_executable(fileserver test/fileserver.cpp src/CConnector.cpp src/CTcpClient.cpp src/CAcceptor.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/Thread.cc src/CTcpServer.cpp src/CTcpConnection.cpp src/CInetaddr.cpp src/CEventLoopthread.cpp src/CEventLoopthreadpool.cpp src/CBuffer.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)
add_executable(pipelineFile test/pipelineFile.cpp src/CConnector.cpp src/CTcpClient.cpp src/CAcceptor.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/Thread.cc src/CTcpServer.cpp src/CTcpConnection.cpp src/CInetaddr.cpp src/CEventLoopthread.cpp src/CEventLoopthreadpool.cpp src/CBuffer.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)
add_executable(chatclient test/ChatClient.cpp src/CConnector.cpp src/CTcpClient.cpp src/CAcceptor.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/Thread.cc src/CTcpServer.cpp src/CTcpConnection.cpp src/CInetaddr.cpp src/CEventLoopthread.cpp src/CEventLoopthreadpool.cpp src/CBuffer.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)
add_executable(chatserver test/ChatServer.cpp src/CConnector.cpp src/CTcpClient.cpp src/CAcceptor.cpp src/CEpoll.cpp src/CEventLoop.cpp src/Channel.cpp src/CSocket.cpp src/Thread.cc src/CTcpServer.cpp src/CTcpConnection.cpp src/CInetaddr.cpp src/CEventLoopthread.cpp src/CEventLoopthreadpool.cpp src/CBuffer.cpp src/CTimer.cpp src/CTime.cpp src/CTimerqueue.cpp src/CTimerManager.cpp)

