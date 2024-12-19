#include "observer_unit/alive_info.h"
#include "define/unit_define.h"

namespace frb
{
  /**
  * @brief      생성자
  * @param[in]  int32_t unit_index : unit index (Unit 참조)
  * @attention  alive_check() 함수로 어떤 함수를 사용 할 것인지 미리 정의해야 한다.
  * @see        Unit
  */
  AliveInfo::AliveInfo(int32_t unit_index)
  {
    _unit_index       = unit_index;
    _state            = -1;

    if(_unit_index == to_int(frb::UnitName::All) ||
       _unit_index == to_int(frb::UnitName::Observer))
    {
      _alive_check_func = []() { return true; };
    }
    else
    {
      _alive_check_func = std::bind(&AliveInfo::alive_check_unit, this);
    }

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
  * @attention  생성자에서 어떤 함수를 사용할것인지 미리 결정해야 한다.
  *             Unit 갯수 * Hz 만큼 빈번하게 호출되는 로직이므로 최대한 overhead를 줄여야 한다.
  * @see        Unit 
  */
  bool AliveInfo::alive_check() 
  {
    return _alive_check_func();  
  }
  bool AliveInfo::alive_check_unit() 
  {
    return (ros::Time::now() - _last_update_time).toSec() < ALIVE_THRESHOLD;
  }
 

  /**
  * @brief      unit의 상태를 업데이트하는 함수
  * @param[in]  int32_t state : unit의 상태
  * @return     이전 상태와 달라진 점이 있는지 여부
  * @note       UnitState 참조
  */
  bool AliveInfo::update(int32_t state) 
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