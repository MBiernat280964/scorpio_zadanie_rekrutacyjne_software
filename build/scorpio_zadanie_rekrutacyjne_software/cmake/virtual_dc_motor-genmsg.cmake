# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "virtual_dc_motor: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(virtual_dc_motor_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv" NAME_WE)
add_custom_target(_virtual_dc_motor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "virtual_dc_motor" "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(virtual_dc_motor
  "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_dc_motor
)

### Generating Module File
_generate_module_cpp(virtual_dc_motor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_dc_motor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(virtual_dc_motor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(virtual_dc_motor_generate_messages virtual_dc_motor_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv" NAME_WE)
add_dependencies(virtual_dc_motor_generate_messages_cpp _virtual_dc_motor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_dc_motor_gencpp)
add_dependencies(virtual_dc_motor_gencpp virtual_dc_motor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_dc_motor_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(virtual_dc_motor
  "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_dc_motor
)

### Generating Module File
_generate_module_eus(virtual_dc_motor
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_dc_motor
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(virtual_dc_motor_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(virtual_dc_motor_generate_messages virtual_dc_motor_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv" NAME_WE)
add_dependencies(virtual_dc_motor_generate_messages_eus _virtual_dc_motor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_dc_motor_geneus)
add_dependencies(virtual_dc_motor_geneus virtual_dc_motor_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_dc_motor_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(virtual_dc_motor
  "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_dc_motor
)

### Generating Module File
_generate_module_lisp(virtual_dc_motor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_dc_motor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(virtual_dc_motor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(virtual_dc_motor_generate_messages virtual_dc_motor_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv" NAME_WE)
add_dependencies(virtual_dc_motor_generate_messages_lisp _virtual_dc_motor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_dc_motor_genlisp)
add_dependencies(virtual_dc_motor_genlisp virtual_dc_motor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_dc_motor_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(virtual_dc_motor
  "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_dc_motor
)

### Generating Module File
_generate_module_nodejs(virtual_dc_motor
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_dc_motor
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(virtual_dc_motor_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(virtual_dc_motor_generate_messages virtual_dc_motor_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv" NAME_WE)
add_dependencies(virtual_dc_motor_generate_messages_nodejs _virtual_dc_motor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_dc_motor_gennodejs)
add_dependencies(virtual_dc_motor_gennodejs virtual_dc_motor_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_dc_motor_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(virtual_dc_motor
  "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_dc_motor
)

### Generating Module File
_generate_module_py(virtual_dc_motor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_dc_motor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(virtual_dc_motor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(virtual_dc_motor_generate_messages virtual_dc_motor_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/magda/catkin_ws/src/scorpio_zadanie_rekrutacyjne_software/srv/getMotorJointsLengths.srv" NAME_WE)
add_dependencies(virtual_dc_motor_generate_messages_py _virtual_dc_motor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(virtual_dc_motor_genpy)
add_dependencies(virtual_dc_motor_genpy virtual_dc_motor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS virtual_dc_motor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_dc_motor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/virtual_dc_motor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(virtual_dc_motor_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_dc_motor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/virtual_dc_motor
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(virtual_dc_motor_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_dc_motor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/virtual_dc_motor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(virtual_dc_motor_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_dc_motor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/virtual_dc_motor
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(virtual_dc_motor_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_dc_motor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_dc_motor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/virtual_dc_motor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(virtual_dc_motor_generate_messages_py std_msgs_generate_messages_py)
endif()
