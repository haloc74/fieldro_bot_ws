
#include <trash_bot/IOSignal.h>
#include "wago.h"
#include "helper/helper.h"

namespace fieldro_bot
{
  /**
  * @brief      io signal map을 초기화 하는 함수
  * @note       각 io signal에 대한 정보를 저장한다.
  */
  void Wago::create_io_map()
  {
    for(int i=0; i< to_int(fieldro_bot::DISignal::COUNT); ++i)
    {
      _signal[i] = nullptr;  
    }

    int32_t index = 0; 

    // Loader Limit
    index = to_int(fieldro_bot::DISignal::LoaderFall);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(fieldro_bot::DISignal::LoaderFall));
    index = to_int(fieldro_bot::DISignal::LoaderRaise);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(fieldro_bot::DISignal::LoaderRaise));

    // Gripper Limit
    index = to_int(fieldro_bot::DISignal::Gripper_Min);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(fieldro_bot::DISignal::Gripper_Min));
    index = to_int(fieldro_bot::DISignal::Gripper_Max);
    _signal[index] = new SignalInfo(index, IOContactType::NC, to_string(fieldro_bot::DISignal::Gripper_Max));
  }

  /**
  * @brief      io signal map을 해제 하는 함수
  * @note       
  */
  void Wago::delete_io_map()
  {
    for(int i=0; i<to_int(fieldro_bot::DISignal::COUNT); ++i)
    {
      safe_delete(_signal[i]);
    }
  }  
}
