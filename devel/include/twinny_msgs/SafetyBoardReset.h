// Generated by gencpp from file twinny_msgs/SafetyBoardReset.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_SAFETYBOARDRESET_H
#define TWINNY_MSGS_MESSAGE_SAFETYBOARDRESET_H


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
struct SafetyBoardReset_
{
  typedef SafetyBoardReset_<ContainerAllocator> Type;

  SafetyBoardReset_()
    : header()
    , command(0)  {
    }
  SafetyBoardReset_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , command(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _command_type;
  _command_type command;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(RESET_COMMAND_NO)
  #undef RESET_COMMAND_NO
#endif
#if defined(_WIN32) && defined(RESET_COMMAND_MASTER_MCU)
  #undef RESET_COMMAND_MASTER_MCU
#endif
#if defined(_WIN32) && defined(RESET_COMMAND_SLAVE_MCU)
  #undef RESET_COMMAND_SLAVE_MCU
#endif
#if defined(_WIN32) && defined(RESET_COMMAND_ALL_MCU)
  #undef RESET_COMMAND_ALL_MCU
#endif

  enum {
    RESET_COMMAND_NO = 0u,
    RESET_COMMAND_MASTER_MCU = 1u,
    RESET_COMMAND_SLAVE_MCU = 2u,
    RESET_COMMAND_ALL_MCU = 3u,
  };


  typedef boost::shared_ptr< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> const> ConstPtr;

}; // struct SafetyBoardReset_

typedef ::twinny_msgs::SafetyBoardReset_<std::allocator<void> > SafetyBoardReset;

typedef boost::shared_ptr< ::twinny_msgs::SafetyBoardReset > SafetyBoardResetPtr;
typedef boost::shared_ptr< ::twinny_msgs::SafetyBoardReset const> SafetyBoardResetConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator1> & lhs, const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.command == rhs.command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator1> & lhs, const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
{
  static const char* value()
  {
    return "921eefced639d2eca074a0905654b7c4";
  }

  static const char* value(const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x921eefced639d2ecULL;
  static const uint64_t static_value2 = 0xa074a0905654b7c4ULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/SafetyBoardReset";
  }

  static const char* value(const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"uint8 RESET_COMMAND_NO=0\n"
"uint8 RESET_COMMAND_MASTER_MCU=1\n"
"uint8 RESET_COMMAND_SLAVE_MCU=2\n"
"uint8 RESET_COMMAND_ALL_MCU=3\n"
"\n"
"uint8 command\n"
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

  static const char* value(const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SafetyBoardReset_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::SafetyBoardReset_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::SafetyBoardReset_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_SAFETYBOARDRESET_H
