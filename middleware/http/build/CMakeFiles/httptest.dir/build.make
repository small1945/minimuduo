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
CMAKE_SOURCE_DIR = /home/gc/Desktop/Reactor/http

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gc/Desktop/Reactor/http/build

# Include any dependencies generated for this target.
include CMakeFiles/httptest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/httptest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/httptest.dir/flags.make

CMakeFiles/httptest.dir/test/test.cpp.o: CMakeFiles/httptest.dir/flags.make
CMakeFiles/httptest.dir/test/test.cpp.o: ../test/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/http/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/httptest.dir/test/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.dir/test/test.cpp.o -c /home/gc/Desktop/Reactor/http/test/test.cpp

CMakeFiles/httptest.dir/test/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.dir/test/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/http/test/test.cpp > CMakeFiles/httptest.dir/test/test.cpp.i

CMakeFiles/httptest.dir/test/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.dir/test/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/http/test/test.cpp -o CMakeFiles/httptest.dir/test/test.cpp.s

CMakeFiles/httptest.dir/test/test.cpp.o.requires:

.PHONY : CMakeFiles/httptest.dir/test/test.cpp.o.requires

CMakeFiles/httptest.dir/test/test.cpp.o.provides: CMakeFiles/httptest.dir/test/test.cpp.o.requires
	$(MAKE) -f CMakeFiles/httptest.dir/build.make CMakeFiles/httptest.dir/test/test.cpp.o.provides.build
.PHONY : CMakeFiles/httptest.dir/test/test.cpp.o.provides

CMakeFiles/httptest.dir/test/test.cpp.o.provides.build: CMakeFiles/httptest.dir/test/test.cpp.o


CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o: CMakeFiles/httptest.dir/flags.make
CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o: ../src/CHttpcontext.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/http/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o -c /home/gc/Desktop/Reactor/http/src/CHttpcontext.cpp

CMakeFiles/httptest.dir/src/CHttpcontext.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.dir/src/CHttpcontext.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/http/src/CHttpcontext.cpp > CMakeFiles/httptest.dir/src/CHttpcontext.cpp.i

CMakeFiles/httptest.dir/src/CHttpcontext.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.dir/src/CHttpcontext.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/http/src/CHttpcontext.cpp -o CMakeFiles/httptest.dir/src/CHttpcontext.cpp.s

CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.requires:

.PHONY : CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.requires

CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.provides: CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.requires
	$(MAKE) -f CMakeFiles/httptest.dir/build.make CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.provides.build
.PHONY : CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.provides

CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.provides.build: CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o


CMakeFiles/httptest.dir/src/CHttprequest.cpp.o: CMakeFiles/httptest.dir/flags.make
CMakeFiles/httptest.dir/src/CHttprequest.cpp.o: ../src/CHttprequest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/http/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/httptest.dir/src/CHttprequest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.dir/src/CHttprequest.cpp.o -c /home/gc/Desktop/Reactor/http/src/CHttprequest.cpp

CMakeFiles/httptest.dir/src/CHttprequest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.dir/src/CHttprequest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/http/src/CHttprequest.cpp > CMakeFiles/httptest.dir/src/CHttprequest.cpp.i

CMakeFiles/httptest.dir/src/CHttprequest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.dir/src/CHttprequest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/http/src/CHttprequest.cpp -o CMakeFiles/httptest.dir/src/CHttprequest.cpp.s

CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.requires:

.PHONY : CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.requires

CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.provides: CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.requires
	$(MAKE) -f CMakeFiles/httptest.dir/build.make CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.provides.build
.PHONY : CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.provides

CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.provides.build: CMakeFiles/httptest.dir/src/CHttprequest.cpp.o


CMakeFiles/httptest.dir/src/CHttpserver.cpp.o: CMakeFiles/httptest.dir/flags.make
CMakeFiles/httptest.dir/src/CHttpserver.cpp.o: ../src/CHttpserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/http/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/httptest.dir/src/CHttpserver.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.dir/src/CHttpserver.cpp.o -c /home/gc/Desktop/Reactor/http/src/CHttpserver.cpp

CMakeFiles/httptest.dir/src/CHttpserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.dir/src/CHttpserver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/http/src/CHttpserver.cpp > CMakeFiles/httptest.dir/src/CHttpserver.cpp.i

CMakeFiles/httptest.dir/src/CHttpserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.dir/src/CHttpserver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/http/src/CHttpserver.cpp -o CMakeFiles/httptest.dir/src/CHttpserver.cpp.s

CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.requires:

.PHONY : CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.requires

CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.provides: CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.requires
	$(MAKE) -f CMakeFiles/httptest.dir/build.make CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.provides.build
.PHONY : CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.provides

CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.provides.build: CMakeFiles/httptest.dir/src/CHttpserver.cpp.o


CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o: CMakeFiles/httptest.dir/flags.make
CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o: ../src/CHttpresponse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/Reactor/http/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o -c /home/gc/Desktop/Reactor/http/src/CHttpresponse.cpp

CMakeFiles/httptest.dir/src/CHttpresponse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/httptest.dir/src/CHttpresponse.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/Reactor/http/src/CHttpresponse.cpp > CMakeFiles/httptest.dir/src/CHttpresponse.cpp.i

CMakeFiles/httptest.dir/src/CHttpresponse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/httptest.dir/src/CHttpresponse.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/Reactor/http/src/CHttpresponse.cpp -o CMakeFiles/httptest.dir/src/CHttpresponse.cpp.s

CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.requires:

.PHONY : CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.requires

CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.provides: CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.requires
	$(MAKE) -f CMakeFiles/httptest.dir/build.make CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.provides.build
.PHONY : CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.provides

CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.provides.build: CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o


# Object files for target httptest
httptest_OBJECTS = \
"CMakeFiles/httptest.dir/test/test.cpp.o" \
"CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o" \
"CMakeFiles/httptest.dir/src/CHttprequest.cpp.o" \
"CMakeFiles/httptest.dir/src/CHttpserver.cpp.o" \
"CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o"

# External object files for target httptest
httptest_EXTERNAL_OBJECTS =

httptest: CMakeFiles/httptest.dir/test/test.cpp.o
httptest: CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o
httptest: CMakeFiles/httptest.dir/src/CHttprequest.cpp.o
httptest: CMakeFiles/httptest.dir/src/CHttpserver.cpp.o
httptest: CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o
httptest: CMakeFiles/httptest.dir/build.make
httptest: CMakeFiles/httptest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gc/Desktop/Reactor/http/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable httptest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/httptest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/httptest.dir/build: httptest

.PHONY : CMakeFiles/httptest.dir/build

CMakeFiles/httptest.dir/requires: CMakeFiles/httptest.dir/test/test.cpp.o.requires
CMakeFiles/httptest.dir/requires: CMakeFiles/httptest.dir/src/CHttpcontext.cpp.o.requires
CMakeFiles/httptest.dir/requires: CMakeFiles/httptest.dir/src/CHttprequest.cpp.o.requires
CMakeFiles/httptest.dir/requires: CMakeFiles/httptest.dir/src/CHttpserver.cpp.o.requires
CMakeFiles/httptest.dir/requires: CMakeFiles/httptest.dir/src/CHttpresponse.cpp.o.requires

.PHONY : CMakeFiles/httptest.dir/requires

CMakeFiles/httptest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/httptest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/httptest.dir/clean

CMakeFiles/httptest.dir/depend:
	cd /home/gc/Desktop/Reactor/http/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gc/Desktop/Reactor/http /home/gc/Desktop/Reactor/http /home/gc/Desktop/Reactor/http/build /home/gc/Desktop/Reactor/http/build /home/gc/Desktop/Reactor/http/build/CMakeFiles/httptest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/httptest.dir/depend
