# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trash_bot: 5 messages, 0 services")

set(MSG_I_FLAGS "-Itrash_bot:/home/twinny/fieldro_bot_ws/src/trash_bot/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Itwinny_msgs:/home/twinny/IP060A01_ws/src/twinny_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trash_bot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg" NAME_WE)
add_custom_target(_trash_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trash_bot" "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg" NAME_WE)
add_custom_target(_trash_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trash_bot" "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg" NAME_WE)
add_custom_target(_trash_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trash_bot" "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg" NAME_WE)
add_custom_target(_trash_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trash_bot" "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg" NAME_WE)
add_custom_target(_trash_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trash_bot" "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot
)
_generate_msg_cpp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot
)
_generate_msg_cpp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot
)
_generate_msg_cpp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot
)
_generate_msg_cpp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot
)

### Generating Services

### Generating Module File
_generate_module_cpp(trash_bot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trash_bot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trash_bot_generate_messages trash_bot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_cpp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_cpp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_cpp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_cpp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_cpp _trash_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trash_bot_gencpp)
add_dependencies(trash_bot_gencpp trash_bot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trash_bot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot
)
_generate_msg_eus(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot
)
_generate_msg_eus(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot
)
_generate_msg_eus(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot
)
_generate_msg_eus(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot
)

### Generating Services

### Generating Module File
_generate_module_eus(trash_bot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(trash_bot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(trash_bot_generate_messages trash_bot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_eus _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_eus _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_eus _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_eus _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_eus _trash_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trash_bot_geneus)
add_dependencies(trash_bot_geneus trash_bot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trash_bot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot
)
_generate_msg_lisp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot
)
_generate_msg_lisp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot
)
_generate_msg_lisp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot
)
_generate_msg_lisp(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot
)

### Generating Services

### Generating Module File
_generate_module_lisp(trash_bot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trash_bot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trash_bot_generate_messages trash_bot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_lisp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_lisp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_lisp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_lisp _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_lisp _trash_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trash_bot_genlisp)
add_dependencies(trash_bot_genlisp trash_bot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trash_bot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot
)
_generate_msg_nodejs(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot
)
_generate_msg_nodejs(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot
)
_generate_msg_nodejs(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot
)
_generate_msg_nodejs(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(trash_bot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(trash_bot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(trash_bot_generate_messages trash_bot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_nodejs _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_nodejs _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_nodejs _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_nodejs _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_nodejs _trash_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trash_bot_gennodejs)
add_dependencies(trash_bot_gennodejs trash_bot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trash_bot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot
)
_generate_msg_py(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot
)
_generate_msg_py(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot
)
_generate_msg_py(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot
)
_generate_msg_py(trash_bot
  "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot
)

### Generating Services

### Generating Module File
_generate_module_py(trash_bot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trash_bot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trash_bot_generate_messages trash_bot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/Pose.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_py _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitControl.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_py _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/IOSignal.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_py _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitActionComplete.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_py _trash_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/trash_bot/msg/UnitStateMsg.msg" NAME_WE)
add_dependencies(trash_bot_generate_messages_py _trash_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trash_bot_genpy)
add_dependencies(trash_bot_genpy trash_bot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trash_bot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trash_bot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(trash_bot_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(trash_bot_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trash_bot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET twinny_msgs_generate_messages_cpp)
  add_dependencies(trash_bot_generate_messages_cpp twinny_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trash_bot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(trash_bot_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(trash_bot_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(trash_bot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET twinny_msgs_generate_messages_eus)
  add_dependencies(trash_bot_generate_messages_eus twinny_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trash_bot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(trash_bot_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(trash_bot_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trash_bot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET twinny_msgs_generate_messages_lisp)
  add_dependencies(trash_bot_generate_messages_lisp twinny_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trash_bot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(trash_bot_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(trash_bot_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(trash_bot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET twinny_msgs_generate_messages_nodejs)
  add_dependencies(trash_bot_generate_messages_nodejs twinny_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trash_bot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(trash_bot_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(trash_bot_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trash_bot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET twinny_msgs_generate_messages_py)
  add_dependencies(trash_bot_generate_messages_py twinny_msgs_generate_messages_py)
endif()
