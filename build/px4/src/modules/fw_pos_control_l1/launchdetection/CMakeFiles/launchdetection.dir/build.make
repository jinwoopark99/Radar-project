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
include src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/depend.make

# Include the progress variables for this target.
include src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/progress.make

# Include the compile flags for this target's objects.
include src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/flags.make

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/LaunchDetector.cpp.o: src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/flags.make
src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/LaunchDetector.cpp.o: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/LaunchDetector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/LaunchDetector.cpp.o"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && /usr/bin/ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/launchdetection.dir/LaunchDetector.cpp.o -c /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/LaunchDetector.cpp

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/LaunchDetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/launchdetection.dir/LaunchDetector.cpp.i"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/LaunchDetector.cpp > CMakeFiles/launchdetection.dir/LaunchDetector.cpp.i

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/LaunchDetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/launchdetection.dir/LaunchDetector.cpp.s"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/LaunchDetector.cpp -o CMakeFiles/launchdetection.dir/LaunchDetector.cpp.s

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.o: src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/flags.make
src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.o: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/CatapultLaunchMethod.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.o"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && /usr/bin/ccache /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.o -c /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/CatapultLaunchMethod.cpp

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.i"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/CatapultLaunchMethod.cpp > CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.i

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.s"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection/CatapultLaunchMethod.cpp -o CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.s

# Object files for target launchdetection
launchdetection_OBJECTS = \
"CMakeFiles/launchdetection.dir/LaunchDetector.cpp.o" \
"CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.o"

# External object files for target launchdetection
launchdetection_EXTERNAL_OBJECTS =

/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/liblaunchdetection.a: src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/LaunchDetector.cpp.o
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/liblaunchdetection.a: src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/CatapultLaunchMethod.cpp.o
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/liblaunchdetection.a: src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/build.make
/home/jinwoo/pixhawk_ws/devel/.private/px4/lib/liblaunchdetection.a: src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/liblaunchdetection.a"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && $(CMAKE_COMMAND) -P CMakeFiles/launchdetection.dir/cmake_clean_target.cmake
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/launchdetection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/build: /home/jinwoo/pixhawk_ws/devel/.private/px4/lib/liblaunchdetection.a

.PHONY : src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/build

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/clean:
	cd /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection && $(CMAKE_COMMAND) -P CMakeFiles/launchdetection.dir/cmake_clean.cmake
.PHONY : src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/clean

src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/depend:
	cd /home/jinwoo/pixhawk_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinwoo/pixhawk_ws/src/PX4-Autopilot /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/fw_pos_control_l1/launchdetection /home/jinwoo/pixhawk_ws/build/px4 /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection /home/jinwoo/pixhawk_ws/build/px4/src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/modules/fw_pos_control_l1/launchdetection/CMakeFiles/launchdetection.dir/depend

