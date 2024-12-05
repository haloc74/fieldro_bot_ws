
#include "loader.h"

namespace fieldro_bot
{
  /**
  * @brief      unit action message를 수신하는 callback 함수
  * @param[in]  unit_control_msg : main control node에서 전달되는 unit control message
  * @return     void
  * @attention  target이 loader가 아닌 메세지는 무시한다.
  * @note       
  */
  void Loader::subscribe_unit_action(const trash_bot::UnitControl& msg)
  {
    fieldro_bot::UnitName unit = to_enum<fieldro_bot::UnitName>(msg.target_object);
    
    if(unit != fieldro_bot::UnitName::Loader && 
       unit != fieldro_bot::UnitName::All)      return;

    fieldro_bot::UnitAction action = to_enum<fieldro_bot::UnitAction>(msg.action);

    log_msg(LogInfo, 0, "UnitName Action Sub : " + to_string(unit) + " - " + to_string(action));

    switch(action)
    {
    case fieldro_bot::UnitAction::None:
      LOG->add_log(fieldro_bot::UnitName::Loader, fieldro_bot::LogLevel::Error, 0, "UnitName Action None");
      break;

    case fieldro_bot::UnitAction::Init:
      break;
    }
    
    return;
  }

  /**
  * @brief      io signal topic을 수신하는 callback 함수
  * @param[in]  const trash_bot::IOSignal& iosignal_msg : io signal message
  * @return     void
  * @note       
  */
  void Loader::subscribe_iosignal(const trash_bot::IOSignal& msg)
  {

  }




}