# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gc/Desktop/Reactor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gc/Desktop/Reactor/build

# Include any dependencies generated for this target.
include CMakeFiles/echotest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/echotest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/echotest.dir/flags.make

CMakeFiles/echotest.dir/test/echoTest.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/test/echoTest.cpp.o: ../test/echoTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/echotest.dir/test/echoTest.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/test/echoTest.cpp.o -c /home/gc/Desktop/Reactor/test/echoTest.cpp

CMakeFiles/echotest.dir/test/echoTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/test/echoTest.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/test/echoTest.cpp > CMakeFiles/echotest.dir/test/echoTest.cpp.i

CMakeFiles/echotest.dir/test/echoTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/test/echoTest.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/test/echoTest.cpp -o CMakeFiles/echotest.dir/test/echoTest.cpp.s

CMakeFiles/echotest.dir/test/echoTest.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/test/echoTest.cpp.o.requires

CMakeFiles/echotest.dir/test/echoTest.cpp.o.provides: CMakeFiles/echotest.dir/test/echoTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/test/echoTest.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/test/echoTest.cpp.o.provides

CMakeFiles/echotest.dir/test/echoTest.cpp.o.provides.build: CMakeFiles/echotest.dir/test/echoTest.cpp.o


CMakeFiles/echotest.dir/src/CConnector.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CConnector.cpp.o: ../src/CConnector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/echotest.dir/src/CConnector.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CConnector.cpp.o -c /home/gc/Desktop/Reactor/src/CConnector.cpp

CMakeFiles/echotest.dir/src/CConnector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CConnector.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CConnector.cpp > CMakeFiles/echotest.dir/src/CConnector.cpp.i

CMakeFiles/echotest.dir/src/CConnector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CConnector.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CConnector.cpp -o CMakeFiles/echotest.dir/src/CConnector.cpp.s

CMakeFiles/echotest.dir/src/CConnector.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CConnector.cpp.o.requires

CMakeFiles/echotest.dir/src/CConnector.cpp.o.provides: CMakeFiles/echotest.dir/src/CConnector.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CConnector.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CConnector.cpp.o.provides

CMakeFiles/echotest.dir/src/CConnector.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CConnector.cpp.o


CMakeFiles/echotest.dir/src/CTcpClient.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CTcpClient.cpp.o: ../src/CTcpClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/echotest.dir/src/CTcpClient.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CTcpClient.cpp.o -c /home/gc/Desktop/Reactor/src/CTcpClient.cpp

CMakeFiles/echotest.dir/src/CTcpClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CTcpClient.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CTcpClient.cpp > CMakeFiles/echotest.dir/src/CTcpClient.cpp.i

CMakeFiles/echotest.dir/src/CTcpClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CTcpClient.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CTcpClient.cpp -o CMakeFiles/echotest.dir/src/CTcpClient.cpp.s

CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.requires

CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.provides: CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.provides

CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CTcpClient.cpp.o


CMakeFiles/echotest.dir/src/CAcceptor.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CAcceptor.cpp.o: ../src/CAcceptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/echotest.dir/src/CAcceptor.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CAcceptor.cpp.o -c /home/gc/Desktop/Reactor/src/CAcceptor.cpp

CMakeFiles/echotest.dir/src/CAcceptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CAcceptor.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CAcceptor.cpp > CMakeFiles/echotest.dir/src/CAcceptor.cpp.i

CMakeFiles/echotest.dir/src/CAcceptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CAcceptor.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CAcceptor.cpp -o CMakeFiles/echotest.dir/src/CAcceptor.cpp.s

CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.requires

CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.provides: CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.provides

CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CAcceptor.cpp.o


CMakeFiles/echotest.dir/src/CEpoll.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CEpoll.cpp.o: ../src/CEpoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/echotest.dir/src/CEpoll.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CEpoll.cpp.o -c /home/gc/Desktop/Reactor/src/CEpoll.cpp

CMakeFiles/echotest.dir/src/CEpoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CEpoll.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CEpoll.cpp > CMakeFiles/echotest.dir/src/CEpoll.cpp.i

CMakeFiles/echotest.dir/src/CEpoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CEpoll.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CEpoll.cpp -o CMakeFiles/echotest.dir/src/CEpoll.cpp.s

CMakeFiles/echotest.dir/src/CEpoll.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CEpoll.cpp.o.requires

CMakeFiles/echotest.dir/src/CEpoll.cpp.o.provides: CMakeFiles/echotest.dir/src/CEpoll.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CEpoll.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CEpoll.cpp.o.provides

CMakeFiles/echotest.dir/src/CEpoll.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CEpoll.cpp.o


CMakeFiles/echotest.dir/src/CEventLoop.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CEventLoop.cpp.o: ../src/CEventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/echotest.dir/src/CEventLoop.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CEventLoop.cpp.o -c /home/gc/Desktop/Reactor/src/CEventLoop.cpp

CMakeFiles/echotest.dir/src/CEventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CEventLoop.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CEventLoop.cpp > CMakeFiles/echotest.dir/src/CEventLoop.cpp.i

CMakeFiles/echotest.dir/src/CEventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CEventLoop.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CEventLoop.cpp -o CMakeFiles/echotest.dir/src/CEventLoop.cpp.s

CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.requires

CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.provides: CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.provides

CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CEventLoop.cpp.o


CMakeFiles/echotest.dir/src/Channel.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/Channel.cpp.o: ../src/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/echotest.dir/src/Channel.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/Channel.cpp.o -c /home/gc/Desktop/Reactor/src/Channel.cpp

CMakeFiles/echotest.dir/src/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/Channel.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/Channel.cpp > CMakeFiles/echotest.dir/src/Channel.cpp.i

CMakeFiles/echotest.dir/src/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/Channel.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/Channel.cpp -o CMakeFiles/echotest.dir/src/Channel.cpp.s

CMakeFiles/echotest.dir/src/Channel.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/Channel.cpp.o.requires

CMakeFiles/echotest.dir/src/Channel.cpp.o.provides: CMakeFiles/echotest.dir/src/Channel.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/Channel.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/Channel.cpp.o.provides

CMakeFiles/echotest.dir/src/Channel.cpp.o.provides.build: CMakeFiles/echotest.dir/src/Channel.cpp.o


CMakeFiles/echotest.dir/src/CSocket.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CSocket.cpp.o: ../src/CSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/echotest.dir/src/CSocket.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CSocket.cpp.o -c /home/gc/Desktop/Reactor/src/CSocket.cpp

CMakeFiles/echotest.dir/src/CSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CSocket.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CSocket.cpp > CMakeFiles/echotest.dir/src/CSocket.cpp.i

CMakeFiles/echotest.dir/src/CSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CSocket.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CSocket.cpp -o CMakeFiles/echotest.dir/src/CSocket.cpp.s

CMakeFiles/echotest.dir/src/CSocket.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CSocket.cpp.o.requires

CMakeFiles/echotest.dir/src/CSocket.cpp.o.provides: CMakeFiles/echotest.dir/src/CSocket.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CSocket.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CSocket.cpp.o.provides

CMakeFiles/echotest.dir/src/CSocket.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CSocket.cpp.o


CMakeFiles/echotest.dir/src/Thread.cc.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/Thread.cc.o: ../src/Thread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/echotest.dir/src/Thread.cc.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/Thread.cc.o -c /home/gc/Desktop/Reactor/src/Thread.cc

CMakeFiles/echotest.dir/src/Thread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/Thread.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/Thread.cc > CMakeFiles/echotest.dir/src/Thread.cc.i

CMakeFiles/echotest.dir/src/Thread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/Thread.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/Thread.cc -o CMakeFiles/echotest.dir/src/Thread.cc.s

CMakeFiles/echotest.dir/src/Thread.cc.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/Thread.cc.o.requires

CMakeFiles/echotest.dir/src/Thread.cc.o.provides: CMakeFiles/echotest.dir/src/Thread.cc.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/Thread.cc.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/Thread.cc.o.provides

CMakeFiles/echotest.dir/src/Thread.cc.o.provides.build: CMakeFiles/echotest.dir/src/Thread.cc.o


CMakeFiles/echotest.dir/src/CTcpServer.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CTcpServer.cpp.o: ../src/CTcpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/echotest.dir/src/CTcpServer.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CTcpServer.cpp.o -c /home/gc/Desktop/Reactor/src/CTcpServer.cpp

CMakeFiles/echotest.dir/src/CTcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CTcpServer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CTcpServer.cpp > CMakeFiles/echotest.dir/src/CTcpServer.cpp.i

CMakeFiles/echotest.dir/src/CTcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CTcpServer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CTcpServer.cpp -o CMakeFiles/echotest.dir/src/CTcpServer.cpp.s

CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.requires

CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.provides: CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.provides

CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CTcpServer.cpp.o


CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o: ../src/CTcpConnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o -c /home/gc/Desktop/Reactor/src/CTcpConnection.cpp

CMakeFiles/echotest.dir/src/CTcpConnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CTcpConnection.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CTcpConnection.cpp > CMakeFiles/echotest.dir/src/CTcpConnection.cpp.i

CMakeFiles/echotest.dir/src/CTcpConnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CTcpConnection.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CTcpConnection.cpp -o CMakeFiles/echotest.dir/src/CTcpConnection.cpp.s

CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.requires

CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.provides: CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.provides

CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o


CMakeFiles/echotest.dir/src/CInetaddr.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CInetaddr.cpp.o: ../src/CInetaddr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/echotest.dir/src/CInetaddr.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CInetaddr.cpp.o -c /home/gc/Desktop/Reactor/src/CInetaddr.cpp

CMakeFiles/echotest.dir/src/CInetaddr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CInetaddr.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CInetaddr.cpp > CMakeFiles/echotest.dir/src/CInetaddr.cpp.i

CMakeFiles/echotest.dir/src/CInetaddr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CInetaddr.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CInetaddr.cpp -o CMakeFiles/echotest.dir/src/CInetaddr.cpp.s

CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.requires

CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.provides: CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.provides

CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CInetaddr.cpp.o


CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o: ../src/CEventLoopthread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o -c /home/gc/Desktop/Reactor/src/CEventLoopthread.cpp

CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CEventLoopthread.cpp > CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.i

CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CEventLoopthread.cpp -o CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.s

CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.requires

CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.provides: CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.provides

CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o


CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o: ../src/CEventLoopthreadpool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o -c /home/gc/Desktop/Reactor/src/CEventLoopthreadpool.cpp

CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CEventLoopthreadpool.cpp > CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.i

CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CEventLoopthreadpool.cpp -o CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.s

CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.requires

CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.provides: CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.provides

CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o


CMakeFiles/echotest.dir/src/CBuffer.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CBuffer.cpp.o: ../src/CBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/echotest.dir/src/CBuffer.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CBuffer.cpp.o -c /home/gc/Desktop/Reactor/src/CBuffer.cpp

CMakeFiles/echotest.dir/src/CBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CBuffer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CBuffer.cpp > CMakeFiles/echotest.dir/src/CBuffer.cpp.i

CMakeFiles/echotest.dir/src/CBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CBuffer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CBuffer.cpp -o CMakeFiles/echotest.dir/src/CBuffer.cpp.s

CMakeFiles/echotest.dir/src/CBuffer.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CBuffer.cpp.o.requires

CMakeFiles/echotest.dir/src/CBuffer.cpp.o.provides: CMakeFiles/echotest.dir/src/CBuffer.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CBuffer.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CBuffer.cpp.o.provides

CMakeFiles/echotest.dir/src/CBuffer.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CBuffer.cpp.o


CMakeFiles/echotest.dir/src/CTimer.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CTimer.cpp.o: ../src/CTimer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/echotest.dir/src/CTimer.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CTimer.cpp.o -c /home/gc/Desktop/Reactor/src/CTimer.cpp

CMakeFiles/echotest.dir/src/CTimer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CTimer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CTimer.cpp > CMakeFiles/echotest.dir/src/CTimer.cpp.i

CMakeFiles/echotest.dir/src/CTimer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CTimer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CTimer.cpp -o CMakeFiles/echotest.dir/src/CTimer.cpp.s

CMakeFiles/echotest.dir/src/CTimer.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CTimer.cpp.o.requires

CMakeFiles/echotest.dir/src/CTimer.cpp.o.provides: CMakeFiles/echotest.dir/src/CTimer.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CTimer.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CTimer.cpp.o.provides

CMakeFiles/echotest.dir/src/CTimer.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CTimer.cpp.o


CMakeFiles/echotest.dir/src/CTime.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CTime.cpp.o: ../src/CTime.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/echotest.dir/src/CTime.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CTime.cpp.o -c /home/gc/Desktop/Reactor/src/CTime.cpp

CMakeFiles/echotest.dir/src/CTime.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CTime.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CTime.cpp > CMakeFiles/echotest.dir/src/CTime.cpp.i

CMakeFiles/echotest.dir/src/CTime.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CTime.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CTime.cpp -o CMakeFiles/echotest.dir/src/CTime.cpp.s

CMakeFiles/echotest.dir/src/CTime.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CTime.cpp.o.requires

CMakeFiles/echotest.dir/src/CTime.cpp.o.provides: CMakeFiles/echotest.dir/src/CTime.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CTime.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CTime.cpp.o.provides

CMakeFiles/echotest.dir/src/CTime.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CTime.cpp.o


CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o: ../src/CTimerqueue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o -c /home/gc/Desktop/Reactor/src/CTimerqueue.cpp

CMakeFiles/echotest.dir/src/CTimerqueue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CTimerqueue.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CTimerqueue.cpp > CMakeFiles/echotest.dir/src/CTimerqueue.cpp.i

CMakeFiles/echotest.dir/src/CTimerqueue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CTimerqueue.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CTimerqueue.cpp -o CMakeFiles/echotest.dir/src/CTimerqueue.cpp.s

CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.requires

CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.provides: CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.provides

CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o


CMakeFiles/echotest.dir/src/CTimerManager.cpp.o: CMakeFiles/echotest.dir/flags.make
CMakeFiles/echotest.dir/src/CTimerManager.cpp.o: ../src/CTimerManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/echotest.dir/src/CTimerManager.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/echotest.dir/src/CTimerManager.cpp.o -c /home/gc/Desktop/Reactor/src/CTimerManager.cpp

CMakeFiles/echotest.dir/src/CTimerManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echotest.dir/src/CTimerManager.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/src/CTimerManager.cpp > CMakeFiles/echotest.dir/src/CTimerManager.cpp.i

CMakeFiles/echotest.dir/src/CTimerManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echotest.dir/src/CTimerManager.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/src/CTimerManager.cpp -o CMakeFiles/echotest.dir/src/CTimerManager.cpp.s

CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.requires:

.PHONY : CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.requires

CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.provides: CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/echotest.dir/build.make CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.provides.build
.PHONY : CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.provides

CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.provides.build: CMakeFiles/echotest.dir/src/CTimerManager.cpp.o


# Object files for target echotest
echotest_OBJECTS = \
"CMakeFiles/echotest.dir/test/echoTest.cpp.o" \
"CMakeFiles/echotest.dir/src/CConnector.cpp.o" \
"CMakeFiles/echotest.dir/src/CTcpClient.cpp.o" \
"CMakeFiles/echotest.dir/src/CAcceptor.cpp.o" \
"CMakeFiles/echotest.dir/src/CEpoll.cpp.o" \
"CMakeFiles/echotest.dir/src/CEventLoop.cpp.o" \
"CMakeFiles/echotest.dir/src/Channel.cpp.o" \
"CMakeFiles/echotest.dir/src/CSocket.cpp.o" \
"CMakeFiles/echotest.dir/src/Thread.cc.o" \
"CMakeFiles/echotest.dir/src/CTcpServer.cpp.o" \
"CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o" \
"CMakeFiles/echotest.dir/src/CInetaddr.cpp.o" \
"CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o" \
"CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o" \
"CMakeFiles/echotest.dir/src/CBuffer.cpp.o" \
"CMakeFiles/echotest.dir/src/CTimer.cpp.o" \
"CMakeFiles/echotest.dir/src/CTime.cpp.o" \
"CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o" \
"CMakeFiles/echotest.dir/src/CTimerManager.cpp.o"

# External object files for target echotest
echotest_EXTERNAL_OBJECTS =

echotest: CMakeFiles/echotest.dir/test/echoTest.cpp.o
echotest: CMakeFiles/echotest.dir/src/CConnector.cpp.o
echotest: CMakeFiles/echotest.dir/src/CTcpClient.cpp.o
echotest: CMakeFiles/echotest.dir/src/CAcceptor.cpp.o
echotest: CMakeFiles/echotest.dir/src/CEpoll.cpp.o
echotest: CMakeFiles/echotest.dir/src/CEventLoop.cpp.o
echotest: CMakeFiles/echotest.dir/src/Channel.cpp.o
echotest: CMakeFiles/echotest.dir/src/CSocket.cpp.o
echotest: CMakeFiles/echotest.dir/src/Thread.cc.o
echotest: CMakeFiles/echotest.dir/src/CTcpServer.cpp.o
echotest: CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o
echotest: CMakeFiles/echotest.dir/src/CInetaddr.cpp.o
echotest: CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o
echotest: CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o
echotest: CMakeFiles/echotest.dir/src/CBuffer.cpp.o
echotest: CMakeFiles/echotest.dir/src/CTimer.cpp.o
echotest: CMakeFiles/echotest.dir/src/CTime.cpp.o
echotest: CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o
echotest: CMakeFiles/echotest.dir/src/CTimerManager.cpp.o
echotest: CMakeFiles/echotest.dir/build.make
echotest: CMakeFiles/echotest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gc/Desktop/Reactor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX executable echotest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/echotest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/echotest.dir/build: echotest

.PHONY : CMakeFiles/echotest.dir/build

CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/test/echoTest.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CConnector.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CTcpClient.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CAcceptor.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CEpoll.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CEventLoop.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/Channel.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CSocket.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/Thread.cc.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CTcpServer.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CTcpConnection.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CInetaddr.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CEventLoopthread.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CEventLoopthreadpool.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CBuffer.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CTimer.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CTime.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CTimerqueue.cpp.o.requires
CMakeFiles/echotest.dir/requires: CMakeFiles/echotest.dir/src/CTimerManager.cpp.o.requires

.PHONY : CMakeFiles/echotest.dir/requires

CMakeFiles/echotest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/echotest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/echotest.dir/clean

CMakeFiles/echotest.dir/depend:
	cd /home/gc/Desktop/Reactor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gc/Desktop/Reactor /home/gc/Desktop/Reactor /home/gc/Desktop/Reactor/build /home/gc/Desktop/Reactor/build /home/gc/Desktop/Reactor/build/CMakeFiles/echotest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/echotest.dir/depend

