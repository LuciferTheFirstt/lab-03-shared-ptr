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
CMAKE_SOURCE_DIR = /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr

# Include any dependencies generated for this target.
include CMakeFiles/test_shared.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_shared.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_shared.dir/flags.make

CMakeFiles/test_shared.dir/main.cpp.o: CMakeFiles/test_shared.dir/flags.make
CMakeFiles/test_shared.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_shared.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_shared.dir/main.cpp.o -c /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr/main.cpp

CMakeFiles/test_shared.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_shared.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr/main.cpp > CMakeFiles/test_shared.dir/main.cpp.i

CMakeFiles/test_shared.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_shared.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr/main.cpp -o CMakeFiles/test_shared.dir/main.cpp.s

CMakeFiles/test_shared.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/test_shared.dir/main.cpp.o.requires

CMakeFiles/test_shared.dir/main.cpp.o.provides: CMakeFiles/test_shared.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_shared.dir/build.make CMakeFiles/test_shared.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/test_shared.dir/main.cpp.o.provides

CMakeFiles/test_shared.dir/main.cpp.o.provides.build: CMakeFiles/test_shared.dir/main.cpp.o


# Object files for target test_shared
test_shared_OBJECTS = \
"CMakeFiles/test_shared.dir/main.cpp.o"

# External object files for target test_shared
test_shared_EXTERNAL_OBJECTS =

test_shared: CMakeFiles/test_shared.dir/main.cpp.o
test_shared: CMakeFiles/test_shared.dir/build.make
test_shared: libSharedPtr.a
test_shared: CMakeFiles/test_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_shared"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_shared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_shared.dir/build: test_shared

.PHONY : CMakeFiles/test_shared.dir/build

CMakeFiles/test_shared.dir/requires: CMakeFiles/test_shared.dir/main.cpp.o.requires

.PHONY : CMakeFiles/test_shared.dir/requires

CMakeFiles/test_shared.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_shared.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_shared.dir/clean

CMakeFiles/test_shared.dir/depend:
	cd /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr /home/luciferthefirstt/LuciferTheFirstt/workspace/workspace/projects/AL/lab03/lab-03-shared-ptr/CMakeFiles/test_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_shared.dir/depend

