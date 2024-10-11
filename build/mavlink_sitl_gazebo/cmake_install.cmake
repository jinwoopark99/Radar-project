# Install script for directory: /home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jinwoo/pixhawk_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jinwoo/pixhawk_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/jinwoo/pixhawk_ws/install" TYPE PROGRAM FILES "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jinwoo/pixhawk_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/jinwoo/pixhawk_ws/install" TYPE PROGRAM FILES "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jinwoo/pixhawk_ws/install/setup.bash;/home/jinwoo/pixhawk_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/jinwoo/pixhawk_ws/install" TYPE FILE FILES
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/setup.bash"
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jinwoo/pixhawk_ws/install/setup.sh;/home/jinwoo/pixhawk_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/jinwoo/pixhawk_ws/install" TYPE FILE FILES
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/setup.sh"
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jinwoo/pixhawk_ws/install/setup.zsh;/home/jinwoo/pixhawk_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/jinwoo/pixhawk_ws/install" TYPE FILE FILES
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/setup.zsh"
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/jinwoo/pixhawk_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/jinwoo/pixhawk_ws/install" TYPE FILE FILES "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/mavlink_sitl_gazebo.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_sitl_gazebo/cmake" TYPE FILE FILES
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/mavlink_sitl_gazeboConfig.cmake"
    "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/mavlink_sitl_gazeboConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_sitl_gazebo" TYPE FILE FILES "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/catkin/profile.d" TYPE FILE FILES "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/50_sitl_gazebo_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_sitl_gazebo/catkin_env_hook" TYPE FILE FILES "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/catkin_generated/installspace/50_sitl_gazebo_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airspeed_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airspeed_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airspeed_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_airspeed_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airspeed_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airspeed_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airspeed_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airspeed_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_camera_manager_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_camera_manager_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_camera_manager_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_camera_manager_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_camera_manager_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_camera_manager_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_camera_manager_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_camera_manager_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gps_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gps_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gps_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_gps_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gps_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gps_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gps_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gps_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_groundtruth_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_groundtruth_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_groundtruth_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_groundtruth_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_groundtruth_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_groundtruth_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_groundtruth_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_groundtruth_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_irlock_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_irlock_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_irlock_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_irlock_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_irlock_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_irlock_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_irlock_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_irlock_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_lidar_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_lidar_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_lidar_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_lidar_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_lidar_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_lidar_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_lidar_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_lidar_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_mockup_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_mockup_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_mockup_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_opticalflow_mockup_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_mockup_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_mockup_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_mockup_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_mockup_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_opticalflow_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/OpticalFlow:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_opticalflow_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_sonar_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_sonar_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_sonar_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_sonar_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_sonar_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_sonar_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_sonar_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_sonar_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_uuv_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_uuv_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_uuv_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_uuv_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_uuv_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_uuv_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_uuv_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_uuv_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_vision_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_vision_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_vision_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_vision_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_vision_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_vision_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_vision_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_vision_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_controller_interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_controller_interface.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_controller_interface.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_controller_interface.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_controller_interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_controller_interface.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_controller_interface.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_controller_interface.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gimbal_controller_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gimbal_controller_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gimbal_controller_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_gimbal_controller_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gimbal_controller_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gimbal_controller_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gimbal_controller_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gimbal_controller_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_imu_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_imu_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_imu_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_imu_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_imu_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_imu_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_imu_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_imu_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_mavlink_interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_mavlink_interface.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_mavlink_interface.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_mavlink_interface.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_mavlink_interface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_mavlink_interface.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_mavlink_interface.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_mavlink_interface.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_motor_model.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_motor_model.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_motor_model.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_motor_model.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_motor_model.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_motor_model.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_motor_model.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_motor_model.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_multirotor_base_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_multirotor_base_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_multirotor_base_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_multirotor_base_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_multirotor_base_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_multirotor_base_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_multirotor_base_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_multirotor_base_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_wind_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_wind_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_wind_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_wind_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_wind_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_wind_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_wind_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_wind_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_magnetometer_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_magnetometer_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_magnetometer_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_magnetometer_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_magnetometer_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_magnetometer_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_magnetometer_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_magnetometer_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_barometer_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_barometer_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_barometer_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_barometer_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_barometer_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_barometer_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_barometer_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_barometer_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_catapult_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_catapult_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_catapult_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_catapult_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_catapult_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_catapult_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_catapult_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_catapult_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_usv_dynamics_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_usv_dynamics_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_usv_dynamics_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_usv_dynamics_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_usv_dynamics_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_usv_dynamics_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_usv_dynamics_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_usv_dynamics_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_parachute_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_parachute_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_parachute_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_parachute_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_parachute_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_parachute_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_parachute_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_parachute_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airship_dynamics_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airship_dynamics_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airship_dynamics_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_airship_dynamics_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airship_dynamics_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airship_dynamics_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airship_dynamics_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_airship_dynamics_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_drop_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_drop_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_drop_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_drop_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_drop_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_drop_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_drop_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_drop_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gst_camera_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gst_camera_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gst_camera_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_gst_camera_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gst_camera_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gst_camera_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gst_camera_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_gst_camera_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_video_stream_widget.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_video_stream_widget.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_video_stream_widget.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_video_stream_widget.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_video_stream_widget.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_video_stream_widget.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_video_stream_widget.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_video_stream_widget.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_user_camera_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_user_camera_plugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_user_camera_plugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libgazebo_user_camera_plugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_user_camera_plugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_user_camera_plugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_user_camera_plugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libgazebo_user_camera_plugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libLiftDragPlugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libLiftDragPlugin.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libLiftDragPlugin.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libLiftDragPlugin.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libLiftDragPlugin.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libLiftDragPlugin.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libLiftDragPlugin.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libLiftDragPlugin.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libmav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libmav_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libmav_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libmav_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libmav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libmav_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libmav_msgs.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libmav_msgs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libnav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libnav_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libnav_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libnav_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libnav_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libnav_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libnav_msgs.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libnav_msgs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libstd_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libstd_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libstd_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libstd_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libstd_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libstd_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libstd_msgs.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libstd_msgs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libsensor_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libsensor_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libsensor_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins" TYPE SHARED_LIBRARY FILES "/home/jinwoo/pixhawk_ws/devel/.private/mavlink_sitl_gazebo/lib/libsensor_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libsensor_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libsensor_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libsensor_msgs.so"
         OLD_RPATH "/usr/lib/x86_64-linux-gnu/gazebo-11/plugins:/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavlink_sitl_gazebo/plugins/libsensor_msgs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_sitl_gazebo/models" TYPE DIRECTORY FILES
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/3DR_gps_mag"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/Box"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/BoxesLargeOnPallet"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/BoxesLargeOnPallet_2"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/BoxesLargeOnPallet_3"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/airspeed"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/asphalt_plane"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/big_box"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/big_box2"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/big_box3"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/big_box4"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/boat"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/bumper_sensor"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/c920"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/cloudship"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/delta_wing"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/depth_camera"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/europallet"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/flow_cam"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/foggy_lidar"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/fpv_cam"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/geotagged_cam"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/gps"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/ground_plane"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/if750a"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_depth_camera"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_downward_depth_camera"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_dual_gps"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_foggy_lidar"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_fpv_cam"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_hitl"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_irlock"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_obs_avoid"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_opt_flow"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_opt_flow_mockup"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_rplidar"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_rtps"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_stereo_camera"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_triple_depth_camera"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/iris_vision"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/irlock"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/lidar"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/matrice_100"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/matrice_100_opt_flow"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/mb1240-xl-ez4"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/ocean"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/pallet_full"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/parachute_package"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/parachute_small"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/pixhawk"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/plane"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/plane_cam"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/plane_catapult"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/plane_lidar"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/polaris_ranger_ev"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/px4flow"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/px4vision"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/r1_rover"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/r200"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/ramp"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/realsense_camera"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/rover"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/rplidar"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/sf10a"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/shelves_high"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/shelves_high2"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/shelves_high2_no_collision"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/small_box"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/solo"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/sonar"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/standard_vtol"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/standard_vtol_drop"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/standard_vtol_hitl"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/stereo_camera"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/sun"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/tailsitter"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/techpod"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/tiltrotor"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/typhoon_h480"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/uneven_ground"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/uuv_bluerov2_heavy"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/uuv_hippocampus"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/models/vtol_downward_depth_camera"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_sitl_gazebo/worlds" TYPE FILE FILES
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/baylands.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/boat.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/empty.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/hippocampus.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/hitl_iris.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/hitl_standard_vtol.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/iris_irlock.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/ksql_airport.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/mcmillan_airfield.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/ocean.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/sonoma_raceway.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/typhoon_h480.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/uuv_bluerov2_heavy.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/uuv_hippocampus.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/warehouse.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/windy.world"
    "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/worlds/yosemite.world"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_sitl_gazebo" TYPE FILE FILES "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavlink_sitl_gazebo" TYPE FILE FILES "/home/jinwoo/pixhawk_ws/src/mavlink_sitl_gazebo/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/OpticalFlow/cmake_install.cmake")
  include("/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/unit_tests/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/jinwoo/pixhawk_ws/build/mavlink_sitl_gazebo/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
