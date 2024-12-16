
#pragma once

#include <list>
#include <mutex>
#include <tuple>

#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "twinny_msgs/BatteryReport.h"
#include "twinny_msgs/SwitchReport.h"

#include "unit/unit.h"


//#include "helper/thread_action_info.h"
#include "define/digital_in_define.h"
//#include "define/unit_state.h"
//#include "log/log_message.h"

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
  class Droid : public Unit
  { 
  public:
    Droid(std::string config_file, std::string session);  // 생성자
    ~Droid();
    bool control(std::vector<std::string> command_list);

  protected:
    virtual void update();                                 // thread action                                 
    virtual void load_option(std::string config_file);     // option 로드 함수

  protected:
    ros::Publisher      _publish_unit_control;        // unit control을 발송하기 위한 publisher

    ros::Subscriber     _subscribe_switch_report;     // 스위치 상태를 받기 위한 subscriber
    ros::Subscriber     _subscribe_velocity_control;  // 속도 제어를 받기 위한 subscriber  
    ros::Subscriber     _subscribe_unit_state;        // unit state를 받기 위한 subscriber
    ros::Subscriber     _subscribe_action_complete;   // 각 Unit의 동작 완료 상태를 받기 위한 subscriber

    void subscribe_switch_report(const twinny_msgs::SwitchReport Switch_Check);    
    void subscribe_velocity_control(const geometry_msgs::Twist &twist_msg);
    void subscribe_action_complete(const trash_bot::UnitActionComplete &action_complete_msg);
    void subscribe_unit_state(const trash_bot::UnitStateMsg &msg);


  private:
    std::list<std::unique_ptr<trash_bot::UnitControl>> _control_sequence;  // 동작 요청 list
    std::list<std::unique_ptr<trash_bot::UnitControl>> _pending_sequence;  // 동작 요청된 list (완료시 까지 유지)

    void add_sequence(int32_t unit, int32_t action, std::string command="");
    void message_publish();

    void publish_unit_control(int32_t unit, int32_t action, std::string command="");
    void publish_unit_control(std::unique_ptr<trash_bot::UnitControl> unit_control_msg);

    // user command control
    std::map<int32_t, int32_t, std::string> _command_map;
    bool is_all_sequence_empty();  // 모든 sequence가 비어 있는지 확인
    void create_unit_initialize_sequence();
  };

}