
#pragma once

#include "helper/enum_template.h"

namespace fieldro_bot
{
  enum class UnitAction
  {
    None   = 0x0000,   // 없음
    WaitForLink,       // Link 대기
    
    
    Init    = 0x0002,   Initializing,  Initialized,      // 초기화    (System)

    Open    = 0x0010,   Opening,      Opened,            // 열림      (Door)
    Close   = 0x0020,   Closing,      Closed,            // 닫힘      (Door)
    
    Advance = 0x0030,   Advancing,    Advanced,          // 전진      (RackFork, Handler)
    Reverse = 0x0040,   Reversing,    Reversed,          // 후진      (RackFork, Handler) 
    
    Fall    = 0x0050,   Falling,      Fell,              // 하강      (Lift)
    Middle  = 0x0060,   Middleing,    Middled,           // 중간      (Lift)
    Home    = 0x0070,   Homing,       Homed,             // 홈        (Lift)
    Raise   = 0x0080,   Raising,      Raised,            // 상승      (Lift)
 
    Transfer= 0x0090,   Transfering,  Transfered,        // 물체 이동 (Handler)
    
    Grip    = 0x00A0,   Gripping,     Gripped,           // 그립      (Gripper)
    Release = 0x00B0,   Releasing,    Released,          // 릴리즈    (Gripper)

    Move    = 0x00C0,   Moving,       Moved,             // 이동      (AGV)
    Stop    = 0x00D0,   Stopping,     Stopped,           // 정지      (AGV)   

    MoveToLowLimit = 0x00E0,                             // Limit 위치로 이동 (Motor)
    MoveToHighLimit,         
    

    PowerOn = 0x0F00,                                    // 전원 On/Off
    PowerOff,                    

    GetStatus   = 0x0F10,                                // 상태 확인
    GetPosition,

    Finish   = 0x0FF0,                                   // 종료      (System)
    
    End, 
  };


  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조
  */
  template<>
  inline std::string to_string<UnitAction>(UnitAction value)
  {
    switch(value)
    {
      case UnitAction::None:          return "None";
      case UnitAction::WaitForLink:   return "WaitForLink";

      case UnitAction::Init:            return "Init";
      case UnitAction::Initializing:    return "Initializing";
      case UnitAction::Initialized:     return "Initialized";

      case UnitAction::Open:            return "Open";
      case UnitAction::Opening:         return "Opening";
      case UnitAction::Opened:          return "Opened";
      
      case UnitAction::Close:           return "Close";
      case UnitAction::Closing:         return "Closing";
      case UnitAction::Closed:          return "Closed";
      
      case UnitAction::Advance:         return "Advance";
      case UnitAction::Advancing:       return "Advancing";
      case UnitAction::Advanced:        return "Advanced";
      
      case UnitAction::Reverse:         return "Reverse";
      case UnitAction::Reversing:       return "Reversing";
      case UnitAction::Reversed:        return "Reversed";

      case UnitAction::Fall:            return "Fall";
      case UnitAction::Falling:         return "Falling";
      case UnitAction::Fell:            return "Fell";

      case UnitAction::Middle:          return "Middle";
      case UnitAction::Middleing:       return "Middleing";
      case UnitAction::Middled:         return "Middled";

      case UnitAction::Home:            return "Home";
      case UnitAction::Homing:          return "Homing";
      case UnitAction::Homed:           return "Homed";

      case UnitAction::Raise:           return "Raise";
      case UnitAction::Raising:         return "Raising";
      case UnitAction::Raised:          return "Raised";
      
      
      case UnitAction::Transfer:        return "Transfer";
      case UnitAction::Transfering:     return "Transfering";
      case UnitAction::Transfered:      return "Transfered";
      
      case UnitAction::Grip:            return "Grip";
      case UnitAction::Gripping:        return "Gripping";
      case UnitAction::Gripped:         return "Gripped";
      
      case UnitAction::Release:         return "Release";
      case UnitAction::Releasing:       return "Releasing";
      case UnitAction::Released:        return "Released";

      case UnitAction::Move:            return "Move";
      case UnitAction::Moving:          return "Moving";
      case UnitAction::Moved:           return "Moved";

      case UnitAction::Stop:            return "Stop";
      case UnitAction::Stopping:        return "Stopping";
      case UnitAction::Stopped:         return "Stopped";

      case UnitAction::MoveToLowLimit:  return "MoveToLowLimit";
      case UnitAction::MoveToHighLimit: return "MoveToHighLimit";

      case UnitAction::PowerOn:         return "PowerOn";
      case UnitAction::PowerOff:        return "PowerOff";

      case UnitAction::GetStatus:       return "GetStatus";
      case UnitAction::GetPosition:     return "GetPosition";

      case UnitAction::Finish:          return "Finish";
    }
    return "UnKnown";
  }


  /**
  * @brief      string => enum 변환
  * @see        enum_template.h 참조
  */
  template<>
  inline UnitAction to_enum<UnitAction, std::string>(const std::string& str)
  {
    if(str == "None")          return UnitAction::None;
    if(str == "WaitForLink")   return UnitAction::WaitForLink;

    if(str == "Init")          return UnitAction::Init;
    if(str == "Initializing")  return UnitAction::Initializing;
    if(str == "Initialized")   return UnitAction::Initialized;

    if(str == "Open")          return UnitAction::Open;
    if(str == "Opening")       return UnitAction::Opening;
    if(str == "Opened")        return UnitAction::Opened;

    if(str == "Close")         return UnitAction::Close;
    if(str == "Closing")       return UnitAction::Closing;
    if(str == "Closed")        return UnitAction::Closed;

    if(str == "Advance")       return UnitAction::Advance;
    if(str == "Advancing")     return UnitAction::Advancing;
    if(str == "Advanced")      return UnitAction::Advanced;

    if(str == "Reverse")       return UnitAction::Reverse;
    if(str == "Reversing")     return UnitAction::Reversing;
    if(str == "Reversed")      return UnitAction::Reversed;

    if(str == "Fall")          return UnitAction::Fall;
    if(str == "Falling")       return UnitAction::Falling;
    if(str == "Fell")          return UnitAction::Fell;

    if(str == "Middle")        return UnitAction::Middle;
    if(str == "Middleing")     return UnitAction::Middleing;
    if(str == "Middled")       return UnitAction::Middled;

    if(str == "Home")          return UnitAction::Home;
    if(str == "Homing")        return UnitAction::Homing;
    if(str == "Homed")         return UnitAction::Homed;

    if(str == "Raise")         return UnitAction::Raise;
    if(str == "Raising")       return UnitAction::Raising;
    if(str == "Raised")        return UnitAction::Raised;

    if(str == "Transfer")      return UnitAction::Transfer;
    if(str == "Transfering")   return UnitAction::Transfering;
    if(str == "Transfered")    return UnitAction::Transfered;

    if(str == "Grip")          return UnitAction::Grip;
    if(str == "Gripping")      return UnitAction::Gripping;
    if(str == "Gripped")       return UnitAction::Gripped;

    if(str == "Release")       return UnitAction::Release;
    if(str == "Releasing")     return UnitAction::Releasing;
    if(str == "Released")      return UnitAction::Released;

    if(str == "Move")          return UnitAction::Move;
    if(str == "Moving")        return UnitAction::Moving;
    if(str == "Moved")         return UnitAction::Moved;

    if(str == "Stop")          return UnitAction::Stop;
    if(str == "Stopping")      return UnitAction::Stopping;
    if(str == "Stopped")       return UnitAction::Stopped;

    if(str == "MoveToLowLimit")return UnitAction::MoveToLowLimit;
    if(str == "MoveToHighLimit")return UnitAction::MoveToHighLimit;

    if(str == "PowerOn")       return UnitAction::PowerOn;
    if(str == "PowerOff")      return UnitAction::PowerOff;

    if(str == "GetStatus")     return UnitAction::GetStatus;
    if(str == "GetPosition")   return UnitAction::GetPosition;

    if(str == "Finish")        return UnitAction::Finish;

    return UnitAction::End;
  }



  /**
  * @brief      int => string 변환
  * @see        enum_template.h 참조       
  */
  template<>
  inline std::string to_string<UnitAction, int32_t>(int32_t value)
  {
    return to_string<UnitAction>(to_enum<UnitAction>(value));
  }

  /**
  * @brief      string => int 변환
  * @see        enum_template.h 참조              
  */
  template<>
  inline int32_t to_int<UnitAction, std::string>(const std::string& str)
  {
    return to_int(to_enum<UnitAction>(str));
  } 

}