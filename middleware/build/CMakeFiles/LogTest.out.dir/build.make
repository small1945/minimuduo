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
CMAKE_SOURCE_DIR = /home/gc/Desktop/nanolog

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gc/Desktop/nanolog/build

# Include any dependencies generated for this target.
include CMakeFiles/LogTest.out.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LogTest.out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LogTest.out.dir/flags.make

CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o: CMakeFiles/LogTest.out.dir/flags.make
CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o: ../test/LogTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/nanolog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o -c /home/gc/Desktop/nanolog/test/LogTest.cpp

CMakeFiles/LogTest.out.dir/test/LogTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogTest.out.dir/test/LogTest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/nanolog/test/LogTest.cpp > CMakeFiles/LogTest.out.dir/test/LogTest.cpp.i

CMakeFiles/LogTest.out.dir/test/LogTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogTest.out.dir/test/LogTest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/nanolog/test/LogTest.cpp -o CMakeFiles/LogTest.out.dir/test/LogTest.cpp.s

CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.requires:

.PHONY : CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.requires

CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.provides: CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/LogTest.out.dir/build.make CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.provides.build
.PHONY : CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.provides

CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.provides.build: CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o


CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o: CMakeFiles/LogTest.out.dir/flags.make
CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o: ../src/CBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/nanolog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o -c /home/gc/Desktop/nanolog/src/CBuffer.cpp

CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/nanolog/src/CBuffer.cpp > CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.i

CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/nanolog/src/CBuffer.cpp -o CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.s

CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.requires:

.PHONY : CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.requires

CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.provides: CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.requires
	$(MAKE) -f CMakeFiles/LogTest.out.dir/build.make CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.provides.build
.PHONY : CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.provides

CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.provides.build: CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o


CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o: CMakeFiles/LogTest.out.dir/flags.make
CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o: ../src/CLogfile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/nanolog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o -c /home/gc/Desktop/nanolog/src/CLogfile.cpp

CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/nanolog/src/CLogfile.cpp > CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.i

CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/nanolog/src/CLogfile.cpp -o CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.s

CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.requires:

.PHONY : CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.requires

CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.provides: CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.requires
	$(MAKE) -f CMakeFiles/LogTest.out.dir/build.make CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.provides.build
.PHONY : CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.provides

CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.provides.build: CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o


CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o: CMakeFiles/LogTest.out.dir/flags.make
CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o: ../src/CLogstream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/nanolog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o -c /home/gc/Desktop/nanolog/src/CLogstream.cpp

CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/nanolog/src/CLogstream.cpp > CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.i

CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/nanolog/src/CLogstream.cpp -o CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.s

CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.requires:

.PHONY : CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.requires

CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.provides: CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.requires
	$(MAKE) -f CMakeFiles/LogTest.out.dir/build.make CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.provides.build
.PHONY : CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.provides

CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.provides.build: CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o


CMakeFiles/LogTest.out.dir/src/CTime.cpp.o: CMakeFiles/LogTest.out.dir/flags.make
CMakeFiles/LogTest.out.dir/src/CTime.cpp.o: ../src/CTime.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gc/Desktop/nanolog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/LogTest.out.dir/src/CTime.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogTest.out.dir/src/CTime.cpp.o -c /home/gc/Desktop/nanolog/src/CTime.cpp

CMakeFiles/LogTest.out.dir/src/CTime.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogTest.out.dir/src/CTime.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gc/Desktop/nanolog/src/CTime.cpp > CMakeFiles/LogTest.out.dir/src/CTime.cpp.i

CMakeFiles/LogTest.out.dir/src/CTime.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogTest.out.dir/src/CTime.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gc/Desktop/nanolog/src/CTime.cpp -o CMakeFiles/LogTest.out.dir/src/CTime.cpp.s

CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.requires:

.PHONY : CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.requires

CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.provides: CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.requires
	$(MAKE) -f CMakeFiles/LogTest.out.dir/build.make CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.provides.build
.PHONY : CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.provides

CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.provides.build: CMakeFiles/LogTest.out.dir/src/CTime.cpp.o


# Object files for target LogTest.out
LogTest_out_OBJECTS = \
"CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o" \
"CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o" \
"CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o" \
"CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o" \
"CMakeFiles/LogTest.out.dir/src/CTime.cpp.o"

# External object files for target LogTest.out
LogTest_out_EXTERNAL_OBJECTS =

LogTest.out: CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o
LogTest.out: CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o
LogTest.out: CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o
LogTest.out: CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o
LogTest.out: CMakeFiles/LogTest.out.dir/src/CTime.cpp.o
LogTest.out: CMakeFiles/LogTest.out.dir/build.make
LogTest.out: CMakeFiles/LogTest.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gc/Desktop/nanolog/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable LogTest.out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LogTest.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LogTest.out.dir/build: LogTest.out

.PHONY : CMakeFiles/LogTest.out.dir/build

CMakeFiles/LogTest.out.dir/requires: CMakeFiles/LogTest.out.dir/test/LogTest.cpp.o.requires
CMakeFiles/LogTest.out.dir/requires: CMakeFiles/LogTest.out.dir/src/CBuffer.cpp.o.requires
CMakeFiles/LogTest.out.dir/requires: CMakeFiles/LogTest.out.dir/src/CLogfile.cpp.o.requires
CMakeFiles/LogTest.out.dir/requires: CMakeFiles/LogTest.out.dir/src/CLogstream.cpp.o.requires
CMakeFiles/LogTest.out.dir/requires: CMakeFiles/LogTest.out.dir/src/CTime.cpp.o.requires

.PHONY : CMakeFiles/LogTest.out.dir/requires

CMakeFiles/LogTest.out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LogTest.out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LogTest.out.dir/clean

CMakeFiles/LogTest.out.dir/depend:
	cd /home/gc/Desktop/nanolog/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gc/Desktop/nanolog /home/gc/Desktop/nanolog /home/gc/Desktop/nanolog/build /home/gc/Desktop/nanolog/build /home/gc/Desktop/nanolog/build/CMakeFiles/LogTest.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LogTest.out.dir/depend
