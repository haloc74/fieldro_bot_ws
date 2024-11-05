
#include "link_checker.h"

namespace fieldro_bot
{ 
  LinkChecker::LinkChecker()
  {
    _state = 0x00;

    // 모든 unit의 link 상태 bit을 1로 초기화
    // 모든 unit의 link 상태 체크 시간을 초기화
    for(int i=0; i<static_cast<int>(fieldro_bot::Unit::End); i++)
    {
      if(i != static_cast<int>(fieldro_bot::Unit::System) )_state |= (1 << i);
      _last_time[i] = ros::TIME_MAX;
    }

    // None unit의 link 상태 bit을 0으로 변경 (None unit은 사용되지 않음으로)
    _state &= ~(1 << static_cast<int>(fieldro_bot::Unit::None));

    // System unit의 link 상태 bit을 0으로 변경 (System unit은 main node로 사용되므로)
    _state &= ~(1 << static_cast<int>(fieldro_bot::Unit::System));
  }

  LinkChecker::~LinkChecker()
  {
  }

  /**
  * @brief      main thread 함수
  * @return     link fail 된 unit이 있을 경우 false, 모든 unit이 link 되어 있을 경우 true
  * @note       _last_time이 ros::TIME_MAX인 경우는 한번도 연결이 되지 않은 경우로 
  *             최초 실행시 각 node들이 heartbeat를 보내기를 대기하는 중인것으로 판단
  */
  bool LinkChecker::update()
  {
    ros::Time time = ros::Time::now();

    for(int i=1; i<static_cast<int>(fieldro_bot::Unit::End); i++)
    {
      if(_last_time[i] == ros::TIME_MAX)    continue;

      // heartbeat timeout 상황 : 해당 unit의 link error 상태로 변경
      if(time - _last_time[i] > ros::Duration(2.0))
      {
        _state |= (1 << i);
        return false;
      }
    }
    return true;
  }

  /**
  * @brief      unit link 상태 업데이트
  * @param[in]  int32_t index : unit index
  * @return     void
  * @attention  연결이 된 상태가 0 bit이다 (에러 없음)
  */
  void LinkChecker::update_data(int32_t index)
  {
    // index에 해당하는 unit 마지막 update 시간을 현재 시간으로 업데이트
    _last_time[index] = ros::Time::now();

    // index에 해당하는 unit 상태 bit을 0으로 만들기
    _state &= ~(1 << index);
  }

  /**
  * @brief      모든 unit link 상태 체크
  * @return     0 : 모든 unit이 link 되어 있음, 0x00이 아닌 경우 link fail된 unit이 있음
  */
  bool LinkChecker::is_all_unit_linked()
  {
    return (_state == 0x00);
  }

  /**
  * @brief      unit link 상태 반환
  * @return     전체 unit link 상태 bit
  */
  int32_t LinkChecker::get_state()
  {
    return _state;
  }
  
} // namespace fieldro_bot
