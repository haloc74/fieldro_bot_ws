
#pragma once

#include <string>

namespace fieldro_bot
{
  enum class CommandType
  {
    Index = 0x0000,   // 명령 인덱스
    String = 0x0001,  // 명령 문자열
    End,
  };
  
  constexpr int32_t command_type_to_int(CommandType type)
  {
    return static_cast<int32_t>(type);
  }
  constexpr CommandType int_to_command_type(int32_t type)
  {
    return static_cast<CommandType>(type);
  }
  inline std::string CommandTypeToString(CommandType type)
  {
    switch(type)
    {
      case CommandType::Index:  return "Index";
      case CommandType::String: return "String";
      default:                  return "Unknown";
    }
    return "Unknown";
  }

  enum class UnitAction
  {
    None   = 0x0000,   // 없음
    WaitForLink,       // Link 대기
    
    
    Init    = 0x0001,   Initializing,  Initialized,      // 초기화    (System)

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

  constexpr int32_t unit_action_to_int(UnitAction action)
  {
    return static_cast<int32_t>(action);
  }
  constexpr UnitAction int_to_unit_action(int32_t action)
  {
    return static_cast<UnitAction>(action);
  }

  inline std::string unit_action_to_string(UnitAction action)
  {
    switch(action)
    {
      case UnitAction::None:          return "None";

      case UnitAction::Init:          return "Init";
      case UnitAction::Initializing:  return "Initializing";
      case UnitAction::Initialized:   return "Initialized";

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
      
      case UnitAction::Raise:           return "Raise";
      case UnitAction::Raising:         return "Raising";
      case UnitAction::Raised:          return "Raised";
      
      case UnitAction::Middle:          return "Middle";
      case UnitAction::Middleing:       return "Middleing";
      case UnitAction::Middled:         return "Middled";
      
      case UnitAction::Fall:            return "Fall";
      case UnitAction::Falling:         return "Falling";
      case UnitAction::Fell:            return "Fell";
      
      case UnitAction::Home:            return "Home";
      case UnitAction::Homing:          return "Homing";
      case UnitAction::Homed:           return "Homed";
      
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
      default:                          return "None";
    }
    return "None";
  }

  /**
  * @brief      string을 unit action 비교하여 unit action index 값 반환
  * @param[in]  action : unit action name
  * @return     unit action index
  * @note       
  */
  inline int32_t string_to_unit_action_index(std::string action)
  {
    int action_index = unit_action_to_int(UnitAction::None);

    for(int i=0; i<unit_action_to_int(UnitAction::End); i++)
    {
      if(action == unit_action_to_string(int_to_unit_action(i)))
      {
        action_index = i;
        break;
      }
    }
    return action_index;
  }

}