
#include "loader.h"

namespace fieldro_bot
{
  /**
  * @brief      모터에 지령된 Action 완료 후 호출되는 콜백 함수
  * @param[in]  const Error error : error code
  * @return     void
  * @note       
  */
  void Loader::action_complete_notify(const Error error)
  {
    if(error == Error::None)
    {
      // todo : motor 동작 완료 후 처리
    }
    else
    {
      // todo : motor 동작 실패 후 처리
    }

    Unit::publish_unit_action_complete(to_int<UnitAction>(UnitAction::Init), error_to_int(Error::None));

    return;
  }

}