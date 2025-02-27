
#pragma once

#include <list>
#include <mutex>
#include <tuple>

#include "ros/ros.h"
#include <sensor_msgs/Joy.h>
#include "geometry_msgs/Twist.h"
#include "twinny_msgs/BatteryReport.h"
#include "twinny_msgs/SwitchReport.h"

#include <fieldro_lib/unit/unit.h>
//#include <fieldro_lib/define/digital_in_define.h>

#include <fieldro_msgs/UnitActionComplete.h>
#include <fieldro_msgs/IOSignal.h>
#include <fieldro_msgs/UnitControl.h>
#include <fieldro_msgs/UnitStateMsg.h>
#include <fieldro_msgs/ManualControl.h>

#include "unit_io/digital_in_define.h"

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

namespace frb
{ 
  const int32_t MIN_SEQUENCE_NUM = 1000;

  class Droid : public Unit
  { 
  public:
    Droid(std::string msg_space, std::string config_file, std::string session);  // 생성자
    ~Droid();
    bool control(std::vector<std::string> command_list);

  protected:
    virtual void update();                                 // thread action                                 
    virtual void load_option(std::string config_file);     // option 로드 함수

  protected:
    ros::Publisher      _publish_unit_control;        // unit control을 발송하기 위한 publisher
    ros::Publisher      _publish_manual_control;      // 수동 제어를 발송하기 위한 publisher

    ros::Subscriber     _subscribe_switch_report;     // 스위치 상태를 받기 위한 subscriber
    ros::Subscriber     _subscribe_velocity_control;  // 속도 제어를 받기 위한 subscriber  
    ros::Subscriber     _subscribe_unit_state;        // unit state를 받기 위한 subscriber
    ros::Subscriber     _subscribe_action_complete;   // 각 Unit의 동작 완료 상태를 받기 위한 subscriber
    ros::Subscriber     _subscribe_joystick;          // 조이스틱 제어를 받기 위한 subscriber
    ros::Subscriber     _subscribe_iosignal;          // IOSignal을 받기 위한 subscriber 
  
    void subscribe_switch_report(const twinny_msgs::SwitchReport Switch_Check);    
    void subscribe_velocity_control(const geometry_msgs::Twist &twist_msg);
    void subscribe_action_complete(const fieldro_msgs::UnitActionComplete &action_complete_msg);
    void subscribe_unit_state(const fieldro_msgs::UnitStateMsg &msg);
    void subscribe_joystick(const sensor_msgs::Joy &joy_msg);
    void subscribe_iosignal(const fieldro_msgs::IOSignal& msg);          // IOSignal을 받기 위한 callback 함수


  private:
    std::list<std::unique_ptr<fieldro_msgs::UnitControl>> _control_sequence;  // 동작 요청 list
    std::list<std::unique_ptr<fieldro_msgs::UnitControl>> _pending_sequence;  // 동작 요청된 list (완료시 까지 유지)

    void add_sequence(int32_t unit, int32_t action, int32_t sequence_num, std::string command="");
    void message_publish();

    void publish_all_destroy();
    void publish_unit_control(std::unique_ptr<fieldro_msgs::UnitControl> unit_control_msg);
    void publish_manual_control(double propulsion, double steering, double lifting);

    // user command control
    std::map<int32_t, int32_t, std::string> _command_map;
    bool is_all_sequence_empty();             // 모든 sequence가 비어 있는지 확인

    void start_initialize_process(int32_t alive_value);          // 초기화 Process 시작
    void create_unit_initialize_sequence();             // unit 초기화 순서 설정
    void all_unit_initialize_complete();                // 모든 unit 초기화 완료
    
    // controller option
    int32_t _is_driving_mode_changeable;      // 자동 <---> 수동 모드 전환 가능 여부
    int32_t _joystick_control;                // 조이스틱 제어 여부

    bool    _prev_brake;          // 이전 브레이크 상태
    int32_t _prev_brake_button;   // 브레이크 버튼 (0:fff, 1:on)

    int32_t _prev_brake_reset_button;
    
    bool    _prev_light;
    int32_t _prev_light_button;

    int32_t _sequence_num;            // unit action 지령 sequence 번호
    int32_t increase_sequence_num(); 

  };

}