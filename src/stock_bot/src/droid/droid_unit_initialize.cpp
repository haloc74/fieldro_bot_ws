
#include "droid.h"

#include "package/package_helper.h"
#include "package/unit_define.h"

namespace frb
{
  /**
  * @brief      unit 초기화 process를 시작한다.
  * @param[in]  int32_t alive_value : unit들의 alive 상태
  * @return     void
  * @note       
  */
  void Droid::start_initialize_process(int32_t alive_value)
  {
    if(alive_value != 0x00)    return;

    _state = frb::UnitState::Active;

    log_msg(LogInfo, 0, "Start initialize process --- ");
   
    delay_call(3000, std::bind(&Droid::create_unit_initialize_sequence, this));

    return;
  }
  

  /**
  * @brief      링크 되어야 하는 유닛들의 초기화 순서를 정의한다.
  * @param[in]  void
  * @return     void
  * @attention  observer, signal 두 유닛은 그 어떤 유닛보다 먼저 초기화 되어야 한다.
  *             이후 뒤쪽으로 가면서 더 위험한 unit들을 초기화 한다.
  */
  void Droid::create_unit_initialize_sequence()      
  {  
    add_sequence(to_int(frb::UnitName::Observer), to_int(frb::UnitAction::Init));   // step 1 : observer
    add_sequence(to_int(frb::UnitName::Signal),   to_int(frb::UnitAction::Init));   // step 2 : signal
    //add_sequence(to_int(frb::UnitName::JoyStick), to_int(frb::UnitAction::Init));   // step 3 : manual controller
    add_sequence(to_int(frb::UnitName::Lift),     to_int(frb::UnitAction::Init));   // step 4 : lifter
    add_sequence(to_int(frb::UnitName::Driving),  to_int(frb::UnitAction::Init));   // step 5 : driving

    log_msg(LogInfo, 0, "create_unit_initialize_sequence !!!");
    return;
  }
  
}