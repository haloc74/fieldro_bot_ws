
#pragma once

#include <ros/ros.h>
#include <vector>

#include "trash_bot/UnitStateMsg.h"
#include "trash_bot/UnitAliveMsg.h"

#include "define/unit_define.h"
#include "unit_observer/unit_alive_info.h"


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
    void update(const ros::TimerEvent& event);			  // 업데이트
  
  private:
    ros::NodeHandle*  _node_handle;	      // ROS 시스템과 통신을 위한 노드 핸들
    ros::Timer        _update_timer;	    // 업데이트 타이머
    ros::Time         _last_update_time;	// 마지막 업데이트 시간
    double            _update_interval;	  // heartbeat 임계값

    int32_t _unit_alive;
    std::vector<UnitAliveInfo*> _unit_alive_info;	// unit 상태 정보를 저장하는 vector
      
    ros::Subscriber _subscribe_unit_alive;	                        // unit 상태를 수신하는 subscriber
    void subscribe_unit_alive(const trash_bot::UnitAliveMsg &msg);	// unit 상태를 수신하는 callback 함수

    ros::Publisher _publish_units_state;	                        // unit의 state를 publishing 하는 publisher
    void publish_unit_state(bool time_check_flag);	              // unit의 state를 publishing 하는 함수

    bool update_units_alive_value();	// unit들의 상태를 확인하는 함수
    bool is_update_interval();	      // 업데이트 주기를 확인하는 함수
  };


}
