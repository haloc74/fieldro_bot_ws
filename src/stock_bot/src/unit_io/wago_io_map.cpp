
#include "wago.h"

#include <fieldro_msgs/IOSignal.h>
#include <fieldro_lib/helper/helper.h>

namespace frb
{
  /**
  * @brief      io signal map을 초기화 하는 함수
  * @note       각 io signal에 대한 정보를 저장한다.
  */
  void Wago::create_io_map()
  {
    for(int i=0; i< to_int(frb::DISignal::COUNT)+1; ++i)
    {
      _signal[i] = nullptr;  
    }

    int32_t index = 0; 

    // 전면 패널 EMS 스위치
    index = to_int(frb::DISignal::FrontEMS);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(frb::DISignal::FrontEMS));

    // 리프트 상단 안전 스위치
    index = to_int(frb::DISignal::LiftTopSafe);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(frb::DISignal::LiftTopSafe));    

    // 리프트 하단 안전 스위치
    index = to_int(frb::DISignal::LiftBottomSafe);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(frb::DISignal::LiftBottomSafe));
    
    // 후면 패널 EMS 스위치
    index = to_int(frb::DISignal::RearEMS);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(frb::DISignal::RearEMS));    

    // Manual Switch
    index = to_int(frb::DISignal::ManualControl);
    _signal[index] = new SignalInfo(index, IOContactType::NO, to_string(frb::DISignal::ManualControl));        


    // // Gripper Limit
    // index = to_int(frb::DISignal::Gripper_Min);
    // _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(frb::DISignal::Gripper_Min));
    // index = to_int(frb::DISignal::Gripper_Max);
    // _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(frb::DISignal::Gripper_Max));
  }

  /**
  * @brief      io signal map을 해제 하는 함수
  * @note       
  */
  void Wago::delete_io_map()
  {
    for(int i=0; i<to_int(frb::DISignal::COUNT)+1; ++i)
    {
      safe_delete(_signal[i]);
    }
  }  
}
