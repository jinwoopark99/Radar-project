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

# Utility rule file for mixer_gen_6dof.

# Include the progress variables for this target.
include src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/progress.make

src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof: src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h


src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/tools/px_generate_mixers.py
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/dodeca_bottom_cox.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/dodeca_top_cox.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_cox.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_plus.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_t.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_x.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_cox.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_cox_wide.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_plus.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_x.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_deadcat.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_h.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_plus.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_s250aq.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_vtail.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_wide.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_x_cw.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_x.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_x_pusher.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_y.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/tri_y.toml
src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h: /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/twin_engine.toml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating mixer_multirotor_6dof.generated.h"
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/mixer/MultirotorMixer && /usr/bin/python3 /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/tools/px_generate_mixers.py --sixdof -f /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/dodeca_bottom_cox.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/dodeca_top_cox.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_cox.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_plus.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_t.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/hex_x.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_cox.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_cox_wide.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_plus.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/octa_x.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_deadcat.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_h.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_plus.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_s250aq.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_vtail.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_wide.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_x_cw.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_x.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_x_pusher.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/quad_y.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/tri_y.toml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer/geometries/twin_engine.toml -o mixer_multirotor_6dof.generated.h

mixer_gen_6dof: src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof
mixer_gen_6dof: src/lib/mixer/MultirotorMixer/mixer_multirotor_6dof.generated.h
mixer_gen_6dof: src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/build.make

.PHONY : mixer_gen_6dof

# Rule to build all files generated by this target.
src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/build: mixer_gen_6dof

.PHONY : src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/build

src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/clean:
	cd /home/jinwoo/pixhawk_ws/build/px4/src/lib/mixer/MultirotorMixer && $(CMAKE_COMMAND) -P CMakeFiles/mixer_gen_6dof.dir/cmake_clean.cmake
.PHONY : src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/clean

src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/depend:
	cd /home/jinwoo/pixhawk_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinwoo/pixhawk_ws/src/PX4-Autopilot /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/mixer/MultirotorMixer /home/jinwoo/pixhawk_ws/build/px4 /home/jinwoo/pixhawk_ws/build/px4/src/lib/mixer/MultirotorMixer /home/jinwoo/pixhawk_ws/build/px4/src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/lib/mixer/MultirotorMixer/CMakeFiles/mixer_gen_6dof.dir/depend

