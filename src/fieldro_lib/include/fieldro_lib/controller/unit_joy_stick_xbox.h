
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
    JoyStickXbox(std::string config_file, std::string session);
    virtual ~JoyStickXbox();

//    void start();                       // 조이스틱 노드 실행 시작            
    void stop();                        // 조이스틱 노드 실행 종료         

  protected:
    virtual void update();              // object main loop
    virtual void load_option(std::string config_file);  // option load 

  protected:
    ros::NodeHandle _node_handler;      // ROS 노드 핸들
//    ros::Publisher joy_pub_;            // Joy 메시지 발행자
    ros::Publisher _publish_joystick;   // 조이스틱 메시지 발행자
    
    //ros::Timer _publish_timer;          // 주기적 발행을 위한 타이머

    std::string _device_name;           // 조이스틱 디바이스 Name(경로) (예: /dev/input/js0)
    bool _connected;                 // 조이스틱 연결 상태 플래그
    double _deadzone;                   // 데드존 값 (0.0 ~ 1.0)
    double _autorepeat_rate;            // 상태 발행 주기 (Hz)
    sensor_msgs::Joy _joystick_msg;          // 발행할 Joy 메시지

    //std::thread _joystick_thread;       // 조이스틱 이벤트 처리 쓰레드
    //bool _should_run;                   // 쓰레드 실행 제어 플래그
    int _joy_fd;                        // 조이스틱 파일 디스크립터

  protected:
    //void load_parameters();
    void validate_parameters();
    double apply_deadzone(double value);
    void close_joystick();

    bool open_joystick();
    void joystick_event_loop();

    void process_joystick_event(const js_event& event);
    void process_button_event(const js_event& event);
    void process_axis_event(const js_event& event);
    //void publish_timer_callback(const ros::TimerEvent&);
    void publish_joystick_msg();
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