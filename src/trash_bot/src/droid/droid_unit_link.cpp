

#include "droid.h"
#include "helper/helper.h"
#include "log/log.h"
#include <trash_bot/UnitControl.h>

#include "define/unit_define.h"
#include "define/unit_action_define.h"
#include "define/error_code.h"

namespace fieldro_bot
{
  void Droid::unit_link_check()
  {
    _link_checker->check();
    bool all_unit_linked = _link_checker->is_all_unit_linked();

    switch(_action)
    {
      case fieldro_bot::UnitState::UnConnect:
      case fieldro_bot::UnitState::InitReady:
        if(all_unit_linked)
        {
          _action = fieldro_bot::UnitState::Init;
          // todo : 초기화 시작
        }
        break;

      case fieldro_bot::UnitState::Init:
        if(!all_unit_linked)
        {
          _action = fieldro_bot::UnitState::Ready;
          // todo : 초기화 완료
        }
        break;
    }
    return;
  }
}