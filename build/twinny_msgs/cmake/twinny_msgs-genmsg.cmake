# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "twinny_msgs: 70 messages, 11 services")

set(MSG_I_FLAGS "-Itwinny_msgs:/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(twinny_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg" "twinny_msgs/RobotState:twinny_msgs/Pose3D:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg" "sensor_msgs/Range:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg" "twinny_msgs/Position:twinny_msgs/Pose3D:twinny_msgs/DWMRState:twinny_msgs/LinearAngular:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg" "geometry_msgs/Pose2D:geometry_msgs/Vector3:geometry_msgs/Twist:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg" "std_msgs/Header:twinny_msgs/Pose3D:twinny_msgs/LinearAngular"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg" "geometry_msgs/Pose2D:twinny_msgs/MarkerPose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg" "twinny_msgs/Pose3D:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv" ""
)

get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg" NAME_WE)
add_custom_target(_twinny_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "twinny_msgs" "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)

### Generating Services
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_cpp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
)

### Generating Module File
_generate_module_cpp(twinny_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(twinny_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(twinny_msgs_generate_messages twinny_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_cpp _twinny_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(twinny_msgs_gencpp)
add_dependencies(twinny_msgs_gencpp twinny_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS twinny_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_msg_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)

### Generating Services
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)
_generate_srv_eus(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
)

### Generating Module File
_generate_module_eus(twinny_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(twinny_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(twinny_msgs_generate_messages twinny_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_eus _twinny_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(twinny_msgs_geneus)
add_dependencies(twinny_msgs_geneus twinny_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS twinny_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_msg_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)

### Generating Services
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)
_generate_srv_lisp(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
)

### Generating Module File
_generate_module_lisp(twinny_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(twinny_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(twinny_msgs_generate_messages twinny_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_lisp _twinny_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(twinny_msgs_genlisp)
add_dependencies(twinny_msgs_genlisp twinny_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS twinny_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_msg_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)

### Generating Services
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)
_generate_srv_nodejs(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
)

### Generating Module File
_generate_module_nodejs(twinny_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(twinny_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(twinny_msgs_generate_messages twinny_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_nodejs _twinny_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(twinny_msgs_gennodejs)
add_dependencies(twinny_msgs_gennodejs twinny_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS twinny_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Range.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg"
  "${MSG_I_FLAGS}"
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_msg_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)

### Generating Services
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)
_generate_srv_py(twinny_msgs
  "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
)

### Generating Module File
_generate_module_py(twinny_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(twinny_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(twinny_msgs_generate_messages twinny_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg" NAME_WE)
add_dependencies(twinny_msgs_generate_messages_py _twinny_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(twinny_msgs_genpy)
add_dependencies(twinny_msgs_genpy twinny_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS twinny_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/twinny_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(twinny_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(twinny_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(twinny_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/twinny_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(twinny_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(twinny_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(twinny_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/twinny_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(twinny_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(twinny_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(twinny_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/twinny_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(twinny_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(twinny_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(twinny_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/twinny_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(twinny_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(twinny_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(twinny_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
