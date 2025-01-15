
#pragma once

#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <linux/joystick.h>
#include <fcntl.h>
#include <unistd.h>
#include <thread>
#include "unit/unit.h"

// sensor_msgs/Joy.msg
// Header header
// float32[] axes      # 각 축의 값 (-1.0 ~ 1.0)
// int32[] buttons     # 각 버튼의 값 (0 또는 1)

namespace frb
{
  class JoyStickXbox : public Unit
  {
  public:
    JoyStickXbox();
    ~JoyStickXbox();

    void start();
    void stop();

  protected:
    ros::NodeHandle nh_;                // ROS 노드 핸들
    ros::Publisher joy_pub_;            // Joy 메시지 발행자
    ros::Timer publish_timer_;          // 주기적 발행을 위한 타이머

    std::string joy_dev_;              // 조이스틱 디바이스 경로 (예: /dev/input/js0)
    bool is_connected_;                // 조이스틱 연결 상태 플래그
    double deadzone_;                  // 데드존 값 (0.0 ~ 1.0)
    double autorepeat_rate_;           // 상태 발행 주기 (Hz)
    sensor_msgs::Joy joy_msg_;         // 발행할 Joy 메시지

    std::thread joystick_thread_;      // 조이스틱 이벤트 처리 쓰레드
    bool should_run_;                  // 쓰레드 실행 제어 플래그
    int joy_fd_;                       // 조이스틱 파일 디스크립터

  protected:
    void loadParameters();
    void validateParameters();
    double applyDeadzone(double value);

    bool openJoystick();
    void joystickEventLoop();

    void processJoystickEvent(const js_event& event);
    void processButtonEvent(const js_event& event);
    void processAxisEvent(const js_event& event);
    void publishTimerCallback(const ros::TimerEvent&);
  };
}


// int main(int argc, char **argv)
// {
//     ros::init(argc, argv, "simple_joy_node");
    
//     JoyStickXbox joystick;
//     joystick.start();
    
//     ros::spin();
    
//     joystick.stop();
//     return 0;
// }    