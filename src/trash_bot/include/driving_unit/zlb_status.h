#pragma once

#include "helper/enum_template.h"

namespace frb
{
  //The status byte shows the status of the drive

  enum class ZlbStatus 
  {
    Ready_on                  = 0,  // Drive is ready
    Switched_on               = 1,  // Drive is switched on
    Operation_enable          = 2,  // Drive operation is enabled
    Fault                     = 3,  // Fault detected

    Voltage_enable            = 4,  // Voltage is enabled
    Quick_stop                = 5,  // Quick stop is active
    Switchon_disabled         = 6,  // Switch on is disabled
    Warning                   = 7,  // Warning present
    
    Internal_retention        = 8,  // Internal retention active
    Remote                    = 9,  // Remote control active
    Target_reached            = 10, // Target position reached
    Internal_limit_activation = 11, // Internal limit activation
    
    Pulse_response            = 12, // Pulse response detected
    Following_Error           = 13, // Following error detected
    Commutation_Found         = 14, // Commutation found
    Reference_Found           = 15  // Reference found
  };

    /**
  * @brief      enum => string 변환
  * @see        enum_template.h 참조 
  */  
  template<>
  inline std::string to_string<ZlbStatus>(ZlbStatus value)
  {
    switch(value)
    {
      case ZlbStatus::Ready_on:                  return "Ready_on";
      case ZlbStatus::Switched_on:               return "Switched_on";
      case ZlbStatus::Operation_enable:          return "Operation_enable";
      case ZlbStatus::Fault:                     return "Fault";
      case ZlbStatus::Voltage_enable:            return "Voltage_enable";
      case ZlbStatus::Quick_stop:                return "Quick_stop";
      case ZlbStatus::Switchon_disabled:         return "Switchon_disabled";
      case ZlbStatus::Warning:                   return "Warning";
      case ZlbStatus::Internal_retention:        return "Internal_retention";
      case ZlbStatus::Remote:                    return "Remote";
      case ZlbStatus::Target_reached:            return "Target_reached";
      case ZlbStatus::Internal_limit_activation: return "Internal_limit_activation";
      case ZlbStatus::Pulse_response:            return "Pulse_response";
      case ZlbStatus::Following_Error:           return "Following_Error";
      case ZlbStatus::Commutation_Found:         return "Commutation_Found";
      case ZlbStatus::Reference_Found:           return "Reference_Found";
    }
    return "UnKnown";
  }

  // /**
  // * @brief      int => string 변환
  // * @note       to_string<ZlbStatus, int32_t>(int32_t value)
  // * @see        enum_template.h 참조 
  // */
  // template<>
  // inline ZlbStatus to_enum<ZlbStatus, int32_t>(const int32_t& value)
  // {
  //   switch(value)
  //   {
  //     case 0:  return ZlbStatus::Ready_on;
  //     case 1:  return ZlbStatus::Switched_on;
  //     case 2:  return ZlbStatus::Operation_enable;
  //     case 3:  return ZlbStatus::Fault;
  //     case 4:  return ZlbStatus::Voltage_enable;
  //     case 5:  return ZlbStatus::Quick_stop;
  //     case 6:  return ZlbStatus::Switchon_disabled;
  //     case 7:  return ZlbStatus::Warning;
  //     case 8:  return ZlbStatus::Internal_retention;
  //     case 9:  return ZlbStatus::Remote;
  //     case 10: return ZlbStatus::Target_reached;
  //     case 11: return ZlbStatus::Internal_limit_activation;
  //     case 12: return ZlbStatus::Pulse_response;
  //     case 13: return ZlbStatus::Following_Error;
  //     case 14: return ZlbStatus::Commutation_Found;
  //     case 15: return ZlbStatus::Reference_Found;
  //   }
  //   return ZlbStatus::Ready_on;
  // }
}