// Generated by gencpp from file twinny_msgs/resetHardwareParam.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_RESETHARDWAREPARAM_H
#define TWINNY_MSGS_MESSAGE_RESETHARDWAREPARAM_H

#include <ros/service_traits.h>


#include <twinny_msgs/resetHardwareParamRequest.h>
#include <twinny_msgs/resetHardwareParamResponse.h>


namespace twinny_msgs
{

struct resetHardwareParam
{

typedef resetHardwareParamRequest Request;
typedef resetHardwareParamResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct resetHardwareParam
} // namespace twinny_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::twinny_msgs::resetHardwareParam > {
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::twinny_msgs::resetHardwareParam&) { return value(); }
};

template<>
struct DataType< ::twinny_msgs::resetHardwareParam > {
  static const char* value()
  {
    return "twinny_msgs/resetHardwareParam";
  }

  static const char* value(const ::twinny_msgs::resetHardwareParam&) { return value(); }
};


// service_traits::MD5Sum< ::twinny_msgs::resetHardwareParamRequest> should match
// service_traits::MD5Sum< ::twinny_msgs::resetHardwareParam >
template<>
struct MD5Sum< ::twinny_msgs::resetHardwareParamRequest>
{
  static const char* value()
  {
    return MD5Sum< ::twinny_msgs::resetHardwareParam >::value();
  }
  static const char* value(const ::twinny_msgs::resetHardwareParamRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::twinny_msgs::resetHardwareParamRequest> should match
// service_traits::DataType< ::twinny_msgs::resetHardwareParam >
template<>
struct DataType< ::twinny_msgs::resetHardwareParamRequest>
{
  static const char* value()
  {
    return DataType< ::twinny_msgs::resetHardwareParam >::value();
  }
  static const char* value(const ::twinny_msgs::resetHardwareParamRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::twinny_msgs::resetHardwareParamResponse> should match
// service_traits::MD5Sum< ::twinny_msgs::resetHardwareParam >
template<>
struct MD5Sum< ::twinny_msgs::resetHardwareParamResponse>
{
  static const char* value()
  {
    return MD5Sum< ::twinny_msgs::resetHardwareParam >::value();
  }
  static const char* value(const ::twinny_msgs::resetHardwareParamResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::twinny_msgs::resetHardwareParamResponse> should match
// service_traits::DataType< ::twinny_msgs::resetHardwareParam >
template<>
struct DataType< ::twinny_msgs::resetHardwareParamResponse>
{
  static const char* value()
  {
    return DataType< ::twinny_msgs::resetHardwareParam >::value();
  }
  static const char* value(const ::twinny_msgs::resetHardwareParamResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_RESETHARDWAREPARAM_H
