# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/jinwoo/pixhawk_ws/src/PX4-Autopilot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jinwoo/pixhawk_ws/build/px4

# Include any dependencies generated for this target.
include src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/depend.make

# Include the progress variables for this target.
include src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/progress.make

# Include the compile flags for this target's objects.
include src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/flags.make

src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/SMBus.cpp.o: src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/flags.make
src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/SMBus.cpp.o: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/drivers/smbus/SMBus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/SMBus.cpp.o"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus && /usr/bin/ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__smbus.dir/SMBus.cpp.o -c /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/drivers/smbus/SMBus.cpp

src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/SMBus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__smbus.dir/SMBus.cpp.i"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/drivers/smbus/SMBus.cpp > CMakeFiles/drivers__smbus.dir/SMBus.cpp.i

src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/SMBus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__smbus.dir/SMBus.cpp.s"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/drivers/smbus/SMBus.cpp -o CMakeFiles/drivers__smbus.dir/SMBus.cpp.s

# Object files for target drivers__smbus
drivers__smbus_OBJECTS = \
"CMakeFiles/drivers__smbus.dir/SMBus.cpp.o"

# External object files for target drivers__smbus
drivers__smbus_EXTERNAL_OBJECTS =

/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libdrivers__smbus.a: src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/SMBus.cpp.o
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libdrivers__smbus.a: src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/build.make
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libdrivers__smbus.a: src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libdrivers__smbus.a"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus && $(CMAKE_COMMAND) -P CMakeFiles/drivers__smbus.dir/cmake_clean_target.cmake
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers__smbus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/build: /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libdrivers__smbus.a

.PHONY : src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/build

src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/clean:
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus && $(CMAKE_COMMAND) -P CMakeFiles/drivers__smbus.dir/cmake_clean.cmake
.PHONY : src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/clean

src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/depend:
	cd /home/jinwoo/pixhawk_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinwoo/pixhawk_ws/src/PX4-Autopilot /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/drivers/smbus /home/jinwoo/pixhawk_ws/build/px4 /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus /home/jinwoo/pixhawk_ws/build/px4/src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/drivers/smbus/CMakeFiles/drivers__smbus.dir/depend

