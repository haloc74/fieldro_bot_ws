
#pragma once

#include <sensor_msgs/Joy.h>
#include <linux/joystick.h>
#include <fcntl.h>
#include <unistd.h>
#include <thread>
#include <functional>

namespace frb
{
  enum class ManualControlType
  {
    None,         // 없음
    Duplicate,    // 중복   (조작하면 안됨)
    Driving,      // 주행
    Breaking,     // Breaking
    Lifting,      // Lifting
    End,          //
  };

  class ManualController
  {
  public:
    ManualController(std::function<void(const sensor_msgs::Joy msg)> joystick_publish_callback);
    ~ManualController();    
    int32_t receive_data(const sensor_msgs::Joy msg);                     // 수신된 Joy 메시지 처리

  protected:
    int32_t _button_count;          // 버튼  갯수
    int32_t _axis_count;            // 축    갯수

    std::function<void(const sensor_msgs::Joy msg)> notify_joystick_msg;  // 조이스틱 메시지 발행 콜백

    bool check_duplicate(const sensor_msgs::Joy& msg);                    // 중복 버튼 체크       
    void initialize_msg(sensor_msgs::Joy& msg);                           // Joy 메시지 초기화                
    ManualControlType get_control_type(const sensor_msgs::Joy& msg);      // 조이스틱 제어 타입 확인

    // 각 부분별 control data 복사
    void copy_driving_data(const sensor_msgs::Joy& msg, sensor_msgs::Joy& info);    // 주행
    void copy_face_data(const sensor_msgs::Joy& msg, sensor_msgs::Joy& info);       // Face Button
    void copy_lifting_data(const sensor_msgs::Joy& msg, sensor_msgs::Joy& info);    // Lifting
  };
}