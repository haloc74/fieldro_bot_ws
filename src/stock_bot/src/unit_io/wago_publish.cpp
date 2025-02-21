
#include "wago.h"

#include <fieldro_lib/define/unit_action_define.h>
#include <fieldro_lib/define/unit_state.h>
#include <fieldro_msgs/IOSignal.h>
#include <fieldro_msgs/UnitAliveMsg.h>
#include <fieldro_msgs/UnitActionComplete.h>
#include "package/unit_define.h"  
#include "package/package_helper.h"


namespace frb
{
  /**
  * @brief      io signal을 발송하는 함수
  * @param[in]  signal : 비트연산 된 전체 IO 신호
  * @note       update가 있거나 마지막 전송 이후 0.5초가 경과 했다면 발송한다.
  */
  void Wago::publish_io_signal(const int64_t signal_bit, bool update_flag)
  {
    // update가 없고 마지막 전송 이후 _publish_io_signal_period 초가 경과하지 않았다면 발송하지 않는다.
    if(!update_flag && ros::Time::now() - _last_publish_time < ros::Duration(_publish_io_signal_period))
    {
      return;
    }

    // 변경사항이 있을 때만 로그를 남긴다.
    if(update_flag)
    {
      LOG->add_log(_name, 
                    frb::LogLevel::Info, 
                    0, std::string("Update IO Signal : ")+std::to_string(signal_bit));
    }

    // io signal 발송
    fieldro_msgs::IOSignal io_signal_msg;
    io_signal_msg.time_stamp  = ros::Time::now();
    io_signal_msg.signal_bit  = signal_bit;
    _publish_io_signal.publish(io_signal_msg);

    // 마지막 발송 시간 업데이트
    _last_publish_time = ros::Time::now();

    return;
  }
}