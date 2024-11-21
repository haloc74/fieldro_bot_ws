
#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitControl.h>

#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "define/error_code.h"
 
namespace fieldro_bot
{
  /**
  * @brief      unit의 상태를 subscribe하는 함수
  * @param[in]  const trash_bot::UnitStateMsg &msg : unit의 상태 정보
  * @return     void
  * @note       
  */
  void Droid::subscribe_unit_state(const trash_bot::UnitStateMsg &msg)
  {
    // // 현재 상태가 WaitForLink 상태이고 모든 link가 연결이 되어 있을 경우
    // if(_action == fieldro_bot::UnitState::InitReady && msg.alive == 0x00)
    // {
    //   log_msg(LogInfo, 0, "All Unit Linked - Next Step Process");
    //   _action = fieldro_bot::UnitState::Init;

    //   // todo 
    //   // io_node에 초기화 요청 sequence 추가
    //   add_sequence(unit_to_int(fieldro_bot::Unit::Signal), unit_action_to_int(fieldro_bot::UnitAction::Init));
    // }

    switch(_action)
    {
    case fieldro_bot::UnitState::BeforeConnect:  break;
    case fieldro_bot::UnitState::UnConnect:      break;

    case fieldro_bot::UnitState::InitReady:
      if(msg.alive == 0x00)
      {
        log_msg(LogInfo, 0, "All Unit Init - Next Step Process");
        _action = fieldro_bot::UnitState::InitReady;

        // 각 unit에 초기화 sequence 추가
        // None   - skip
        // System - this
        add_sequence(unit_to_int(fieldro_bot::Unit::Observer), unit_action_to_int(fieldro_bot::UnitAction::Init));
        add_sequence(unit_to_int(fieldro_bot::Unit::Signal), unit_action_to_int(fieldro_bot::UnitAction::Init));
      }
      break;

    case fieldro_bot::UnitState::Init:      break;
    case fieldro_bot::UnitState::Ready:     break;
    case fieldro_bot::UnitState::Busy:      break;
    case fieldro_bot::UnitState::Error:     break;
    case fieldro_bot::UnitState::End:       break;
    default:                                break;
    }

    return;
  }  
}