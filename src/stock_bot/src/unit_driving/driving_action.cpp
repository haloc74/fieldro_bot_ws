#include "driving.h"
#include "package/package_helper.h"
#include "package/unit_define.h"

namespace frb
{
  /**
  * @brief      모터 객체의 동작을 멈춤
  * @note       
  */
  void Driving::stop()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->stop(true);
    }
  }

  /**
  * @brief      모터 Drive Reset
  * @param[in]  
  * @note       Motor Drive Error 발생시 리셋
  */
  void Driving::reset()
  {
    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->reset();
    }
  }

  /**
  * @brief      모터 객체의 Break 동작
  * @param[in]  std::strring state : off - break off, on - break on
  * @return     void
  * @note       
  */
  void Driving::breaking(std::string state)
  {
    bool flag = true;
    if(state != "" && state == "off")
    {
      flag = false;
    }

    for(int i=0; i<Wheel::End; i++)
    {
      if(_drive[i] != nullptr)  _drive[i]->breaking(flag);
    }
  }
}