
#include "driving.h"

namespace frb
{
  /**
  * @brief      실제 속도 및 위치 publish 함수
  * @param[in]  geometry_msgs::Twist twist : 속도 및 위치 정보
  * @return     void
  * @note       Motor에 callback 함수로 전달하여 실제적으로는 Motor 객체에서 호출됨
  */
  void Driving::publish_act_velocity(geometry_msgs::Twist twist)
  {
    _publish_act_velocity.publish(twist);

    return;
  }
}