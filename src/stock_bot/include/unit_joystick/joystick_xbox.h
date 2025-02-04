
#pragma once

#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <linux/joystick.h>
#include <fcntl.h>
#include <unistd.h>
#include <thread>
#include <fieldro_lib/unit/unit.h>

// sensor_msgs/Joy.msg
// Header header
// float32[] axes      # 각 축의 값 (-1.0 ~ 1.0)
// int32[] buttons     # 각 버튼의 값 (0 또는 1)

namespace frb
{
  /**
  * @author		Fieldro : haloc@fieldro.tech, haloc74@gmail.com
  * @date			25-01-23
  * @brief		Xbox 조이스틱 제어 클래스
  * @note			PS3 message로 변환하지 않고 XBOX 조이스틱 메시지 그대로 발행
  *           변환이 필요 할 경우 추후 wrapper 클래스를 만들어서 사용
  * @details	
  * @see			sensor_msgs/Joy.msg
  */
  class JoyStickXbox : public Unit
  {
  public:
    JoyStickXbox(std::string msg_space, std::string config_file, std::string session);
    virtual ~JoyStickXbox();

  protected:
    virtual void update();                              // object main loop
    virtual void load_option(std::string config_file);  // option load 
    virtual void subscribe_unit_action(const fieldro_msgs::UnitControl& msg);

    virtual void load_parameters();                     // parameter load

  protected:
    ros::Publisher    _publish_joystick;          // 조이스틱 메시지 발행자
    std::string       _device_name;               // 조이스틱 디바이스 Name(경로) (예: /dev/input/js0)
    double            _deadzone;                  // 데드존 값 (0.0 ~ 1.0)
    int               _file_discriptor;           // 조이스틱 파일 디스크립터 (open된 상태면 3 이상)
    sensor_msgs::Joy  _msg;                       // 발행할 JoyStick 메시지

  protected:
    void    validate_parameters();                // option value 유효성 확인
    double  apply_deadzone(double value);         // stick deadzone 적용

    bool open_discriptor();                       // open joystick file discriptor
    bool read_file_discriptor();                  // read joystick file discriptor                
    void close_discriptor();                      // close joystick file discriptor         

    void joystick_event(const js_event& event);   // joystick event process
    void button_event(const js_event& event);     // button event 처리
    void axis_event(const js_event& event);       // axis event 처리
     
    bool publish_joystick_msg();                  // joystick message publish
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