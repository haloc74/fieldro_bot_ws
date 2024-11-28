
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
    
    //bool is_shutdown() { return _shut_down; }

  private:
    void update();
    //void system_finish();

    // ThreadActionInfo*   _thread_info;                 // thread action 객체
    // ros::NodeHandle*    _node_handle;                 // ROS 시스템과 통신을 위한 노드 핸들
    // ros::AsyncSpinner*  _spinner;                     // ROS 시스템과 통신을 위한 스피너 

    ModbusWrapper*      _modbus;                      // modbus wrapper 객체
    ros::Time           _last_update_time;            // 마지막 update 시간
    //ros::Time           _last_alive_time;             // 마지막 alive 발송 시간
    
    //std::mutex          _lock;                        // thread lock
    //int32_t             _state;                       // 현재 state
    //bool                _shut_down;                   // 종료 flag

    // // alive message 발송을 위하 publisher
    // ros::Publisher  _publish_alive;
    // void publish_alive();

    // control 지령을 받기 위한 subscriber
    //ros::Subscriber     _subscribe_unit_control;      
    virtual void subscribe_unit_action(const trash_bot::UnitControl& msg);

    // control 지령 처리 결과 통보를 위한 publisher
    //ros::Publisher      _publish_unit_action_complete;
    //virtual void publish_unit_action_complete(const int32_t action, const int32_t result);    

    // io signal을 발송하기 위한 publisher
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