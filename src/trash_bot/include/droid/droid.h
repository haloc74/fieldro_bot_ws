
#pragma once

#include <list>
#include <mutex>
#include <tuple>

#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "twinny_msgs/BatteryReport.h"
#include "twinny_msgs/SwitchReport.h"

#include "helper/thread_action_info.h"
#include "define/digital_in_define.h"
#include "define/unit_state.h"
#include "log/log_message.h"

#include <trash_bot/UnitActionComplete.h>
#include <trash_bot/IOSignal.h>
#include <trash_bot/UnitControl.h>
#include <trash_bot/UnitStateMsg.h>



/**
* @author		  fieldro
* @date				2024-07-08
* @brief    	agv main class
* @note  			agv main class전체 상황을 관장하는 클래스
* @details  	
* @see				
* 1. omnibot class는 agv의 전체 상황을 관장하는 클래스이다.
* 2. emo 상황에서의 동작 중지
* 3. 특정 동작중 동시 동작 되지 않아야 하는 상황 control
*    (주행중에는 다른 동작이 되어서는 안된다)
* 4. 특정 행위에 대한 scenario를 가지고 순차적으로 수행시킨다.
* 5. /omnibot/action_complete msg를 받아서 다음 동작을 수행한다.
* 6.  
*/ 

namespace fieldro_bot
{ 
  class Droid
  { 
  public:
    Droid();
    ~Droid();

    ros::NodeHandle* get_node_handle() { return _node_handle; }
    bool control(std::vector<std::string> command_list);

  protected:
    void update();                                    // thread action                                 

  protected:
    std::mutex          _lock;
    ThreadActionInfo*   _thread_info;                 // thread action 객체
    ros::NodeHandle*    _node_handle;                 // ROS 시스템과 통신을 위한 노드 핸들
    ros::AsyncSpinner*  _spinner;                     // ROS 시스템과 통신을 위한 스피너 

    ros::Publisher      _publish_unit_control;        // unit control을 발송하기 위한 publisher
    ros::Publisher      _publish_unit_alive;          // unit alive를 발송하기 위한 publisher
    ros::Subscriber     _subscribe_switch_report;     // 스위치 상태를 받기 위한 subscriber
    ros::Subscriber     _subscribe_velocity_control;  // 속도 제어를 받기 위한 subscriber  
    ros::Subscriber     _subscribe_io_signal;         // 신호를 받기 위한 subscriber
    ros::Subscriber     _subscribe_unit_state;        // unit state를 받기 위한 subscriber
    ros::Subscriber     _subscribe_action_complete;   // 각 Unit의 동작 완료 상태를 받기 위한 subscriber


    std::list<std::unique_ptr<trash_bot::UnitControl>> _control_sequence;  // 동작 요청 list
    std::list<std::unique_ptr<trash_bot::UnitControl>> _pending_sequence;  // 동작 요청된 list (완료시 까지 유지)

    void add_sequence(uint32_t unit, uint32_t action, std::string command="");
    void message_publish();
    void publish_unit_control(uint32_t unit, uint32_t action, std::string command="");
    void publish_unit_control(std::unique_ptr<trash_bot::UnitControl> unit_control_msg);
    void publish_unit_alive();

    void subscribe_switch_report(const twinny_msgs::SwitchReport Switch_Check);    
    void subscribe_velocity_control(const geometry_msgs::Twist &twist_msg);
    void subscribe_io_signal(const trash_bot::IOSignal &io_signal_msg);
    void subscribe_action_complete(const trash_bot::UnitActionComplete &action_complete_msg);
    void subscribe_unit_state(const trash_bot::UnitStateMsg &msg);


    // IO Signal Message
    int8_t _sensor[(int)DISignal::END];                             // 센서 상태 정보
    int64_t _signal_bit;                                            // 
    bool update_sensor_data(DISignal sensor, int64_t signal_bit);   // sensor data 업데이트
    ros::Time _last_io_update_time;                                 // 마지막 센서 정보 업데이트 시간
    ros::Time _last_alive_publish_time;                             // 마지막 alive 정보 업데이트 시간
    int32_t   _alive_publish_interval;                              // alive 정보 업데이트 주기

    fieldro_bot::UnitState _state[to_int(fieldro_bot::UnitName::End)];           // unit 상태 정보
    fieldro_bot::UnitState* _action;

    // user command control
    std::map<int32_t, int32_t, std::string> _command_map;

    bool is_all_sequence_empty();  // 모든 sequence가 비어 있는지 확인
    void log_msg(LogLevel level, int32_t error_code, std::string log);  // log 기록 함수
    void system_finish();   // system 종료 함수
    void load_option();     // option 로드 함수
  };

}