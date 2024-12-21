
#pragma once

#include "helper/enum_template.h"
#include <cstdint>

namespace frb
{
  enum class Direction : int32_t
  {
    Forward = 0x00, // 전진
    Backward,       // 후진
    Left,           // 좌회전
    Right,          // 우회전
    Stop,           // 정지
    End,
  };

  /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조 
  */
  template<>
  inline std::string to_string<Direction>(Direction value)
  {
    switch(value)
    {
      case Direction::Forward:  return "Forward";
      case Direction::Backward: return "Backward";
      case Direction::Left:     return "Left";
      case Direction::Right:    return "Right";
      case Direction::Stop:     return "Stop";
      case Direction::End:      return "End";
    }
    return "UnKnown";
  }

  /**
  * @brief      string => enum 변환
  * @see        enum_template.h 참조        
  */
  template<>
  inline Direction to_enum<Direction, std::string>(const std::string& str)
  {
    if(str == "Forward")  return Direction::Forward;
    if(str == "Backward") return Direction::Backward;
    if(str == "Left")     return Direction::Left;
    if(str == "Right")    return Direction::Right;
    if(str == "Stop")     return Direction::Stop;
    if(str == "End")      return Direction::End;

    return Direction::End;
  }

  /**
  * @brief      int => string 변환
  * @see        enum_template.h 참조        
  */
  template<>
  inline std::string to_string<Direction>(int32_t value)
  {
    return to_string<Direction>(static_cast<Direction>(value));
  }

  /**
  * @brief      string => int 변환
  * @see        enum_template.h 참조              
  */
  template<>
  inline Direction to_int<Direction, std::string>(const std::string& value)
  {
    return to_int<Direction>(to_enum<Direction>(value));
  }

}