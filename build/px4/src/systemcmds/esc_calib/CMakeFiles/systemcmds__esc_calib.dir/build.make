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
include src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/depend.make

# Include the progress variables for this target.
include src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/progress.make

# Include the compile flags for this target's objects.
include src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/flags.make

src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.o: src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/flags.make
src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.o: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/systemcmds/esc_calib/esc_calib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.o"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib && /usr/bin/ccache /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.o   -c /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/systemcmds/esc_calib/esc_calib.c

src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.i"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/systemcmds/esc_calib/esc_calib.c > CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.i

src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.s"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/systemcmds/esc_calib/esc_calib.c -o CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.s

# Object files for target systemcmds__esc_calib
systemcmds__esc_calib_OBJECTS = \
"CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.o"

# External object files for target systemcmds__esc_calib
systemcmds__esc_calib_EXTERNAL_OBJECTS =

/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libsystemcmds__esc_calib.a: src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/esc_calib.c.o
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libsystemcmds__esc_calib.a: src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/build.make
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libsystemcmds__esc_calib.a: src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libsystemcmds__esc_calib.a"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib && $(CMAKE_COMMAND) -P CMakeFiles/systemcmds__esc_calib.dir/cmake_clean_target.cmake
	cd /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/systemcmds__esc_calib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/build: /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libsystemcmds__esc_calib.a

.PHONY : src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/build

src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/clean:
	cd /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib && $(CMAKE_COMMAND) -P CMakeFiles/systemcmds__esc_calib.dir/cmake_clean.cmake
.PHONY : src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/clean

src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/depend:
	cd /home/jinwoo/pixhawk_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinwoo/pixhawk_ws/src/PX4-Autopilot /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/systemcmds/esc_calib /home/jinwoo/pixhawk_ws/build/px4 /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib /home/jinwoo/pixhawk_ws/build/px4/src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/systemcmds/esc_calib/CMakeFiles/systemcmds__esc_calib.dir/depend

