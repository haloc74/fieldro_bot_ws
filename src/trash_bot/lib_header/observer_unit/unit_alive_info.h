#pragma once

#include <ros/ros.h>

namespace fieldro_bot
{
  
  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			24-11-15
  * @brief		구성 unit의 heartbeat을 관리하는 클래스
  * @note			alive_check() 함수는 마지막 update 이후 THRESHOLD 시간이 경과하면 false를 반환
  * @details	
  * @see			UnitObserver
  */

  class UnitAliveInfo 
  {
  private:
      int32_t     _unit_index;              // unit에 할당된 index 번호
      int32_t     _state;                   // 현재 unit 상태
      ros::Time   _last_update_time;        // 마지막 update 시간
      
      const double  ALIVE_THRESHOLD = 0.5;        // heartbeat 임계값

  public:
      UnitAliveInfo(int32_t unit_index);    // 생성자
      virtual ~UnitAliveInfo() = default;   // 소멸자

      bool alive_check();                   // heartbeat가 정상적으로 동작하는지 확인
      bool update(int32_t state);           // unit의 상태를 업데이트
      int32_t get_state() { return _state; } // unit의 상태 반환
  };

}