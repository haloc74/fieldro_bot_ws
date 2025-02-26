cmake_minimum_required(VERSION 3.0.2)

## 0. project(package) 정의
project(stock_bot)

# 컴파일시 모든 최적화 옵션 끄기
if(CMAKE_BUILD_TYPE MATCHES Debug)
    add_compile_options(-O0)  # 모든 최적화 비활성화
    add_compile_options(-g)   # 디버그 정보 추가
endif()

message(STATUS "")
message(STATUS "${PROJECT_NAME} : Start CMakeLists.txt")
message(STATUS "${PROJECT_NAME} : Step 01.find_package")
message(STATUS "")

## catkin package를 찾고 찾지 못하면 에러를 발생.
## geometry_msgs, message_generation 등의 package를 찾지만 없어도 에러를 발생하지 않음.
## 개별 package가 catkin package로 만들어 졌다면 찾을 수 있다.
## package.xml과 연동 되어야 하며 추가되는 항목에 대하여 xml 파일에
## <build_depend>name?</build_depend> 
## <exec_depend>name?</exec_depend>   두개의 항목을 추가해야 한다.
find_package(catkin 
  REQUIRED COMPONENTS
    geometry_msgs
    message_generation
    rosconsole
    roscpp
    rospy
    sensor_msgs
    std_msgs
    fieldro_lib
    fieldro_msgs    
    twinny_msgs
)

find_package(yaml-cpp REQUIRED)
  
# libmodbus가 find_package로 찾을 수 없어서 pkg-config로 찾는다.
find_package(PkgConfig REQUIRED)
pkg_check_modules(MODBUS REQUIRED libmodbus)
message(STATUS "${PROJECT_NAME} : End Step 01")

message(STATUS " ")
message(STATUS "${PROJECT_NAME} : Step 02.message, service, action add and generate")
## Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   Message.msg
# )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
# )

## 종석성을 가진 메세지 및 서비스 등록
generate_messages(
    DEPENDENCIES
    geometry_msgs
    sensor_msgs    
    std_msgs   
    fieldro_msgs
    twinny_msgs
)
message(STATUS "${PROJECT_NAME} : End Step 02")


message(STATUS " ")
message(STATUS "${PROJECT_NAME} : Step 03.catin_package 종속성 설정")

  catkin_package(
    # INCLUDE_DIRS include
    CATKIN_DEPENDS              # catkin package 종속성 설정    
      roscpp
      rospy
      std_msgs
      fieldro_lib
      fieldro_msgs      
      twinny_msgs
    DEPENDS 
      yaml-cpp            # yaml lib 의존성 설정
      MODBUS              # libmodbus 의존성 설정
  )

message(STATUS "${PROJECT_NAME} : End Step 03")


message(STATUS " ")
message(STATUS "${PROJECT_NAME} : BUILD START")
message(STATUS "${PROJECT_NAME} : Step 04.Include Directories")
## include되는 순서 대로 header가 검색이 되므로 추가 순서에 주의 해야 한다.
## 동일한 이름의 header file이 여러 곳에 존재할 경우, 먼저 설정된 경로에 있는 파일이 include된다.
## 그러므로 package 내부의 header file을 먼저 include 하기 위해 package 내부의 경로를 먼저 설정한다

  ## 4-1. package root include 폴더 추가
  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

  ## 4-2. package root include 폴더의 모든 하위 폴더 추가
  function(add_subdirectories_recursive)
      file(GLOB_RECURSE CHILDREN LIST_DIRECTORIES TRUE ${CMAKE_CURRENT_SOURCE_DIR}/include/*)
      foreach(CHILD ${CHILDREN})
          if(IS_DIRECTORY ${CHILD})
              message(STATUS "Adding directory: ${CHILD}")
              include_directories(${CHILD})
          endif()
      endforeach()
  endfunction()
  add_subdirectories_recursive()

  ## 4-3. 전역 include 폴더 추가
  include_directories(
    include
    lib_header
    ${catkin_INCLUDE_DIRS}    # catkin 빌드 시스템에서 정의한 include 경로
    ${YAML_CPP_INCLUDE_DIRS}
    ${MODBUS_INCLUDE_DIRS}
  )
message(STATUS "${PROJECT_NAME} : End Step 04")    



##-----------------------------------------------------------------------------
##            stock_bot package Lib generate
##-----------------------------------------------------------------------------
message(STATUS "")
message(STATUS "X. stock_bot package Lib generate")
message(STATUS "")

  set(PACKAGE_LIB "stock_bot_lib")

  ## X-1. lib_cpp 하위의 모든 cpp 파일을 찾아서 LIB_SRC_FILES에 저장
  file(GLOB_RECURSE LIB_SRC_FILES 
    "${CMAKE_CURRENT_SOURCE_DIR}/src/package/*.cpp"  
  )

  ## X-2. LIB_SRC_FILES의 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
  add_library(${PACKAGE_LIB} SHARED ${LIB_SRC_FILES})

  ## X-2. fieldro_lib_temp 빌드 시 메시지 생성 의존성 추가
  add_dependencies(${PACKAGE_LIB}
    ${${PROJECT_NAME}_EXPORTED_TARGETS}  # 메시지 생성 타겟 의존성 추가
    ${catkin_EXPORTED_TARGETS}
    fieldro_lib
  )  

  ## X-3. 빌드 순서를 정의 (의존성)
  target_link_libraries(${PACKAGE_LIB}
    ${catkin_LIBRARIES}
    ${MODBUS_LIBRARIES}
    ${YAML_CPP_LIBRARIES}
    fieldro_lib
  )

  ## X-4. 빌드시 필요한 include 경로 설정
  target_include_directories(${PACKAGE_LIB} PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
#    ${CMAKE_CURRENT_SOURCE_DIR}/lib_header
  )


##-----------------------------------------------------------------------------
##            각 노드별로 설정이 되어야 하는 부분 시작
##-----------------------------------------------------------------------------
message(STATUS " ")
message(STATUS "${PROJECT_NAME} : Step 05.node build")

  ############################################################
  ## 5-1. droid node 실행파일 설정
  message(STATUS "${PROJECT_NAME} : Step 05-1. droid executable build")

    ## 5-1-1. src/droid 하위의 모든 cpp 파일을 찾아서 SRC_DROID_FILES 저장
    file(GLOB_RECURSE SRC_DROID_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/droid/*.cpp")

    ## 5-1-2. SRC_DROID_FILES 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
    add_executable(
      ${PROJECT_NAME}
      ${SRC_DROID_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/_droid.cpp"
    )

    ## 5-1-3. 빌드 순서를 정의 (의존성)
    ## 뒤쪽에 있는 package가 먼저 build 된다.
    ## ${catkin_EXPORTED_TARGETS}->  ${${PROJECT_NAME}_EXPORTED_TARGETS}  -> ${PROJECT_NAME} 순으로 빌드
    add_dependencies(
      ${PROJECT_NAME}                      # 빌드 대상 (가장 최후에 빌드)
      ${${PROJECT_NAME}_EXPORTED_TARGETS}  # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}           # catkin 빌드 시스템에서 정의한 빌드 대상
      fieldro_msgs_generate_messages_cpp
    )

    ## 5-1-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_NAME}                     # 빌드 대상
      ${catkin_LIBRARIES}                 # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}               # yaml-cpp 라이브러리
      fieldro_lib
      ${PACKAGE_LIB}                      # stock_bot package 자체 라이브러리
    )
  message(STATUS "${PROJECT_NAME} : End Step 05-1")
  ############################################################

  ############################################################
  ## 5-2. observer node 실행파일 설정
  message(STATUS "${PROJECT_NAME} : Step 05-2. observer executable build")
    
    ## 5-2-0. observer node 실행파일 이름 설정
    set(PROJECT_OBSERVER "observer")

    ## 5-2-1. src/unit_observer 하위의 모든 cpp 파일을 찾아서 SRC_OBSERVER_FILES 저장
    file(GLOB_RECURSE SRC_OBSERVER_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/unit_observer/*.cpp")

    ## 5-2-2. SRC_OBSERVER_FILES 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
    add_executable(
      ${PROJECT_OBSERVER}
      ${SRC_OBSERVER_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/observer.cpp"
    )

    ## 5-2-3. 빌드 순서를 정의 (의존성)
    ## 뒤쪽에 있는 package가 먼저 build 된다.
    ## ${catkin_EXPORTED_TARGETS}->  ${${PROJECT_NAME}_EXPORTED_TARGETS}  -> ${PROJECT_NAME} 순으로 빌드
    add_dependencies(
      ${PROJECT_OBSERVER}                     # 빌드 대상 (가장 최후에 빌드)
      ${${PROJECT_NAME}_EXPORTED_TARGETS}     # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}              # catkin 빌드 시스템에서 정의한 빌드 대상
      fieldro_msgs_generate_messages_cpp
    )

    ## 5-2-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_OBSERVER}                 # 빌드 대상
      ${catkin_LIBRARIES}                 # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}               # yaml-cpp 라이브러리
      fieldro_lib
      ${PACKAGE_LIB}                      # stock_bot package 자체 라이브러리
    )
  message(STATUS "${PROJECT_OBSERVER} : End Step 05-2")  
  ############################################################

  ############################################################
  ## 5-3. io node 실행파일 설정
  message(STATUS "${PROJECT_NAME} : Step 05-3. io executable build")
    
    ## 5-3-0. observer node 실행파일 이름 설정
    set(PROJECT_IO "io")

    ## 5-3-1. src/unit_observer 하위의 모든 cpp 파일을 찾아서 SRC_IO_FILES 저장
    file(GLOB_RECURSE SRC_IO_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/unit_io/*.cpp")

    ## 5-3-2. SRC_IO 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
    add_executable(
      ${PROJECT_IO}
      ${SRC_IO_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/io.cpp"
    )

    ## 5-3-3. 빌드 순서를 정의 (의존성)
    ## 뒤쪽에 있는 package가 먼저 build 된다.
    ## ${catkin_EXPORTED_TARGETS}->  ${${PROJECT_NAME}_EXPORTED_TARGETS}  -> ${PROJECT_NAME} 순으로 빌드
    add_dependencies(
      ${PROJECT_IO}                     # 빌드 대상 (가장 최후에 빌드)
      ${${PROJECT_NAME}_EXPORTED_TARGETS}     # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}              # catkin 빌드 시스템에서 정의한 빌드 대상
      fieldro_msgs_generate_messages_cpp
    )

    ## 5-3-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_IO}                 # 빌드 대상
      ${catkin_LIBRARIES}                 # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}               # yaml-cpp 라이브러리
      fieldro_lib
      ${PACKAGE_LIB}                      # stock_bot package 자체 라이브러리
    )
  message(STATUS "${PROJECT_IO} : End Step 05-3")  
  ############################################################

  ############################################################
  ## 5-4. driving node 실행파일 설정
  message(STATUS "${PROJECT_NAME} : Step 05-4. driving executable build")
    
    ## 5-3-0. driving node 실행파일 이름 설정
    set(PROJECT_DRIVING "driving")

    ## 5-4-1. src/unit_driving 하위의 모든 cpp 파일을 찾아서 SRC_DRIVING_FILES 저장
    file(GLOB_RECURSE SRC_DRIVING_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/unit_driving/*.cpp")
    # # 누락된 파일 명시적으로 추가
    # list(APPEND SRC_DRIVING_FILES 
    # "${CMAKE_CURRENT_SOURCE_DIR}/src/unit_driving/driving_action.cpp"
    # "${CMAKE_CURRENT_SOURCE_DIR}/src/unit_driving/driving_motor.cpp"
    # )

    ## 5-4-2. SRC_DRIVING_FILES 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
    add_executable(
      ${PROJECT_DRIVING}
      ${SRC_DRIVING_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/driving.cpp"
    )

    ## 5-4-3. 빌드 순서를 정의 (의존성)
    ## 뒤쪽에 있는 package가 먼저 build 된다.
    ## ${catkin_EXPORTED_TARGETS}->  ${${PROJECT_NAME}_EXPORTED_TARGETS}  -> ${PROJECT_NAME} 순으로 빌드
    add_dependencies(
      ${PROJECT_DRIVING}                      # 빌드 대상 (가장 최후에 빌드)
      ${${PROJECT_NAME}_EXPORTED_TARGETS}     # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}              # catkin 빌드 시스템에서 정의한 빌드 대상
      fieldro_msgs_generate_messages_cpp
    )

    ## 5-3-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_DRIVING}                 # 빌드 대상
      ${catkin_LIBRARIES}                 # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}               # yaml-cpp 라이브러리
      fieldro_lib
      ${PACKAGE_LIB}                      # stock_bot package 자체 라이브러리
    )
  message(STATUS "${PROJECT_DRIVING} : End Step 05-4")  
  ############################################################  


  ############################################################
  ## 5-5. lift node 실행파일 설정
  message(STATUS "${PROJECT_NAME} : Step 05-5. lift executable build")
    
    ## 5-5-0. lift node 실행파일 이름 설정
    set(PROJECT_LIFT "lift")

    ## 5-5-1. src/unit_lift 하위의 모든 cpp 파일을 찾아서 SRC_LIFT_FILES 저장
    file(GLOB_RECURSE SRC_LIFT_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/unit_lift/*.cpp")

    ## 5-5-2. SRC_DRIVING_FILES 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
    add_executable(
      ${PROJECT_LIFT}
      ${SRC_LIFT_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/lift.cpp"
    )

    ## 5-5-3. 빌드 순서를 정의 (의존성)
    ## 뒤쪽에 있는 package가 먼저 build 된다.
    ## ${catkin_EXPORTED_TARGETS}->  ${${PROJECT_NAME}_EXPORTED_TARGETS}  -> ${PROJECT_NAME} 순으로 빌드
    add_dependencies(
      ${PROJECT_LIFT}                      # 빌드 대상 (가장 최후에 빌드)
      ${${PROJECT_NAME}_EXPORTED_TARGETS}     # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}              # catkin 빌드 시스템에서 정의한 빌드 대상
      fieldro_msgs_generate_messages_cpp
    )

    ## 5-5-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_LIFT}                 # 빌드 대상
      ${catkin_LIBRARIES}                 # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}               # yaml-cpp 라이브러리
      fieldro_lib
      ${PACKAGE_LIB}                      # stock_bot package 자체 라이브러리
    )
  message(STATUS "${PROJECT_DRIVING} : End Step 05-5")  
  ############################################################    


  ############################################################
  ## 5-6. joystick node 실행파일 설정
  message(STATUS "${PROJECT_NAME} : Step 05-6. joystick executable build")
    
    ## 5-6-0. joystick node 실행파일 이름 설정
    set(PROJECT_JOYSTICK "joystick")

    ## 5-6-1. src/unit_jostick 하위의 모든 cpp 파일을 찾아서 SRC_LIFT_FILES 저장
    file(GLOB_RECURSE SRC_JOYSTICK_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/unit_joystick/*.cpp")

    ## 5-6-2. SRC_JOYSTICK_FILES 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
    add_executable(
      ${PROJECT_JOYSTICK}
      ${SRC_JOYSTICK_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/joystick.cpp"
    )

    ## 5-6-3. 빌드 순서를 정의 (의존성)
    ## 뒤쪽에 있는 package가 먼저 build 된다.
    ## ${catkin_EXPORTED_TARGETS}->  ${${PROJECT_NAME}_EXPORTED_TARGETS}  -> ${PROJECT_NAME} 순으로 빌드
    add_dependencies(
      ${PROJECT_JOYSTICK}                     # 빌드 대상 (가장 최후에 빌드)
      ${${PROJECT_NAME}_EXPORTED_TARGETS}     # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}              # catkin 빌드 시스템에서 정의한 빌드 대상
      fieldro_msgs_generate_messages_cpp
    )

    ## 5-6-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_JOYSTICK}                 # 빌드 대상
      ${catkin_LIBRARIES}                 # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}               # yaml-cpp 라이브러리
      fieldro_lib
      ${PACKAGE_LIB}                      # stock_bot package 자체 라이브러리
    )
  message(STATUS "${PROJECT_JOYSTICK} : End Step 05-6")  
  ############################################################      


message(STATUS "${PROJECT_NAME} : End Step 05")

##-----------------------------------------------------------------------------
##            각 노드별로 설정이 되어야 하는 부분 종료
##-----------------------------------------------------------------------------



message(STATUS " ")
message(STATUS "${PROJECT_NAME} : Step 06. Set Install ")
  ## 빌드된 Target을 설치할 위치를 지정
  install(
    #TARGETS ${PROJECT_NAME}                               # 설치할 target 지정            
    TARGETS ${PROJECT_OBSERVER}                           # 설치할 target 지정
    ${PACKAGE_LIB}                                        # stock_bot package 자체 라이브러리
    ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION} # 정적 라이브러리 설치 위치 지정 (lib dir /.a 파일)
    LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION} # 동적 라이브러리 설치 위치 지정 (lib dir /.so 파일)
    RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION} # 실행파일 설치 위치 지정        (bin dir /실행파일)
  )
message(STATUS "${PROJECT_NAME} : End Step 06")



message(STATUS " ")
message(STATUS "${PROJECT_NAME} : Step 07. Set Copy Include")

  ## include 폴더에 있는 헤더파일을 찾아서 catkin_package()에서 지정한 위치에 설치(복사)
  install(DIRECTORY 
          include/
          lib_header/
          DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}   # include 폴더에 복사
          FILES_MATCHING PATTERN "*.h"                        # .h 파일만 복사
          # USE_SOURCE_PERMISSIONS                            # 복사된 파일의 권한을 원본 파일의 권한으로 설정
          )

message(STATUS "${PROJECT_NAME} : End Step 07")


message(STATUS " ")
message(STATUS "${PROJECT_NAME} : Step 08. Set Etc Files Copy")
  ## 8-1. config 폴더에 복사할 파일이 있는지 확인하고 CONFIG_FILES에 저장합니다.
  file(GLOB_RECURSE COPY_FILES RELATIVE ${PROJECT_SOURCE_DIR} "config/*")

  ## 8-2 config_files 타겟을 추가하고 config 파일들을 종속성으로 지정
  # copy_files : 각 package 별로 이름을 다르게 해줘야 충돌이 발생하지 않음
  add_custom_target(stock_bot_copy_files ALL DEPENDS ${COPY_FILES})

  # 8-3 타겟 실행 시 파일들을 복사하는 명령어를 추가
  add_custom_command(TARGET stock_bot_copy_files
      POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy_directory
      ${CMAKE_CURRENT_SOURCE_DIR}/config ${CATKIN_DEVEL_PREFIX}/lib/${PROJECT_NAME}/config
  )
message(STATUS "${PROJECT_NAME} : End Step 08")

message(STATUS " ")
message(STATUS " ${PROJECT_NAME} : BUILD END")
message(STATUS " ")
message(STATUS " ")


# message(STATUS " ")
# message(STATUS "${PROJECT_NAME} : Step ??. ")
# message(STATUS "${PROJECT_NAME} : End Step ??")


