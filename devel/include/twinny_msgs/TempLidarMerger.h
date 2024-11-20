// Generated by gencpp from file twinny_msgs/TempLidarMerger.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_TEMPLIDARMERGER_H
#define TWINNY_MSGS_MESSAGE_TEMPLIDARMERGER_H

#include <ros/service_traits.h>


#include <twinny_msgs/TempLidarMergerRequest.h>
#include <twinny_msgs/TempLidarMergerResponse.h>


namespace twinny_msgs
{

struct TempLidarMerger
{

typedef TempLidarMergerRequest Request;
typedef TempLidarMergerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct TempLidarMerger
} // namespace twinny_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::twinny_msgs::TempLidarMerger > {
  static const char* value()
  {
    return "e8e1e3f1f578fce614ecb20fa50c446a";
  }

  static const char* value(const ::twinny_msgs::TempLidarMerger&) { return value(); }
};

template<>
struct DataType< ::twinny_msgs::TempLidarMerger > {
  static const char* value()
  {
    return "twinny_msgs/TempLidarMerger";
  }

  static const char* value(const ::twinny_msgs::TempLidarMerger&) { return value(); }
};


// service_traits::MD5Sum< ::twinny_msgs::TempLidarMergerRequest> should match
// service_traits::MD5Sum< ::twinny_msgs::TempLidarMerger >
template<>
struct MD5Sum< ::twinny_msgs::TempLidarMergerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::twinny_msgs::TempLidarMerger >::value();
  }
  static const char* value(const ::twinny_msgs::TempLidarMergerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::twinny_msgs::TempLidarMergerRequest> should match
// service_traits::DataType< ::twinny_msgs::TempLidarMerger >
template<>
struct DataType< ::twinny_msgs::TempLidarMergerRequest>
{
  static const char* value()
  {
    return DataType< ::twinny_msgs::TempLidarMerger >::value();
  }
  static const char* value(const ::twinny_msgs::TempLidarMergerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::twinny_msgs::TempLidarMergerResponse> should match
// service_traits::MD5Sum< ::twinny_msgs::TempLidarMerger >
template<>
struct MD5Sum< ::twinny_msgs::TempLidarMergerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::twinny_msgs::TempLidarMerger >::value();
  }
  static const char* value(const ::twinny_msgs::TempLidarMergerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::twinny_msgs::TempLidarMergerResponse> should match
// service_traits::DataType< ::twinny_msgs::TempLidarMerger >
template<>
struct DataType< ::twinny_msgs::TempLidarMergerResponse>
{
  static const char* value()
  {
    return DataType< ::twinny_msgs::TempLidarMerger >::value();
  }
  static const char* value(const ::twinny_msgs::TempLidarMergerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_TEMPLIDARMERGER_H
