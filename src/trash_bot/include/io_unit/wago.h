
#pragma once

#include <mutex>

#include "ros/ros.h"

#include "unit/unit.h"
#include "define/digital_in_define.h"
#include "communication/modbus_wrapper.h"
#include "signal_info.h"


/**
* @author		  fieldro
* @date				2024-07-31
* @brief    	digital in, out control class
* @details  	
* @see				
* @image      omnibot_diagram.png "omnibot diagram"
*/

namespace fieldro_bot
{
  class Wago : public Unit
  { 
  public:
    Wago(std::string config_file, std::string session);
    virtual ~Wago();

  private:
    virtual void update();

    ModbusWrapper*      _modbus;                  // modbus wrapper 객체
    ros::Time           _last_update_time;        // 마지막 update 시간
    

    // Wago object 옵션 로드
    virtual void load_option(std::string config_file);

    // control 지령을 받기 위한 subscriber
    virtual void subscribe_unit_action(const trash_bot::UnitControl& msg);

    // io signal을 발송하기 위한 publisher
    double         _publish_io_signal_period;
    ros::Publisher  _publish_io_signal;           
    void publish_io_signal(const int64_t signal_bit, bool update_flag);

    // io signal을 저장하기 위한 배열
    SignalInfo* _signal[di_to_int(fieldro_bot::DISignal::COUNT)];
    void create_io_map();
    void delete_io_map();
    void read_di_signal();
    void update_di_signal(const uint8_t* const signal);
  };
}