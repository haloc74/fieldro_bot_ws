
#include "loader.h"
#include "define/unit_state.h"

/*
  1. loader 움직임시 초기화 움직임은 sensor의 입력으로 완료가 되기 때문에 
     action_complete_notify callback 함수 호출이 이루어지지 않는다.
  2. action_complete_notify callback 함수는 일반 action에서만 이루어진다.

*/


namespace frb
{
  /**
  * @brief      모터에 지령된 Action 완료 후 호출되는 콜백 함수
  * @param[in]  const Error error : error code
  * @return     void
  * @note       
  */
  void Loader::action_complete_notify(const Error error)
  {
    log_msg(LogInfo, 0, std::string("action complete notify : ") + 
                        frb::to_string(_action) + 
                        std::string(" - error code : ") + 
                        std::to_string(frb::to_int(error)));

     if(error == Error::None)
    {
      if(_action == UnitAction::None)   
      {
        // todo : action이 없는데 동작 완료가 되는 상황은 에러이다 !!!!!.
        log_msg(LogInfo, 0, "Loader : action is None !!! - What is this ???");
        return;
      }

      // 동작 완료 보고 (정상 완료)
      Unit::publish_unit_action_complete(to_int(_action), frb::to_int(Error::None));

      // action 초기화
      _action = frb::UnitAction::None;
    }
    else
    {
      // 동작 완료 보고 (Error)
      Unit::publish_unit_action_complete(to_int(_action), frb::to_int(error));

      // error log 표기 
      log_msg(LogError, to_int(error), "Error : error code - " + std::to_string(to_int(error)));      

      // state 변경
      _state  = frb::UnitState::Error;
    }
    return;
  }

}