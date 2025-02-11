
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
    Steering,     // Steering
    Lifting,      // Lifting
    End,          //
  };

  class ManualController
  {
  public:
    ManualController(std::function<void(const sensor_msgs::Joy msg)> joystick_publish_callback);

    ~ManualController();

    std::function<void(const sensor_msgs::Joy msg)> notify_joystick_msg;
    int32_t receive_data(const sensor_msgs::Joy msg);

    void initialize_msg(sensor_msgs::Joy& msg);
    ManualControlType get_control_type(const sensor_msgs::Joy& msg);
    bool check_duplicate(const sensor_msgs::Joy& msg);
  };
}