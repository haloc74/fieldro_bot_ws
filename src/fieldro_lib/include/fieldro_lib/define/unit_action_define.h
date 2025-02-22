#pragma once

#include <unordered_map> // 추가된 부분
//#include "helper/enum_template.h"
#include <fieldro_lib/helper/enum_template.h>

namespace frb
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
    Lift    = 0x0085,   Lifting,      Lifted,            // 높이      (Lift)
 
    Transfer= 0x0090,   Transfering,  Transfered,        // 물체 이동 (Handler)
    Grip    = 0x00A0,   Gripping,     Gripped,           // 그립      (Gripper)
    Release = 0x00B0,   Releasing,    Released,          // 릴리즈

    Move    = 0x00C0,   Moving,       Moved,             // 이동      (AGV)
    Stop    = 0x00D0,   Stopping,     Stopped,           // 정지      (AGV)   
    Turn    = 0x00E0,   Turning,      Turned,            // 회전      (AGV)
    Steer   = 0x00F0,   Steering,     Steered,           // 조향      (AGV)
    Break   = 0x0100,   Breaking,     Breaked,           // 브레이크  (AGV)


    MoveToLowLimit = 0x0110,                             // Limit 위치로 이동 (Motor)
    MoveToHighLimit,         
    
     
    PowerOn = 0x0F00,                                    // 전원 On/Off
    PowerOff,         
    Light,           

    GetStatus   = 0x0F10,                                // 상태 확인
    GetPosition,
    Reset,

    EStop    = 0x0FF0,                                    // 비상 정지 (System)
    Finish   = 0x0FF1,                                   // 종료      (System)
    
    End, 
  };

  static const std::unordered_map<UnitAction, std::string> unit_action_map = 
  {
    {UnitAction::None,        "None"},
    {UnitAction::WaitForLink, "WaitForLink"},
    
    {UnitAction::Init,          "Init"},         
    {UnitAction::Initializing,  "Initializing"},    
    {UnitAction::Initialized,   "Initialized"},
    
    {UnitAction::Open, "Open"},         {UnitAction::Opening, "Opening"},         {UnitAction::Opened, "Opened"},
    {UnitAction::Close, "Close"},       {UnitAction::Closing, "Closing"},         {UnitAction::Closed, "Closed"},
    {UnitAction::Advance, "Advance"},   {UnitAction::Advancing, "Advancing"},     {UnitAction::Advanced, "Advanced"},
    {UnitAction::Reverse, "Reverse"},   {UnitAction::Reversing, "Reversing"},     {UnitAction::Reversed, "Reversed"},
    {UnitAction::Fall, "Fall"},         {UnitAction::Falling, "Falling"},         {UnitAction::Fell, "Fell"},
    {UnitAction::Middle, "Middle"},     {UnitAction::Middleing, "Middleing"},     {UnitAction::Middled, "Middled"},
    {UnitAction::Home, "Home"},         {UnitAction::Homing, "Homing"},           {UnitAction::Homed, "Homed"},
    {UnitAction::Raise, "Raise"},       {UnitAction::Raising, "Raising"},         {UnitAction::Raised, "Raised"},
    {UnitAction::Lift, "Lift"},         {UnitAction::Lifting, "Lifting"},         {UnitAction::Lifted, "Lifted"},
    {UnitAction::Transfer, "Transfer"}, {UnitAction::Transfering, "Transfering"}, {UnitAction::Transfered, "Transfered"},
    {UnitAction::Grip, "Grip"},         {UnitAction::Gripping, "Gripping"},       {UnitAction::Gripped, "Gripped"},
    {UnitAction::Release, "Release"},   {UnitAction::Releasing, "Releasing"},     {UnitAction::Released, "Released"},
    {UnitAction::Move, "Move"},         {UnitAction::Moving, "Moving"},           {UnitAction::Moved, "Moved"},
    {UnitAction::Stop, "Stop"},         {UnitAction::Stopping, "Stopping"},       {UnitAction::Stopped, "Stopped"},
    {UnitAction::Turn, "Turn"},         {UnitAction::Turning, "Turning"},         {UnitAction::Turned, "Turned"},
    {UnitAction::Steer, "Steer"},       {UnitAction::Steering, "Steering"},       {UnitAction::Steered, "Steered"},
    {UnitAction::Break, "Break"},       {UnitAction::Breaking, "Breaking"},       {UnitAction::Breaked, "Breaked"},

    {UnitAction::MoveToLowLimit,  "MoveToLowLimit"},
    {UnitAction::MoveToHighLimit, "MoveToHighLimit"},
    
    {UnitAction::PowerOn,   "PowerOn"},
    {UnitAction::PowerOff,  "PowerOff"},
    {UnitAction::Light,     "Light"},
    
    {UnitAction::GetStatus,   "GetStatus"},
    {UnitAction::GetPosition, "GetPosition"},
    {UnitAction::Reset,       "Reset"},
    
    {UnitAction::EStop,   "EStop"},
    {UnitAction::Finish,  "Finish"},
    
    {UnitAction::End,     "End"},
};  


  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조
  */
  template<>
  inline std::string to_string<UnitAction>(UnitAction value)
  {
    auto it = unit_action_map.find(value);
    if (it != unit_action_map.end()) 
    {
        return it->second;
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
    for(const auto& pair : unit_action_map) 
    {
      if (pair.second == str) 
      {
        return pair.first;
      }
    }
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