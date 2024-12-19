#pragma once

#include <ros/ros.h>

namespace frb
{
  
  /**
  * @author		Fieldro : haloc@fieldro.tech
  * @date			24-11-15
  * @brief		구성 unit의 heartbeat을 관리하는 클래스
  * @note			alive_check() 함수는 마지막 update 이후 THRESHOLD 시간이 경과하면 false를 반환
  * @details	
  * @see			Observer
  */

  class AliveInfo 
  {
  public:
      AliveInfo(int32_t unit_index);    // 생성자
      virtual ~AliveInfo() = default;   // 소멸자

  private:
      int32_t               _unit_index;          // unit에 할당된 index 번호
      int32_t               _state;               // 현재 unit 상태
      ros::Time             _last_update_time;    // 마지막 update 시간
      std::function<bool()> _alive_check_func;    // unit의 heartbeat 확인 함수

      const double  ALIVE_THRESHOLD = 0.5;        // heartbeat 임계값

  public:
      bool alive_check();                         // heartbeat가 정상적으로 동작하는지 확인
      bool update(int32_t state);                 // unit의 상태를 업데이트
      int32_t get_state() { return _state; }      // unit의 상태 반환

  protected:
      bool alive_check_unit();                    // unit의 heartbeat 확인 필요
  };

}