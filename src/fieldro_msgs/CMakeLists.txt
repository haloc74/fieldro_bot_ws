cmake_minimum_required(VERSION 3.0.2)

## 0. project(package) 정의
project(fieldro_msgs)


## 1 catkin 패키지 찾기
message(STATUS "1. fieldro_msgs package - find_package")
find_package(catkin REQUIRED COMPONENTS
#  roscpp
#  rospy
  std_msgs
  message_generation
)

## 2 msg 폴더로 부터 messages 생성
message(STATUS "2. fieldro_msgs package - message, add and generate")
add_message_files(
  FILES
  Pose.msg
  IOSignal.msg
  unit/UnitActionComplete.msg
  unit/UnitAliveMsg.msg
  unit/UnitControl.msg
  unit/UnitStateMsg.msg
)

## 2.4 종속성을 가진 메세지 및 서비스 생성
generate_messages(
  DEPENDENCIES
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS 
    message_runtime
    std_msgs
)

# include_directories(
# # include
#   ${catkin_INCLUDE_DIRS}
# )
