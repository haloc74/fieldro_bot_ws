// Generated by gencpp from file twinny_msgs/MonitorMotorError.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_MONITORMOTORERROR_H
#define TWINNY_MSGS_MESSAGE_MONITORMOTORERROR_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace twinny_msgs
{
template <class ContainerAllocator>
struct MonitorMotorError_
{
  typedef MonitorMotorError_<ContainerAllocator> Type;

  MonitorMotorError_()
    : header()
    , Motor_Number(0)
    , Motor_drive_bridge_status(0)
    , Motor_drive_protection_status(0)
    , Motor_system_protection_status(0)
    , Motor_drive_system_status(0)
    , Motor_Error_Level(0)  {
    }
  MonitorMotorError_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Motor_Number(0)
    , Motor_drive_bridge_status(0)
    , Motor_drive_protection_status(0)
    , Motor_system_protection_status(0)
    , Motor_drive_system_status(0)
    , Motor_Error_Level(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _Motor_Number_type;
  _Motor_Number_type Motor_Number;

   typedef uint16_t _Motor_drive_bridge_status_type;
  _Motor_drive_bridge_status_type Motor_drive_bridge_status;

   typedef uint16_t _Motor_drive_protection_status_type;
  _Motor_drive_protection_status_type Motor_drive_protection_status;

   typedef uint16_t _Motor_system_protection_status_type;
  _Motor_system_protection_status_type Motor_system_protection_status;

   typedef uint16_t _Motor_drive_system_status_type;
  _Motor_drive_system_status_type Motor_drive_system_status;

   typedef int8_t _Motor_Error_Level_type;
  _Motor_Error_Level_type Motor_Error_Level;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(MOTOR_ERROR_LEVEL_HIGH)
  #undef MOTOR_ERROR_LEVEL_HIGH
#endif
#if defined(_WIN32) && defined(MOTOR_ERROR_LEVEL_MIDDLE)
  #undef MOTOR_ERROR_LEVEL_MIDDLE
#endif
#if defined(_WIN32) && defined(MOTOR_ERROR_LEVEL_LOW)
  #undef MOTOR_ERROR_LEVEL_LOW
#endif
#if defined(_WIN32) && defined(MOTOR_ERROR_LEVEL_NORMAL)
  #undef MOTOR_ERROR_LEVEL_NORMAL
#endif
#if defined(_WIN32) && defined(MOTOR_ERROR_LEVEL_INVALID)
  #undef MOTOR_ERROR_LEVEL_INVALID
#endif

  enum {
    MOTOR_ERROR_LEVEL_HIGH = -3,
    MOTOR_ERROR_LEVEL_MIDDLE = -2,
    MOTOR_ERROR_LEVEL_LOW = -1,
    MOTOR_ERROR_LEVEL_NORMAL = 0,
    MOTOR_ERROR_LEVEL_INVALID = -99,
  };


  typedef boost::shared_ptr< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> const> ConstPtr;

}; // struct MonitorMotorError_

typedef ::twinny_msgs::MonitorMotorError_<std::allocator<void> > MonitorMotorError;

typedef boost::shared_ptr< ::twinny_msgs::MonitorMotorError > MonitorMotorErrorPtr;
typedef boost::shared_ptr< ::twinny_msgs::MonitorMotorError const> MonitorMotorErrorConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::MonitorMotorError_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::MonitorMotorError_<ContainerAllocator1> & lhs, const ::twinny_msgs::MonitorMotorError_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.Motor_Number == rhs.Motor_Number &&
    lhs.Motor_drive_bridge_status == rhs.Motor_drive_bridge_status &&
    lhs.Motor_drive_protection_status == rhs.Motor_drive_protection_status &&
    lhs.Motor_system_protection_status == rhs.Motor_system_protection_status &&
    lhs.Motor_drive_system_status == rhs.Motor_drive_system_status &&
    lhs.Motor_Error_Level == rhs.Motor_Error_Level;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::MonitorMotorError_<ContainerAllocator1> & lhs, const ::twinny_msgs::MonitorMotorError_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32bee29b39aa81380c35de6c8643364c";
  }

  static const char* value(const ::twinny_msgs::MonitorMotorError_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32bee29b39aa8138ULL;
  static const uint64_t static_value2 = 0x0c35de6c8643364cULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/MonitorMotorError";
  }

  static const char* value(const ::twinny_msgs::MonitorMotorError_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header \n"
"\n"
"uint8 Motor_Number\n"
"uint16 Motor_drive_bridge_status\n"
"uint16 Motor_drive_protection_status\n"
"uint16 Motor_system_protection_status\n"
"uint16 Motor_drive_system_status\n"
"\n"
"int8 MOTOR_ERROR_LEVEL_HIGH=-3\n"
"int8 MOTOR_ERROR_LEVEL_MIDDLE=-2\n"
"int8 MOTOR_ERROR_LEVEL_LOW=-1\n"
"int8 MOTOR_ERROR_LEVEL_NORMAL=0\n"
"int8 MOTOR_ERROR_LEVEL_INVALID=-99\n"
"int8 Motor_Error_Level\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::twinny_msgs::MonitorMotorError_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Motor_Number);
      stream.next(m.Motor_drive_bridge_status);
      stream.next(m.Motor_drive_protection_status);
      stream.next(m.Motor_system_protection_status);
      stream.next(m.Motor_drive_system_status);
      stream.next(m.Motor_Error_Level);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MonitorMotorError_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::MonitorMotorError_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::MonitorMotorError_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Motor_Number: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Motor_Number);
    s << indent << "Motor_drive_bridge_status: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Motor_drive_bridge_status);
    s << indent << "Motor_drive_protection_status: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Motor_drive_protection_status);
    s << indent << "Motor_system_protection_status: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Motor_system_protection_status);
    s << indent << "Motor_drive_system_status: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Motor_drive_system_status);
    s << indent << "Motor_Error_Level: ";
    Printer<int8_t>::stream(s, indent + "  ", v.Motor_Error_Level);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_MONITORMOTORERROR_H
