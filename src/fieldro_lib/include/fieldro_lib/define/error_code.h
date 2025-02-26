
#pragma once

// #include <string>
// #include <cstdint>

//#include "helper/enum_template.h"
#include <fieldro_lib/helper/enum_template.h>

namespace frb
{
  enum class Error
  {
    // ReadFail    = -1,
    // WriteFail   = -2,
    // TimeOut     = -3,         // 0x0001 시간 초과
    // UnConnect   = -4,
    // ParseFail   = -5,
    // PowerOff   = -6,

    // SensorDetect= -10,    
    

    None = 0,            // 없음

    ParseFail = 100,  // 
    PowerOff,


    Door,
    Close,
    Open,
    Lock,
    Busy, 
    
    RatchUnlock = 1000,
    RatchLock,
    Rack,
    RackAdvance,
    RackReverse,
    Lift,
    Raise,
    Fall,
    Handler,
    HandlerAdvance,
    HandlerReverse,
    MagnetOn,
    MagnetOff,
    Tilt,    
    DropSensor,
    BaseSensor,    
    Wago,

    // // 통신 연결   100번대
    // ConnectFail = 1100,
    // ConnectSuccess,
    // Disconnect,
    UnConnect = 1100,
    ReadFail,
    WriteFail,
    TimeOut,
    SetSlaveFail,

    ControlModeError,

    FileDoseNotExist = 1200,

    SendFail = 1300, 

    IOError = 1400,
    LimitSensorOn,

    ExecuteError = 1500,
    ExecuteFail,
    NotReady,
    NotInitialized,
    InitializeFail,
    ProcedualError,
    PowerFault,

    OutOfRange = 1600,

    Unknown,
    End,
  };

  /**
  * @brief      enum => string 변환
  * @note       구현되지 않음 (나중에 하자 ..)
  */
  template<>
  inline std::string to_string<Error>(Error value)
  {
    return "not implemented";
  }

  /**
  * @brief      string => enum 변환
  * @note       구현되지 않음 (나중에 하자 ..)
  */
  template<>
  inline Error to_enum<Error, std::string>(const std::string& str)
  {
    return Error::Unknown;
  }

  /**
  * @brief      int => string 변환
  * @note       구현되지 않음 (나중에 하자 ..)
  */
  template<>
  inline std::string to_string<Error, int32_t>(int32_t value)
  {
    return to_string<Error>(to_enum<Error>(value));
  }  

  /**
  * @brief      string => int 변환
  * @note       구현되지 않음 (나중에 하자 ..)
  */
  template<>
  inline int32_t to_int<Error, std::string>(const std::string& str)
  {
    return to_int<Error>(to_enum<Error, std::string>(str));
  }
  
}