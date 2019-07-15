cmake_minimum_required(VERSION 2.8.3)
project(universal_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  cv_bridge
  image_transport
  sensor_msgs
  message_generation
  geometry_msgs
)

# find_package(Boost REQUIRED COMPONENTS system)
find_package(OpenCV REQUIRED)


## Generate messages in the 'msg' folder
add_message_files(
  FILES
  Ball_Locations.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  SendHitBallLocationABS.srv
  Trash_Location.srv
)

## Generate actions in the 'action' folder
#add_action_files(
 # FILES
 # Action1.action
 # Action2.action
#)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
CATKIN_DEPENDS
  message_runtime roscpp rospy std_msgs cv_bridge image_transport sensor_msgs message_generation geometry_msgs
)


###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ library
#add_library(config SHARED src/config.cpp)
