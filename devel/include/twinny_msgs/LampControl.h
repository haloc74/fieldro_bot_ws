// Generated by gencpp from file twinny_msgs/LampControl.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_LAMPCONTROL_H
#define TWINNY_MSGS_MESSAGE_LAMPCONTROL_H


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
struct LampControl_
{
  typedef LampControl_<ContainerAllocator> Type;

  LampControl_()
    : header()
    , type()
    , lamp_control(0)  {
    }
  LampControl_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , type(_alloc)
    , lamp_control(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef uint8_t _lamp_control_type;
  _lamp_control_type lamp_control;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(LAMP_CONTROL_OFF)
  #undef LAMP_CONTROL_OFF
#endif
#if defined(_WIN32) && defined(LAMP_CONTROL_RED)
  #undef LAMP_CONTROL_RED
#endif
#if defined(_WIN32) && defined(LAMP_CONTROL_AMBER)
  #undef LAMP_CONTROL_AMBER
#endif
#if defined(_WIN32) && defined(LAMP_CONTROL_RED_AMBER)
  #undef LAMP_CONTROL_RED_AMBER
#endif
#if defined(_WIN32) && defined(LAMP_CONTROL_GREEN)
  #undef LAMP_CONTROL_GREEN
#endif
#if defined(_WIN32) && defined(LAMP_CONTROL_RED_GREEN)
  #undef LAMP_CONTROL_RED_GREEN
#endif
#if defined(_WIN32) && defined(LAMP_CONTROL_AMBER_GREEN)
  #undef LAMP_CONTROL_AMBER_GREEN
#endif
#if defined(_WIN32) && defined(LAMP_CONTROL_ALL)
  #undef LAMP_CONTROL_ALL
#endif

  enum {
    LAMP_CONTROL_OFF = 0u,
    LAMP_CONTROL_RED = 1u,
    LAMP_CONTROL_AMBER = 2u,
    LAMP_CONTROL_RED_AMBER = 3u,
    LAMP_CONTROL_GREEN = 4u,
    LAMP_CONTROL_RED_GREEN = 5u,
    LAMP_CONTROL_AMBER_GREEN = 6u,
    LAMP_CONTROL_ALL = 7u,
  };


  typedef boost::shared_ptr< ::twinny_msgs::LampControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::LampControl_<ContainerAllocator> const> ConstPtr;

}; // struct LampControl_

typedef ::twinny_msgs::LampControl_<std::allocator<void> > LampControl;

typedef boost::shared_ptr< ::twinny_msgs::LampControl > LampControlPtr;
typedef boost::shared_ptr< ::twinny_msgs::LampControl const> LampControlConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::LampControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::LampControl_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::LampControl_<ContainerAllocator1> & lhs, const ::twinny_msgs::LampControl_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.type == rhs.type &&
    lhs.lamp_control == rhs.lamp_control;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::LampControl_<ContainerAllocator1> & lhs, const ::twinny_msgs::LampControl_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::LampControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::LampControl_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::LampControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::LampControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::LampControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::LampControl_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::LampControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5ecbc415e2e3fe2c315df80bc2d55b1d";
  }

  static const char* value(const ::twinny_msgs::LampControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5ecbc415e2e3fe2cULL;
  static const uint64_t static_value2 = 0x315df80bc2d55b1dULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::LampControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/LampControl";
  }

  static const char* value(const ::twinny_msgs::LampControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::LampControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string type\n"
"\n"
"uint8 LAMP_CONTROL_OFF=0\n"
"uint8 LAMP_CONTROL_RED=1\n"
"uint8 LAMP_CONTROL_AMBER=2\n"
"uint8 LAMP_CONTROL_RED_AMBER=3\n"
"uint8 LAMP_CONTROL_GREEN=4\n"
"uint8 LAMP_CONTROL_RED_GREEN=5\n"
"uint8 LAMP_CONTROL_AMBER_GREEN=6\n"
"uint8 LAMP_CONTROL_ALL=7\n"
"\n"
"uint8 lamp_control\n"
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

  static const char* value(const ::twinny_msgs::LampControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::LampControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.type);
      stream.next(m.lamp_control);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LampControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::LampControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::LampControl_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "lamp_control: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lamp_control);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_LAMPCONTROL_H
