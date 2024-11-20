
#include "observer_unit/unit_alive_info.h"

namespace fieldro_bot
{
  /**
  * @brief      생성자
  * @param[in]  int32_t unit_index : unit index (Unit 참조)
  * @see        Unit
  */
  UnitAliveInfo::UnitAliveInfo(int32_t unit_index)
  {
    _unit_index       = unit_index;
    _state            = -1;

    try
    {
      if(!ros::Time::isValid())
      {
        ros::Time::init();
      }
      _last_update_time = ros::Time::now();
    }
    catch(const std::exception& e)
    {
      std::cerr << e.what() << '\n';
    }    
  }

  /**
  * @brief      unit의 상태를 확인하는 함수
  * @return     unit이 현재 alive 상태인지 여부
  * @attention  0번 index는 None으로 예약되어있어 예외처리
  * @see        Unit 
  */
  bool UnitAliveInfo::alive_check() 
  {
    if(_unit_index == 0)  return true;

    return (ros::Time::now() - _last_update_time).toSec() > ALIVE_THRESHOLD;
  }

  /**
  * @brief      unit의 상태를 업데이트하는 함수
  * @param[in]  int32_t state : unit의 상태
  * @return     이전 상태와 달라진 점이 있는지 여부
  * @note       UnitState 참조
  */
  bool UnitAliveInfo::update(int32_t state) 
  {
    bool update = false;
    _last_update_time = ros::Time::now();
    
    if(_state != state)
    {
      update = true;
      _state = state;
    }
    return update;
  }
}