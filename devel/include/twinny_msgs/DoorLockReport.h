// Generated by gencpp from file twinny_msgs/DoorLockReport.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_DOORLOCKREPORT_H
#define TWINNY_MSGS_MESSAGE_DOORLOCKREPORT_H


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
struct DoorLockReport_
{
  typedef DoorLockReport_<ContainerAllocator> Type;

  DoorLockReport_()
    : header()
    , type()
    , door_lock_id(0)
    , door_lock_state(0)
    , door_open_state(false)  {
    }
  DoorLockReport_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , type(_alloc)
    , door_lock_id(0)
    , door_lock_state(0)
    , door_open_state(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef uint32_t _door_lock_id_type;
  _door_lock_id_type door_lock_id;

   typedef int32_t _door_lock_state_type;
  _door_lock_state_type door_lock_state;

   typedef uint8_t _door_open_state_type;
  _door_open_state_type door_open_state;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DOOR_REPORT_STOP)
  #undef DOOR_REPORT_STOP
#endif
#if defined(_WIN32) && defined(DOOR_REPORT_LOCK)
  #undef DOOR_REPORT_LOCK
#endif
#if defined(_WIN32) && defined(DOOR_REPORT_LOCKING)
  #undef DOOR_REPORT_LOCKING
#endif
#if defined(_WIN32) && defined(DOOR_REPORT_UNLOCK)
  #undef DOOR_REPORT_UNLOCK
#endif
#if defined(_WIN32) && defined(DOOR_REPORT_UNLOCKING)
  #undef DOOR_REPORT_UNLOCKING
#endif

  enum {
    DOOR_REPORT_STOP = 0,
    DOOR_REPORT_LOCK = 1,
    DOOR_REPORT_LOCKING = 2,
    DOOR_REPORT_UNLOCK = 3,
    DOOR_REPORT_UNLOCKING = 4,
  };


  typedef boost::shared_ptr< ::twinny_msgs::DoorLockReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::DoorLockReport_<ContainerAllocator> const> ConstPtr;

}; // struct DoorLockReport_

typedef ::twinny_msgs::DoorLockReport_<std::allocator<void> > DoorLockReport;

typedef boost::shared_ptr< ::twinny_msgs::DoorLockReport > DoorLockReportPtr;
typedef boost::shared_ptr< ::twinny_msgs::DoorLockReport const> DoorLockReportConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::DoorLockReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::DoorLockReport_<ContainerAllocator1> & lhs, const ::twinny_msgs::DoorLockReport_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.type == rhs.type &&
    lhs.door_lock_id == rhs.door_lock_id &&
    lhs.door_lock_state == rhs.door_lock_state &&
    lhs.door_open_state == rhs.door_open_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::DoorLockReport_<ContainerAllocator1> & lhs, const ::twinny_msgs::DoorLockReport_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::DoorLockReport_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::DoorLockReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::DoorLockReport_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de2acf7851fcb667067d0326218a4ca1";
  }

  static const char* value(const ::twinny_msgs::DoorLockReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde2acf7851fcb667ULL;
  static const uint64_t static_value2 = 0x067d0326218a4ca1ULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/DoorLockReport";
  }

  static const char* value(const ::twinny_msgs::DoorLockReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"string type\n"
"\n"
"uint32 door_lock_id\n"
"\n"
"int32 DOOR_REPORT_STOP=0\n"
"int32 DOOR_REPORT_LOCK=1\n"
"int32 DOOR_REPORT_LOCKING=2\n"
"int32 DOOR_REPORT_UNLOCK=3\n"
"int32 DOOR_REPORT_UNLOCKING=4\n"
"\n"
"int32 door_lock_state\n"
"bool door_open_state\n"
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

  static const char* value(const ::twinny_msgs::DoorLockReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.type);
      stream.next(m.door_lock_id);
      stream.next(m.door_lock_state);
      stream.next(m.door_open_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoorLockReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::DoorLockReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::DoorLockReport_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "door_lock_id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.door_lock_id);
    s << indent << "door_lock_state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.door_lock_state);
    s << indent << "door_open_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.door_open_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_DOORLOCKREPORT_H
