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

# Utility rule file for metadata_parameters.

# Include the progress variables for this target.
include CMakeFiles/metadata_parameters.dir/progress.make

CMakeFiles/metadata_parameters:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jinwoo/pixhawk_ws/build/px4/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating full parameter metadata (markdown, xml, and json)"
	/usr/bin/cmake -E make_directory /home/jinwoo/pixhawk_ws/build/px4/docs
	/usr/bin/python3 /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/Tools/serial/generate_config.py --all-ports --ethernet --params-file /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/generated_serial_params.c --config-files /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/distance_sensor/cm8jl65/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/distance_sensor/leddar_one/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/distance_sensor/lightware_laser_serial/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/distance_sensor/tfmini/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/distance_sensor/ulanding_radar/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/dshot/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/gps/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/optical_flow/thoneflow/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/rc_input/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/roboclaw/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/telemetry/frsky_telemetry/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/telemetry/hott/hott_telemetry/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/drivers/telemetry/iridiumsbd/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/battery/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/cdrstream/cyclonedds/.pre-commit-config.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/cdrstream/rosidl/.github/workflows/mirror-rolling-to-master.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/crypto/libtommath/doc/.latexindent.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/events/libevents/libs/cpp/parse/nlohmann_json/.github/ISSUE_TEMPLATE/bug.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/pwm/pwm_aux_params.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/pwm/pwm_extra_params.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/pwm/pwm_main_params.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/battery_status/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/mavlink/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/micrortps_bridge/micrortps_client/module.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/arduino_esp32.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/build-shared.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/build-static.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/emscripten.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/espidf.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/integration.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/mbed.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/multicast.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.github/workflows/zephyr.yaml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/modules/zenoh/zenoh-pico/.readthedocs.yaml
	/usr/bin/python3 /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/parameters/px_process_params.py --src-path `find /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src -maxdepth 4 -type d` --inject-xml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/parameters/parameters_injected.xml --markdown /home/jinwoo/pixhawk_ws/build/px4/docs/parameters.md
	/usr/bin/python3 /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/parameters/px_process_params.py --src-path `find /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src -maxdepth 4 -type d` --inject-xml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/parameters/parameters_injected.xml --json /home/jinwoo/pixhawk_ws/build/px4/docs/parameters.json --compress
	/usr/bin/python3 /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/parameters/px_process_params.py --src-path `find /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src -maxdepth 4 -type d` --inject-xml /home/jinwoo/pixhawk_ws/src/PX4-Autopilot/src/lib/parameters/parameters_injected.xml --xml /home/jinwoo/pixhawk_ws/build/px4/docs/parameters.xml

metadata_parameters: CMakeFiles/metadata_parameters
metadata_parameters: CMakeFiles/metadata_parameters.dir/build.make

.PHONY : metadata_parameters

# Rule to build all files generated by this target.
CMakeFiles/metadata_parameters.dir/build: metadata_parameters

.PHONY : CMakeFiles/metadata_parameters.dir/build

CMakeFiles/metadata_parameters.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/metadata_parameters.dir/cmake_clean.cmake
.PHONY : CMakeFiles/metadata_parameters.dir/clean

CMakeFiles/metadata_parameters.dir/depend:
	cd /home/jinwoo/pixhawk_ws/build/px4 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jinwoo/pixhawk_ws/src/PX4-Autopilot /home/jinwoo/pixhawk_ws/src/PX4-Autopilot /home/jinwoo/pixhawk_ws/build/px4 /home/jinwoo/pixhawk_ws/build/px4 /home/jinwoo/pixhawk_ws/build/px4/CMakeFiles/metadata_parameters.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/metadata_parameters.dir/depend

