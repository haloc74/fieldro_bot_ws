
#pragma once

#include <string>
#include <cstdint>


namespace fieldro_bot
{
  enum class Error
  {
    ReadFail    = -1,
    WriteFail   = -2,
    TimeOut     = -3,         // 0x0001 시간 초과
    UnConnect   = -4,
    ParseFail   = -5,
    PowerOff   = -6,

    SensorDetect= -10,    
    

    None = 0,            // 없음

    Door,
    Close,
    Open,
    Lock,
    
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

    // // 통신 연결 100번대
    // ConnectFail = 100,
    // ConnectSuccess,
    // Disconnect,

    FileDoseNotExist = 2000,

    SendFail = 3000, 

    IOError = 4000,
    LimitSensorOn,

    ExecuteError = 5000,
    ExecuteFail,
    NotReady,
    NotInitialized,
    InitializeFail,
    ProcedualError,

    Unknown,
    End,
  };

  constexpr int32_t error_to_int(Error error)
  {
    return static_cast<int32_t>(error);
  }
  constexpr Error int_to_error(int32_t error)
  {
    return static_cast<Error>(error);
  }

  inline std::string ErrorToString(Error error)
  {
    return "Not Implemented";
  }

}