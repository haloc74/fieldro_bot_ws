// Generated by gencpp from file twinny_msgs/ConveyorCommand.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_CONVEYORCOMMAND_H
#define TWINNY_MSGS_MESSAGE_CONVEYORCOMMAND_H


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
struct ConveyorCommand_
{
  typedef ConveyorCommand_<ContainerAllocator> Type;

  ConveyorCommand_()
    : header()
    , type()
    , conveyor1_control(0)
    , conveyor2_control(0)
    , door_open_control(false)
    , fall_prevention_device_control(false)  {
    }
  ConveyorCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , type(_alloc)
    , conveyor1_control(0)
    , conveyor2_control(0)
    , door_open_control(false)
    , fall_prevention_device_control(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef int8_t _conveyor1_control_type;
  _conveyor1_control_type conveyor1_control;

   typedef int8_t _conveyor2_control_type;
  _conveyor2_control_type conveyor2_control;

   typedef uint8_t _door_open_control_type;
  _door_open_control_type door_open_control;

   typedef uint8_t _fall_prevention_device_control_type;
  _fall_prevention_device_control_type fall_prevention_device_control;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(CONVEYOR_CTRL_REVERSE)
  #undef CONVEYOR_CTRL_REVERSE
#endif
#if defined(_WIN32) && defined(CONVEYOR_CTRL_STOP)
  #undef CONVEYOR_CTRL_STOP
#endif
#if defined(_WIN32) && defined(CONVEYOR_CTRL_FORWARD)
  #undef CONVEYOR_CTRL_FORWARD
#endif

  enum {
    CONVEYOR_CTRL_REVERSE = -1,
    CONVEYOR_CTRL_STOP = 0,
    CONVEYOR_CTRL_FORWARD = 1,
  };


  typedef boost::shared_ptr< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> const> ConstPtr;

}; // struct ConveyorCommand_

typedef ::twinny_msgs::ConveyorCommand_<std::allocator<void> > ConveyorCommand;

typedef boost::shared_ptr< ::twinny_msgs::ConveyorCommand > ConveyorCommandPtr;
typedef boost::shared_ptr< ::twinny_msgs::ConveyorCommand const> ConveyorCommandConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::ConveyorCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::ConveyorCommand_<ContainerAllocator1> & lhs, const ::twinny_msgs::ConveyorCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.type == rhs.type &&
    lhs.conveyor1_control == rhs.conveyor1_control &&
    lhs.conveyor2_control == rhs.conveyor2_control &&
    lhs.door_open_control == rhs.door_open_control &&
    lhs.fall_prevention_device_control == rhs.fall_prevention_device_control;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::ConveyorCommand_<ContainerAllocator1> & lhs, const ::twinny_msgs::ConveyorCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0a14a0f1bac068f9cdcfcbcb626cbfca";
  }

  static const char* value(const ::twinny_msgs::ConveyorCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0a14a0f1bac068f9ULL;
  static const uint64_t static_value2 = 0xcdcfcbcb626cbfcaULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/ConveyorCommand";
  }

  static const char* value(const ::twinny_msgs::ConveyorCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string type\n"
"\n"
"int8 CONVEYOR_CTRL_REVERSE = -1\n"
"int8 CONVEYOR_CTRL_STOP    = 0\n"
"int8 CONVEYOR_CTRL_FORWARD = 1\n"
"\n"
"int8 conveyor1_control\n"
"int8 conveyor2_control\n"
"\n"
"bool door_open_control\n"
"\n"
"bool fall_prevention_device_control\n"
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

  static const char* value(const ::twinny_msgs::ConveyorCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.type);
      stream.next(m.conveyor1_control);
      stream.next(m.conveyor2_control);
      stream.next(m.door_open_control);
      stream.next(m.fall_prevention_device_control);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConveyorCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::ConveyorCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::ConveyorCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "conveyor1_control: ";
    Printer<int8_t>::stream(s, indent + "  ", v.conveyor1_control);
    s << indent << "conveyor2_control: ";
    Printer<int8_t>::stream(s, indent + "  ", v.conveyor2_control);
    s << indent << "door_open_control: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.door_open_control);
    s << indent << "fall_prevention_device_control: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fall_prevention_device_control);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_CONVEYORCOMMAND_H
