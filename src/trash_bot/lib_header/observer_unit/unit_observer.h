
#pragma once

#include <ros/ros.h>
#include <vector>

#include "trash_bot/UnitStateMsg.h"
#include "trash_bot/UnitAliveMsg.h"
#include "trash_bot/UnitControl.h"

#include "helper/thread_action_info.h"
#include "define/unit_define.h"
#include "observer_unit/unit_alive_info.h"

 
namespace fieldro_bot
{
  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			24-11-13
  * @brief		robot의 구성품인 unit의 상태를 관리하는 클래스
  * @note			unit의 상태를 업데이트하고, heartbeat에 관련된 내용을 publishing 한다.
  *           
  * @details	
  * @see			
  */
  class UnitObserver
  {
  public:
    UnitObserver();		    // 생성자
    ~UnitObserver();		  // 소멸자
 
    ros::NodeHandle* get_node_handle()  { return _node_handle; }
    bool is_shutdown()                  { return _shut_down; }

  private:
    void update();			                    // main thread 업데이트

  private:
    ros::NodeHandle*        _node_handle;	      // ROS 시스템과 통신을 위한 노드 핸들
    ros::AsyncSpinner*      _spinner;           // ROS 시스템과 통신을 위한 스피너
    ThreadActionInfo*       _thread_info;       // thread action 객체
    fieldro_bot::UnitState  _state;	        // unit 현재 상태
    bool                    _shut_down;         // node 종료 flag

    // SUBSCRIBER : control 지령
    ros::Subscriber     _subscribe_unit_control;      
    void subscribe_unit_control(const trash_bot::UnitControl& unit_control_msg);

    // SUBSCRIBER : unit들의 alive 상태 
    ros::Subscriber _subscribe_unit_alive;	                        
    void subscribe_unit_alive(const trash_bot::UnitAliveMsg &msg);	

    // PUBLISHER - unit의 state
    ros::Publisher _publish_units_state;	                        
    void publish_unit_state(bool time_check_flag);    

    // PUBLISEHER - unit action coplete 
    ros::Publisher _publish_unit_action_complete;
    void publish_unit_action_complete(const int32_t action, const int32_t result);
   
    ros::Time         _last_publish_time;	        // 마지막 Pub 시간
    int32_t           _publish_interval;	        // Pub 주기

    int32_t                     _unit_alive;      // 전체 unit의 alive 상태 변수
    std::vector<UnitAliveInfo*> _unit_alive_info;	// unit 상태 정보를 저장하는 vector
      
    // 일반 함수
    bool update_units_alive_value();	// unit들의 상태를 확인하는 함수
    bool is_publish_interval();	      // 업데이트 주기를 확인하는 함수
    void load_option();               // 옵션 로드 함수

    void system_finish()    { _shut_down = true;  }   // 시스템 종료 함수
  };


}
