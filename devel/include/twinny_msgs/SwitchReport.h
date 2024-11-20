// Generated by gencpp from file twinny_msgs/SwitchReport.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_SWITCHREPORT_H
#define TWINNY_MSGS_MESSAGE_SWITCHREPORT_H


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
struct SwitchReport_
{
  typedef SwitchReport_<ContainerAllocator> Type;

  SwitchReport_()
    : header()
    , E_STOP_button(false)
    , SW_0_toggle(false)
    , SW_1_toggle(false)
    , SW_2_toggle(false)
    , SW_3_toggle(false)
    , SW_4_toggle(false)
    , SW_5_toggle(false)
    , Sub_SW_0_toggle(false)
    , Sub_SW_1_toggle(false)
    , Sub_SW_2_toggle(false)
    , Sub_SW_3_toggle(false)
    , Sub_SW_4_toggle(false)
    , Sub_SW_5_toggle(false)
    , Docking_hall_sensor(false)
    , Motor_Brake(false)
    , Main_Power_State(false)
    , DockingIR_Power_State(false)  {
    }
  SwitchReport_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , E_STOP_button(false)
    , SW_0_toggle(false)
    , SW_1_toggle(false)
    , SW_2_toggle(false)
    , SW_3_toggle(false)
    , SW_4_toggle(false)
    , SW_5_toggle(false)
    , Sub_SW_0_toggle(false)
    , Sub_SW_1_toggle(false)
    , Sub_SW_2_toggle(false)
    , Sub_SW_3_toggle(false)
    , Sub_SW_4_toggle(false)
    , Sub_SW_5_toggle(false)
    , Docking_hall_sensor(false)
    , Motor_Brake(false)
    , Main_Power_State(false)
    , DockingIR_Power_State(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _E_STOP_button_type;
  _E_STOP_button_type E_STOP_button;

   typedef uint8_t _SW_0_toggle_type;
  _SW_0_toggle_type SW_0_toggle;

   typedef uint8_t _SW_1_toggle_type;
  _SW_1_toggle_type SW_1_toggle;

   typedef uint8_t _SW_2_toggle_type;
  _SW_2_toggle_type SW_2_toggle;

   typedef uint8_t _SW_3_toggle_type;
  _SW_3_toggle_type SW_3_toggle;

   typedef uint8_t _SW_4_toggle_type;
  _SW_4_toggle_type SW_4_toggle;

   typedef uint8_t _SW_5_toggle_type;
  _SW_5_toggle_type SW_5_toggle;

   typedef uint8_t _Sub_SW_0_toggle_type;
  _Sub_SW_0_toggle_type Sub_SW_0_toggle;

   typedef uint8_t _Sub_SW_1_toggle_type;
  _Sub_SW_1_toggle_type Sub_SW_1_toggle;

   typedef uint8_t _Sub_SW_2_toggle_type;
  _Sub_SW_2_toggle_type Sub_SW_2_toggle;

   typedef uint8_t _Sub_SW_3_toggle_type;
  _Sub_SW_3_toggle_type Sub_SW_3_toggle;

   typedef uint8_t _Sub_SW_4_toggle_type;
  _Sub_SW_4_toggle_type Sub_SW_4_toggle;

   typedef uint8_t _Sub_SW_5_toggle_type;
  _Sub_SW_5_toggle_type Sub_SW_5_toggle;

   typedef uint8_t _Docking_hall_sensor_type;
  _Docking_hall_sensor_type Docking_hall_sensor;

   typedef uint8_t _Motor_Brake_type;
  _Motor_Brake_type Motor_Brake;

   typedef uint8_t _Main_Power_State_type;
  _Main_Power_State_type Main_Power_State;

   typedef uint8_t _DockingIR_Power_State_type;
  _DockingIR_Power_State_type DockingIR_Power_State;





  typedef boost::shared_ptr< ::twinny_msgs::SwitchReport_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::SwitchReport_<ContainerAllocator> const> ConstPtr;

}; // struct SwitchReport_

typedef ::twinny_msgs::SwitchReport_<std::allocator<void> > SwitchReport;

typedef boost::shared_ptr< ::twinny_msgs::SwitchReport > SwitchReportPtr;
typedef boost::shared_ptr< ::twinny_msgs::SwitchReport const> SwitchReportConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::SwitchReport_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::SwitchReport_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::SwitchReport_<ContainerAllocator1> & lhs, const ::twinny_msgs::SwitchReport_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.E_STOP_button == rhs.E_STOP_button &&
    lhs.SW_0_toggle == rhs.SW_0_toggle &&
    lhs.SW_1_toggle == rhs.SW_1_toggle &&
    lhs.SW_2_toggle == rhs.SW_2_toggle &&
    lhs.SW_3_toggle == rhs.SW_3_toggle &&
    lhs.SW_4_toggle == rhs.SW_4_toggle &&
    lhs.SW_5_toggle == rhs.SW_5_toggle &&
    lhs.Sub_SW_0_toggle == rhs.Sub_SW_0_toggle &&
    lhs.Sub_SW_1_toggle == rhs.Sub_SW_1_toggle &&
    lhs.Sub_SW_2_toggle == rhs.Sub_SW_2_toggle &&
    lhs.Sub_SW_3_toggle == rhs.Sub_SW_3_toggle &&
    lhs.Sub_SW_4_toggle == rhs.Sub_SW_4_toggle &&
    lhs.Sub_SW_5_toggle == rhs.Sub_SW_5_toggle &&
    lhs.Docking_hall_sensor == rhs.Docking_hall_sensor &&
    lhs.Motor_Brake == rhs.Motor_Brake &&
    lhs.Main_Power_State == rhs.Main_Power_State &&
    lhs.DockingIR_Power_State == rhs.DockingIR_Power_State;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::SwitchReport_<ContainerAllocator1> & lhs, const ::twinny_msgs::SwitchReport_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::SwitchReport_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::SwitchReport_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::SwitchReport_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a3785c85ae8e5bf04a5bb77839719f66";
  }

  static const char* value(const ::twinny_msgs::SwitchReport_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa3785c85ae8e5bf0ULL;
  static const uint64_t static_value2 = 0x4a5bb77839719f66ULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/SwitchReport";
  }

  static const char* value(const ::twinny_msgs::SwitchReport_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header \n"
"\n"
"bool E_STOP_button\n"
"bool SW_0_toggle\n"
"bool SW_1_toggle\n"
"bool SW_2_toggle\n"
"bool SW_3_toggle\n"
"bool SW_4_toggle\n"
"bool SW_5_toggle\n"
"\n"
"bool Sub_SW_0_toggle\n"
"bool Sub_SW_1_toggle\n"
"bool Sub_SW_2_toggle\n"
"bool Sub_SW_3_toggle\n"
"bool Sub_SW_4_toggle\n"
"bool Sub_SW_5_toggle\n"
"\n"
"\n"
"bool Docking_hall_sensor\n"
"\n"
"bool Motor_Brake\n"
"bool Main_Power_State\n"
"bool DockingIR_Power_State\n"
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

  static const char* value(const ::twinny_msgs::SwitchReport_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.E_STOP_button);
      stream.next(m.SW_0_toggle);
      stream.next(m.SW_1_toggle);
      stream.next(m.SW_2_toggle);
      stream.next(m.SW_3_toggle);
      stream.next(m.SW_4_toggle);
      stream.next(m.SW_5_toggle);
      stream.next(m.Sub_SW_0_toggle);
      stream.next(m.Sub_SW_1_toggle);
      stream.next(m.Sub_SW_2_toggle);
      stream.next(m.Sub_SW_3_toggle);
      stream.next(m.Sub_SW_4_toggle);
      stream.next(m.Sub_SW_5_toggle);
      stream.next(m.Docking_hall_sensor);
      stream.next(m.Motor_Brake);
      stream.next(m.Main_Power_State);
      stream.next(m.DockingIR_Power_State);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SwitchReport_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::SwitchReport_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::SwitchReport_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "E_STOP_button: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.E_STOP_button);
    s << indent << "SW_0_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SW_0_toggle);
    s << indent << "SW_1_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SW_1_toggle);
    s << indent << "SW_2_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SW_2_toggle);
    s << indent << "SW_3_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SW_3_toggle);
    s << indent << "SW_4_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SW_4_toggle);
    s << indent << "SW_5_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.SW_5_toggle);
    s << indent << "Sub_SW_0_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Sub_SW_0_toggle);
    s << indent << "Sub_SW_1_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Sub_SW_1_toggle);
    s << indent << "Sub_SW_2_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Sub_SW_2_toggle);
    s << indent << "Sub_SW_3_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Sub_SW_3_toggle);
    s << indent << "Sub_SW_4_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Sub_SW_4_toggle);
    s << indent << "Sub_SW_5_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Sub_SW_5_toggle);
    s << indent << "Docking_hall_sensor: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Docking_hall_sensor);
    s << indent << "Motor_Brake: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Motor_Brake);
    s << indent << "Main_Power_State: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Main_Power_State);
    s << indent << "DockingIR_Power_State: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.DockingIR_Power_State);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_SWITCHREPORT_H
