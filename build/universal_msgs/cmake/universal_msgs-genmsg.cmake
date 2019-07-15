# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "universal_msgs: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iuniversal_msgs:/home/robin/catkin_car/src/universal_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(universal_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv" NAME_WE)
add_custom_target(_universal_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "universal_msgs" "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv" ""
)

get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv" NAME_WE)
add_custom_target(_universal_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "universal_msgs" "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv" ""
)

get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg" NAME_WE)
add_custom_target(_universal_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "universal_msgs" "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/universal_msgs
)

### Generating Services
_generate_srv_cpp(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/universal_msgs
)
_generate_srv_cpp(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/universal_msgs
)

### Generating Module File
_generate_module_cpp(universal_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/universal_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(universal_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(universal_msgs_generate_messages universal_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_cpp _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_cpp _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg" NAME_WE)
add_dependencies(universal_msgs_generate_messages_cpp _universal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(universal_msgs_gencpp)
add_dependencies(universal_msgs_gencpp universal_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS universal_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/universal_msgs
)

### Generating Services
_generate_srv_eus(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/universal_msgs
)
_generate_srv_eus(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/universal_msgs
)

### Generating Module File
_generate_module_eus(universal_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/universal_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(universal_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(universal_msgs_generate_messages universal_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_eus _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_eus _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg" NAME_WE)
add_dependencies(universal_msgs_generate_messages_eus _universal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(universal_msgs_geneus)
add_dependencies(universal_msgs_geneus universal_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS universal_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/universal_msgs
)

### Generating Services
_generate_srv_lisp(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/universal_msgs
)
_generate_srv_lisp(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/universal_msgs
)

### Generating Module File
_generate_module_lisp(universal_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/universal_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(universal_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(universal_msgs_generate_messages universal_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_lisp _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_lisp _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg" NAME_WE)
add_dependencies(universal_msgs_generate_messages_lisp _universal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(universal_msgs_genlisp)
add_dependencies(universal_msgs_genlisp universal_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS universal_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/universal_msgs
)

### Generating Services
_generate_srv_nodejs(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/universal_msgs
)
_generate_srv_nodejs(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/universal_msgs
)

### Generating Module File
_generate_module_nodejs(universal_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/universal_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(universal_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(universal_msgs_generate_messages universal_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_nodejs _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_nodejs _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg" NAME_WE)
add_dependencies(universal_msgs_generate_messages_nodejs _universal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(universal_msgs_gennodejs)
add_dependencies(universal_msgs_gennodejs universal_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS universal_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/universal_msgs
)

### Generating Services
_generate_srv_py(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/universal_msgs
)
_generate_srv_py(universal_msgs
  "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/universal_msgs
)

### Generating Module File
_generate_module_py(universal_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/universal_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(universal_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(universal_msgs_generate_messages universal_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/SendHitBallLocationABS.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_py _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/srv/Trash_Location.srv" NAME_WE)
add_dependencies(universal_msgs_generate_messages_py _universal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robin/catkin_car/src/universal_msgs/msg/Ball_Locations.msg" NAME_WE)
add_dependencies(universal_msgs_generate_messages_py _universal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(universal_msgs_genpy)
add_dependencies(universal_msgs_genpy universal_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS universal_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/universal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/universal_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(universal_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(universal_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/universal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/universal_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(universal_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(universal_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/universal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/universal_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(universal_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(universal_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/universal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/universal_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(universal_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(universal_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/universal_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/universal_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/universal_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(universal_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(universal_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
