
#pragma once

#include <ros/ros.h>
#include <vector>
#include <mutex>

#include "unit/unit.h"
#include "trash_bot/UnitAliveMsg.h"
#include "observer_unit/alive_info.h"

 
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
  class Observer : public Unit
  {
  public:
    Observer(std::string config_file, std::string session);		    // 생성자
    virtual ~Observer();		  // 소멸자
 
  protected:
    virtual void update();			                    // main thread 업데이트

    // SUBSCRIBER : control 지령
    void subscribe_unit_action(const trash_bot::UnitControl& unit_control_msg);

    // SUBSCRIBER : unit들의 alive 상태 
    ros::Subscriber _subscribe_unit_alive;	                        
    void subscribe_unit_alive(const trash_bot::UnitAliveMsg &msg);	

    // PUBLISHER - unit의 state
    ros::Publisher _publish_units_state;	                        
    void publish_unit_state(bool time_check_flag);    

   
    ros::Time         _last_publish_time;	        // 마지막 Pub 시간
    int32_t           _publish_interval;	        // Pub 주기

    int32_t                     _unit_alive;      // 전체 unit의 alive 상태 변수
    std::vector<AliveInfo*> _unit_alive_info;	// unit 상태 정보를 저장하는 vector
      
    // 일반 함수
    bool update_units_alive_value();	// unit들의 상태를 확인하는 함수
    bool is_publish_interval();	      // 업데이트 주기를 확인하는 함수
    virtual void load_option(std::string config_file);               // 옵션 로드 함수
  };


}
