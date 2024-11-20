// Generated by gencpp from file twinny_msgs/PlcMissionCommand.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_PLCMISSIONCOMMAND_H
#define TWINNY_MSGS_MESSAGE_PLCMISSIONCOMMAND_H


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
struct PlcMissionCommand_
{
  typedef PlcMissionCommand_<ContainerAllocator> Type;

  PlcMissionCommand_()
    : header()
    , mission_mode(0)
    , workspace()
    , magazine_id()
    , workspace_direction(0)
    , in_out_num(0)
    , arm_move_flag(false)  {
    }
  PlcMissionCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mission_mode(0)
    , workspace(_alloc)
    , magazine_id(_alloc)
    , workspace_direction(0)
    , in_out_num(0)
    , arm_move_flag(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _mission_mode_type;
  _mission_mode_type mission_mode;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _workspace_type;
  _workspace_type workspace;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _magazine_id_type;
  _magazine_id_type magazine_id;

   typedef uint8_t _workspace_direction_type;
  _workspace_direction_type workspace_direction;

   typedef uint16_t _in_out_num_type;
  _in_out_num_type in_out_num;

   typedef uint8_t _arm_move_flag_type;
  _arm_move_flag_type arm_move_flag;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(NO_COMMAND)
  #undef NO_COMMAND
#endif
#if defined(_WIN32) && defined(LOAD)
  #undef LOAD
#endif
#if defined(_WIN32) && defined(UNLOAD)
  #undef UNLOAD
#endif
#if defined(_WIN32) && defined(BATTERY_CHANGE)
  #undef BATTERY_CHANGE
#endif
#if defined(_WIN32) && defined(PLC_RESET)
  #undef PLC_RESET
#endif
#if defined(_WIN32) && defined(LEFT)
  #undef LEFT
#endif
#if defined(_WIN32) && defined(RIGHT)
  #undef RIGHT
#endif

  enum {
    NO_COMMAND = 0u,
    LOAD = 1u,
    UNLOAD = 2u,
    BATTERY_CHANGE = 3u,
    PLC_RESET = 4u,
    LEFT = 1u,
    RIGHT = 2u,
  };


  typedef boost::shared_ptr< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> const> ConstPtr;

}; // struct PlcMissionCommand_

typedef ::twinny_msgs::PlcMissionCommand_<std::allocator<void> > PlcMissionCommand;

typedef boost::shared_ptr< ::twinny_msgs::PlcMissionCommand > PlcMissionCommandPtr;
typedef boost::shared_ptr< ::twinny_msgs::PlcMissionCommand const> PlcMissionCommandConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator1> & lhs, const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.mission_mode == rhs.mission_mode &&
    lhs.workspace == rhs.workspace &&
    lhs.magazine_id == rhs.magazine_id &&
    lhs.workspace_direction == rhs.workspace_direction &&
    lhs.in_out_num == rhs.in_out_num &&
    lhs.arm_move_flag == rhs.arm_move_flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator1> & lhs, const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ae536fdf7906e3e3d378a48156bbe28d";
  }

  static const char* value(const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xae536fdf7906e3e3ULL;
  static const uint64_t static_value2 = 0xd378a48156bbe28dULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/PlcMissionCommand";
  }

  static const char* value(const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"uint8 mission_mode\n"
"\n"
"uint8 NO_COMMAND = 0\n"
"uint8 LOAD = 1\n"
"uint8 UNLOAD = 2\n"
"uint8 BATTERY_CHANGE = 3\n"
"uint8 PLC_RESET = 4\n"
"\n"
"string workspace\n"
"string magazine_id\n"
"\n"
"uint8 workspace_direction\n"
"\n"
"uint8 LEFT = 1\n"
"uint8 RIGHT = 2\n"
"\n"
"uint16 in_out_num\n"
"\n"
"bool arm_move_flag\n"
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

  static const char* value(const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mission_mode);
      stream.next(m.workspace);
      stream.next(m.magazine_id);
      stream.next(m.workspace_direction);
      stream.next(m.in_out_num);
      stream.next(m.arm_move_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlcMissionCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::PlcMissionCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::PlcMissionCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mission_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mission_mode);
    s << indent << "workspace: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.workspace);
    s << indent << "magazine_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.magazine_id);
    s << indent << "workspace_direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.workspace_direction);
    s << indent << "in_out_num: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.in_out_num);
    s << indent << "arm_move_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.arm_move_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_PLCMISSIONCOMMAND_H
