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
include platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/depend.make

# Include the progress variables for this target.
include platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/flags.make

platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.o: platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/flags.make
platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.o: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/platforms/posix/src/px4/generic/generic/tone_alarm/ToneAlarmInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.o"
	cd /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm && /usr/bin/ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.o -c /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/platforms/posix/src/px4/generic/generic/tone_alarm/ToneAlarmInterface.cpp

platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.i"
	cd /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/platforms/posix/src/px4/generic/generic/tone_alarm/ToneAlarmInterface.cpp > CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.i

platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.s"
	cd /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/platforms/posix/src/px4/generic/generic/tone_alarm/ToneAlarmInterface.cpp -o CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.s

# Object files for target arch_tone_alarm
arch_tone_alarm_OBJECTS = \
"CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.o"

# External object files for target arch_tone_alarm
arch_tone_alarm_EXTERNAL_OBJECTS =

/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libarch_tone_alarm.a: platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/ToneAlarmInterface.cpp.o
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libarch_tone_alarm.a: platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/build.make
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libarch_tone_alarm.a: platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libarch_tone_alarm.a"
	cd /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm && $(CMAKE_COMMAND) -P CMakeFiles/arch_tone_alarm.dir/cmake_clean_target.cmake
	cd /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/arch_tone_alarm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/build: /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/libarch_tone_alarm.a

.PHONY : platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/build

platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/clean:
	cd /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm && $(CMAKE_COMMAND) -P CMakeFiles/arch_tone_alarm.dir/cmake_clean.cmake
.PHONY : platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/clean

platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/depend:
	cd /home/jinwoo/pixhawk_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinwoo/pixhawk_ws/src/PX4-Autopilot /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/platforms/posix/src/px4/generic/generic/tone_alarm /home/jinwoo/pixhawk_ws/build/px4 /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm /home/jinwoo/pixhawk_ws/build/px4/platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/posix/src/px4/generic/generic/tone_alarm/CMakeFiles/arch_tone_alarm.dir/depend

