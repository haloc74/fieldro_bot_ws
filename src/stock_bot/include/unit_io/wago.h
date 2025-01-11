
#pragma once

#include <mutex>
#include "ros/ros.h"
#include <fieldro_lib/unit/unit.h>
#include <fieldro_lib/device_communication/modbus_wrapper.h>
#include <fieldro_lib/io_signal/signal_info.h>

#include "digital_in_define.h"

/**
* @author		  fieldro
* @date				2024-07-31
* @brief    	digital in, out control class
* @details  	
* @see				
* @image      omnibot_diagram.png "omnibot diagram"
*/

namespace frb
{ 
  class Wago : public Unit
  { 
  public:
    Wago(std::string config_file, std::string session);
    virtual ~Wago();

  protected:
    virtual void update();

    ModbusWrapper*      _modbus;                  // modbus wrapper 객체

    // Wago object 옵션 로드
    virtual void load_option(std::string config_file);

    // control 지령을 받기 위한 subscriber
    virtual void subscribe_unit_action(const fieldro_msgs::UnitControl& msg);

    // io signal을 발송하기 위한 publisher
    ros::Time      _last_publish_time;               // 마지막 update 시간    
    double         _publish_io_signal_period;
    ros::Publisher  _publish_io_signal;           
    void publish_io_signal(const int64_t signal_bit, bool update_flag);

    // io signal을 저장하기 위한 배열
    SignalInfo* _signal[static_cast<int32_t>(frb::DISignal::COUNT)];
    void create_io_map();
    void delete_io_map();
    void read_di_signal();
    void update_di_signal(const uint8_t* const signal);
  };
}