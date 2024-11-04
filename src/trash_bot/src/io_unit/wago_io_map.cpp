
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
    for(int i=0; i<di_to_int(fieldro_bot::DISignal::COUNT); ++i)
    {
      _signal[i] = nullptr;  
    } 

    // Rack 0 ~ Rack 9  
    int32_t index = di_to_int(fieldro_bot::DISignal::RACK_00);
    for(int i=0; i<10; ++i)
    {
      _signal[index+i] = new SignalInfo(index+i, IOContactType::NO, int_to_di_string(index+i));
    }

    // Door Close, Open
    index = di_to_int(fieldro_bot::DISignal::LoaderFall);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::LoaderRaise);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));

    //Handler Fork Limit
    index = di_to_int(fieldro_bot::DISignal::HANDLER_FORK_MAX_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::HANDLER_FORK_MIN_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));


    // Handler Lift Limit
    index = di_to_int(fieldro_bot::DISignal::HANDLER_LIFT_MAX_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::HANDLER_LIFT_MIN_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));


    // Magnet Unit
    index = di_to_int(fieldro_bot::DISignal::MAGNET_UNIT_ORIGIN);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::MAGNET_UNIT_FRONT);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::MAGNET_UNIT_REAR);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::AMARTURE_CONTACT_DETECTION);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));


    // Tray Contact Detection
    index = di_to_int(fieldro_bot::DISignal::TRAY_CONTACT_DETECTION);
    _signal[index] = new SignalInfo(index, IOContactType::NO, int_to_di_string(index));

    // Handler Tilt Limit
    index = di_to_int(fieldro_bot::DISignal::HANDLER_TILT_MIN_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NO, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::HANDLER_TILT_MAX_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NO, int_to_di_string(index));


    // Rack Fork Limit
    index = di_to_int(fieldro_bot::DISignal::RACK_FORK_BACKWARD_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
    index = di_to_int(fieldro_bot::DISignal::RACK_FORK_FORWARD_LIMIT);
    _signal[index] = new SignalInfo(index, IOContactType::NC, int_to_di_string(index));
  }

  /**
  * @brief      io signal map을 해제 하는 함수
  * @note       
  */
  void Wago::delete_io_map()
  {
    for(int i=0; i<di_to_int(fieldro_bot::DISignal::COUNT); ++i)
    {
      safe_delete(_signal[i]);
    }
  }  
}
