
#include "driving.h"

namespace frb
{
  /**
  * @brief      속도 제어 subscriber callback
  * @param[in]  const geometry_msgs::Twist &twist_msg : 속도 제어 메세지
  * @return     void
  * @note       Motor의 속도는 RPM으로 제어가 되므로 속도 -> RMP으로 변환하는
  *             과정이 필요하다.
  */
  void Driving::subscribe_velocity_control(const geometry_msgs::Twist &twist_msg)
  {
    // Motor 객체에 전달
    // todo : motor 객체 쪽에 속도값 전달
  }
}