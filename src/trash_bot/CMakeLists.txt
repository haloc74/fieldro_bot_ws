cmake_minimum_required(VERSION 3.0.2)

## 0. project(package) 정의
project(trash_bot)


message(STATUS "")
message(STATUS "1. find_package")
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
      nav_msgs
      rosconsole
      roscpp
      rospy
      sensor_msgs
      serial
      std_msgs
      tf
      fieldro_lib
      fieldro_msgs
      twinny_msgs
  )

  find_package(yaml-cpp REQUIRED)
  
  # libmodbus가 find_package로 찾을 수 없어서 pkg-config로 찾는다.
  find_package(PkgConfig REQUIRED)
  pkg_check_modules(MODBUS REQUIRED libmodbus)

  ## 1.1 Python을 사용할 경우 setup.py 파일을 찾아 실행
  ##     이를 사용 하려면 package root에 setup.py 파일이 있어야 한다.
  # catkin_python_setup()


message(STATUS "")
message(STATUS "2. message, service, action add and generate")
message(STATUS "")

  ## 2.1 msg 폴더로 부터 messages 생성
  # add_message_files(
  #   FILES
  # )

  ## 2.2 srv 폴더로 부터 service 생성
  # add_service_files(
  #   FILES
  #   Service1.srv
  #   Service2.srv
  # )

  ## 2.3 action 폴더로 부터 action 생성
  # add_action_files(
  #   FILES
  #   Action1.action
  #   Action2.action
  # )

  ## 2.4 종속성을 가진 메세지 및 서비스 생성
  generate_messages(
    DEPENDENCIES
    geometry_msgs
    sensor_msgs   
    std_msgs   
    fieldro_msgs
    twinny_msgs
  )

message(STATUS "")
message(STATUS "3. define the dependencies of the catkin_package")
message(STATUS "")

catkin_package(
  ## INCLUDE_DIRS include    # package root/include 폴더 : 삭제 가능
  ## DEPENDS system_lib      # system lib 의존성이 없으므로 삭제 가능
  ## LIBRARIES fieldro_lib_temp    # fieldro_lib 라이브러리를 다른 ros package에서 사용할 수 있도록 설정
  CATKIN_DEPENDS           # 현재 package를 빌드하기 위해 필요한 다른 catkin package
      message_runtime
      geometry_msgs 
      nav_msgs 
      roscpp 
      rospy 
      sensor_msgs 
      serial 
      std_msgs 
      tf 
      fieldro_msgs
      twinny_msgs
  )


message(STATUS "")
message(STATUS "4. Include Header")
message(STATUS "")
## include되는 순서 대로 header가 검색이 되므로 추가 순서에 주의 해야 한다.
## 동일한 이름의 header file이 여러 곳에 존재할 경우, 먼저 설정된 경로에 있는 파일이 include된다.
## 그러므로 package 내부의 header file을 먼저 include 하기 위해 package 내부의 경로를 먼저 설정한다.

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

# message(STATUS "")
# message(STATUS "X. fieldro_lib_temp Lib generate")
# message(STATUS "")

  # ## X-1. lib_cpp 하위의 모든 cpp 파일을 찾아서 LIB_SRC_FILES에 저장
  # file(GLOB_RECURSE LIB_SRC_FILES 
  #   ##"${CMAKE_CURRENT_SOURCE_DIR}/src/lib_cpp/log/*.cpp"  
  #   ##"${CMAKE_CURRENT_SOURCE_DIR}/src/lib_cpp/communication/*.cpp"
  #   ##"${CMAKE_CURRENT_SOURCE_DIR}/src/lib_cpp/unit/*.cpp"
  #   ##"${CMAKE_CURRENT_SOURCE_DIR}/src/lib_cpp/helper/*.cpp"
  #   ##"${CMAKE_CURRENT_SOURCE_DIR}/src/lib_cpp/odometry/*.cpp"
  # )

  # ## X-2. LIB_SRC_FILES의 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
  # add_library(fieldro_lib_temp SHARED ${LIB_SRC_FILES})

  # ## X-2. fieldro_lib_temp 빌드 시 메시지 생성 의존성 추가
  # add_dependencies(fieldro_lib_temp
  #   ${${PROJECT_NAME}_EXPORTED_TARGETS}  # 메시지 생성 타겟 의존성 추가
  #   ${catkin_EXPORTED_TARGETS}
  #   fieldro_lib
  # )  

  # ## X-3. 빌드 순서를 정의 (의존성)
  # target_link_libraries(fieldro_lib_temp
  #   ${catkin_LIBRARIES}
  #   ${MODBUS_LIBRARIES}
  #   ${YAML_CPP_LIBRARIES}
  #   fieldro_lib
  # )

  # ## X-4. 빌드시 필요한 include 경로 설정
  # target_include_directories(fieldro_lib_temp PUBLIC
  #   ${CMAKE_CURRENT_SOURCE_DIR}/include
  #   ${CMAKE_CURRENT_SOURCE_DIR}/lib_header
  # )

##-----------------------------------------------------------------------------
##            각 노드별로 설정이 되어야 하는 부분 시작
##-----------------------------------------------------------------------------
message(STATUS "")
message(STATUS "5. set executable")
message(STATUS "")

  ## 5-1. droid 실행파일 생성 설정
  message(STATUS "   5-1. droid_node executable generate")

    ## 5-1-1. src/droid 하위의 모든 cpp 파일을 찾아서 SRC_DROID_FILES 저장
    file(GLOB_RECURSE SRC_DROID_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/droid/*.cpp")

    ## 5-1-2. SRC_DROID_FILES 모든 파일을 컴파일하고 링크하여 실행 파일 생성 하도록 설정
    add_executable(
      ${PROJECT_NAME}
      ${SRC_DROID_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/droid_node.cpp"
    )

    ## 5-1-3. 빌드 순서를 정의 (의존성)
    ## 뒤쪽에 있는 package가 먼저 build 된다.
    ## ${catkin_EXPORTED_TARGETS}->  ${${PROJECT_NAME}_EXPORTED_TARGETS}  -> ${PROJECT_NAME} 순으로 빌드
    add_dependencies(
      ${PROJECT_NAME}                      # 빌드 대상 (가장 최후에 빌드)
      ${${PROJECT_NAME}_EXPORTED_TARGETS}  # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}           # catkin 빌드 시스템에서 정의한 빌드 대상
    )

    message(STATUS "   5-1-4-0")
    ## 5-1-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_NAME}                     # 빌드 대상
      ${catkin_LIBRARIES}                 # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}               # yaml-cpp 라이브러리
      fieldro_lib
      ## fieldro_lib_temp                         # 
    )
    message(STATUS "   5-1-4-1")

  ## 5-2. io_unit_node 실행파일 생성 설정
  message(STATUS "   5-2. io_unit_node executable generate")

    ## 5-2-0 project name 설정
    set(PROJECT_IO_NAME "io_unit")

    ## 5-2-1. source_dir/omnibot_io 하위의 모든 cpp 파일을 찾아서 SRC_IO_FILES에 저장
    file(GLOB_RECURSE SRC_IO_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/io_unit/*.cpp")

    ## 5-2-2. SRC_IO_FILES의 모든 파일과 node_io_signal.cpp을 컴파일하고 링크하여 실행 파일 생성
    add_executable(
      ${PROJECT_IO_NAME}
      ${SRC_IO_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/io_node.cpp"
    )

    ## 5-2-3. 빌드 순서를 정의 (의존성)
    add_dependencies(
      ${PROJECT_IO_NAME}                   # 빌드 대상
      ${${PROJECT_NAME}_EXPORTED_TARGETS}  # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}           # catkin 빌드 시스템에서 정의한 빌드 대상
    )

    ## 5-2-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_IO_NAME}                   # 빌드 대상
      ${catkin_LIBRARIES}                  # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}                # yaml-cpp 라이브러리
      ${MODBUS_LIBRARIES}                  # libmodbus 라이브러리
      fieldro_lib
      ## fieldro_lib_temp                          # fieldro   라이브러리
    )

  ############################################################
  ## 5-3. unit_observer_node 실행파일 생성 설정
  message(STATUS "   5-3. unit_observer_node executable generate")

    ## 5-3-0 project name 설정
    set(PROJECT_OBSERVER_NAME "observer_unit")

    ## 5-3-1. source_dir/unit_observer 하위의 모든 cpp 파일을 찾아서 SRC_OBSERVER_FILES에 저장
    file(GLOB_RECURSE SRC_OBSERVER_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/observer_unit/*.cpp")

    ## 5-3-2. SRC_OBSERVER_FILES의 모든 파일과 
    ## observer_node.cpp을 컴파일하고 링크하여 실행 파일 생성
    add_executable(
      ${PROJECT_OBSERVER_NAME}
      ${SRC_OBSERVER_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/observer_node.cpp"
    )

    ## 5-3-3. 빌드 순서를 정의 (의존성)
    add_dependencies(
      ${PROJECT_OBSERVER_NAME}             # 빌드 대상
      ${${PROJECT_NAME}_EXPORTED_TARGETS}  # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}           # catkin 빌드 시스템에서 정의한 빌드 대상
    )

    ## 5-3-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_OBSERVER_NAME}             # 빌드 대상
      ${catkin_LIBRARIES}                  # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}                # yaml-cpp 라이브러리
      ${MODBUS_LIBRARIES}                  # libmodbus 라이브러리
      fieldro_lib
      ## fieldro_lib_temp                          # fieldro   라이브러리
    )    


  ############################################################
  ## 5-4. loader_node 실행파일 생성 설정
  message(STATUS "   5-4. loader_node executable generate")

    ## 5-4-0 project name 설정
    set(PROJECT_LOADER_NAME "loader_unit")

    ## 5-4-1. source_dir/loader_unit 하위의 모든 cpp 파일을 찾아서 SRC_LOADER_FILES에 저장
    file(GLOB_RECURSE SRC_LOADER_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/loader_unit/*.cpp")

    ## 5-4-2. SRC_LOADER_FILES의 모든 파일과 
    ## loader_node.cpp을 컴파일하고 링크하여 실행 파일 생성
    add_executable(
      ${PROJECT_LOADER_NAME}
      ${SRC_LOADER_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/loader_node.cpp"
    )

    ## 5-4-3. 빌드 순서를 정의 (의존성)
    add_dependencies(
      ${PROJECT_LOADER_NAME}               # 빌드 대상
      ${${PROJECT_NAME}_EXPORTED_TARGETS}  # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}           # catkin 빌드 시스템에서 정의한 빌드 대상
    )

    ## 5-4-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_LOADER_NAME}               # 빌드 대상
      ${catkin_LIBRARIES}                  # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}                # yaml-cpp 라이브러리
      ${MODBUS_LIBRARIES}                  # libmodbus 라이브러리
      fieldro_lib
      ## fieldro_lib_temp                          # fieldro   라이브러리
    )
    
  ############################################################
  ## 5-5. driving_node 실행파일 생성 설정
  message(STATUS "   5-5. driving_node executable generate")

    ## 5-5-0 project name 설정
    set(PROJECT_DRIVING_NAME "driving_unit")

    ## 5-5-1. source_dir/driving_unit 하위의 모든 cpp 파일을 찾아서 SRC_DRIVING_FILES에 저장
    file(GLOB_RECURSE SRC_DRIVING_FILES "${CMAKE_CURRENT_SOURCE_DIR}/src/driving_unit/*.cpp")

    ## 5-5-2. SRC_DRIVING_FILES의 모든 파일과 
    ## driving_node.cpp을 컴파일하고 링크하여 실행 파일 생성
    add_executable(
      ${PROJECT_DRIVING_NAME}
      ${SRC_DRIVING_FILES}
      "${CMAKE_CURRENT_SOURCE_DIR}/src/_node/driving_node.cpp"
    )

    ## 5-5-3. 빌드 순서를 정의 (의존성)
    add_dependencies(
      ${PROJECT_DRIVING_NAME}              # 빌드 대상
      ${${PROJECT_NAME}_EXPORTED_TARGETS}  # package 내부의 다른 빌드 대상
      ${catkin_EXPORTED_TARGETS}           # catkin 빌드 시스템에서 정의한 빌드 대상
    )

    ## 5-5-4. 빌드시 필요한 Lib 링크 설정
    target_link_libraries(
      ${PROJECT_DRIVING_NAME}              # 빌드 대상
      ${catkin_LIBRARIES}                  # catkin 빌드 시스템에서 정의한 라이브러리
      ${YAML_CPP_LIBRARIES}                # yaml-cpp 라이브러리
      ${MODBUS_LIBRARIES}                  # libmodbus 라이브러리
      fieldro_lib
      ## fieldro_lib_temp                          # fieldro   라이브러리
    )    


## =============================================================================
##            각 노드별로 설정이 되어야 하는 부분 종료
## =============================================================================

message(STATUS "")
message(STATUS "6. set install")
message(STATUS "")

  ## 빌드된 Target을 설치할 위치를 지정
  install(
    TARGETS ${PROJECT_NAME}                               # 설치할 target 지정            
            ${PROJECT_IO_NAME} 
            ${PROJECT_OBSERVER_NAME}
            # ${PROJECT_LOADER_NAME} 
            # fieldro_lib    
    ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION} # 정적 라이브러리 설치 위치 지정 (lib dir /.a 파일)
    LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION} # 동적 라이브러리 설치 위치 지정 (lib dir /.so 파일)
    RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION} # 실행파일 설치 위치 지정        (bin dir /실행파일)
  )


message(STATUS "")
message(STATUS "7. set copy file")
message(STATUS "")

  ## include 폴더에 있는 헤더파일을 찾아서 catkin_package()에서 지정한 위치에 설치(복사)
  install(DIRECTORY 
    include/
    lib_header/
    DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}   # include 폴더에 복사
    FILES_MATCHING PATTERN "*.h"                        # .h 파일만 복사
    # USE_SOURCE_PERMISSIONS                            # 복사된 파일의 권한을 원본 파일의 권한으로 설정
  )


message(STATUS "")
message(STATUS "8. set etc file copy [config, data, ,,, files]")
message(STATUS "")

  ## 8-1. config 폴더에 복사할 파일이 있는지 확인하고 CONFIG_FILES에 저장합니다.
  file(GLOB_RECURSE COPY_FILES RELATIVE ${PROJECT_SOURCE_DIR} "config/*")

  ## 8-2 config_files 타겟을 추가하고 config 파일들을 종속성으로 지정
  # copy_files : 각 package 별로 이름을 다르게 해줘야 충돌이 발생하지 않음
  add_custom_target(trash_bot_copy_files ALL DEPENDS ${COPY_FILES})

  # 8-3 타겟 실행 시 파일들을 복사하는 명령어를 추가
  add_custom_command(TARGET trash_bot_copy_files
      POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy_directory
      ##${CMAKE_CURRENT_SOURCE_DIR}/config ${CMAKE_CURRENT_BINARY_DIR}/config
      ${CMAKE_CURRENT_SOURCE_DIR}/config ${CATKIN_DEVEL_PREFIX}/lib/${PROJECT_NAME}/config
  )

message(STATUS "")
message(STATUS "BUILD FINISH")
message(STATUS "")
message(STATUS "")
message(STATUS "")
