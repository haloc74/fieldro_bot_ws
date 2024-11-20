# Install script for directory: /home/twinny/fieldro_bot_ws/src/twinny_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/twinny/fieldro_bot_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/twinny_msgs/srv" TYPE FILE FILES
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/MD_Mode.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/StationRecognizerCommand.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PGV_Pub_Control.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/ResetKalmanFilter.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/Kinematics_Mode.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/TempLidarMerger.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/SetInt32.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/getHardwareParam.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/setHardwareParam.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/resetHardwareParam.srv"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/srv/PositionCompensatorCommand.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/twinny_msgs/msg" TYPE FILE FILES
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerRelayCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BatteryReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BumperReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Char_Vector.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DWMRState.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/JoystickStatus.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDControl.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LEDStateReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LinearAngular.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MotorReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PathCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PGVReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2D.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MarkerPose2DArray.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPose2D.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/StationPoseReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Pose3D.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Position.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PowerSavingMode.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SonarReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SwitchReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/Trajectory2.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DoorLockReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SpeedModeReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ConveyorStatusReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TorqueOffModeReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampControl.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/LampStateReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerControl.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BuzzerStateReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletMoveReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLaserControl.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PalletLiftReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ManualArmReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcMissionStateReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RefrigeStateReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SellingStartCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/BarcodeReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/RobotState.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredTrajectory.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/DesiredActualCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PingStatusReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PlcAdditionalCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyLiDARCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyBoardReset.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/SafetyReportV2.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/HardwareReportErrorCode.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorRobotBoard.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPowerBoard.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorMotorError.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacket.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorHeartBeatHz.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorVoltage.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/ObstacleReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/TurnSignalCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/PositionCompensatorReport.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorStowageBoard.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/MonitorPacketStowage.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxLEDCommand.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxControl.msg"
    "/home/twinny/fieldro_bot_ws/src/twinny_msgs/msg/CargoBoxReport.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/twinny_msgs/cmake" TYPE FILE FILES "/home/twinny/fieldro_bot_ws/build/twinny_msgs/catkin_generated/installspace/twinny_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/twinny/fieldro_bot_ws/devel/include/twinny_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/twinny/fieldro_bot_ws/devel/share/roseus/ros/twinny_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/twinny/fieldro_bot_ws/devel/share/common-lisp/ros/twinny_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/twinny/fieldro_bot_ws/devel/share/gennodejs/ros/twinny_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/twinny/fieldro_bot_ws/devel/lib/python2.7/dist-packages/twinny_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/twinny/fieldro_bot_ws/devel/lib/python2.7/dist-packages/twinny_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/twinny/fieldro_bot_ws/build/twinny_msgs/catkin_generated/installspace/twinny_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/twinny_msgs/cmake" TYPE FILE FILES "/home/twinny/fieldro_bot_ws/build/twinny_msgs/catkin_generated/installspace/twinny_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/twinny_msgs/cmake" TYPE FILE FILES
    "/home/twinny/fieldro_bot_ws/build/twinny_msgs/catkin_generated/installspace/twinny_msgsConfig.cmake"
    "/home/twinny/fieldro_bot_ws/build/twinny_msgs/catkin_generated/installspace/twinny_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/twinny_msgs" TYPE FILE FILES "/home/twinny/fieldro_bot_ws/src/twinny_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/twinny_msgs" TYPE DIRECTORY FILES "/home/twinny/fieldro_bot_ws/src/twinny_msgs/include/twinny_msgs/")
endif()

