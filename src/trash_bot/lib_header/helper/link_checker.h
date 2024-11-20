
#pragma once

#include <ros/ros.h>
#include "define/unit_define.h"

/**
* @author		Fieldro : haloc@fieldro.tech
* @date			24-11-13
* @brief		각 unit과의 link(통신연결) 상태를 체크하는 클래스
* @note			
* @attention main control 을 담당하는 객체 한곳에서만 사용되어야 함
* @details	
* @see			
*/
namespace fieldro_bot
{
  class LinkChecker
  {
  public:
    LinkChecker();
    ~LinkChecker();

  protected:
    int32_t   _state;                                               // unit link 상태 bit
    ros::Time _last_time[static_cast<int>(fieldro_bot::Unit::End)]; // unit link 상태 체크 시간

  public:
    bool    check();                            // main thread 함수
    void    update_data(int32_t index);                             // unit link 상태 업데이트

    bool    is_all_unit_linked();                                   // 모든 unit link 상태 체크
    int32_t get_state();                                            // unit link 상태 반환
  };
}