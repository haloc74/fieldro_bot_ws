// Generated by gencpp from file twinny_msgs/SafetyReportV2.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_SAFETYREPORTV2_H
#define TWINNY_MSGS_MESSAGE_SAFETYREPORTV2_H


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
struct SafetyReportV2_
{
  typedef SafetyReportV2_<ContainerAllocator> Type;

  SafetyReportV2_()
    : header()
    , mode(0)
    , estop_switch_status(false)
    , sto_status(false)
    , sto_feedback_status(false)
    , ossd_front_status(false)
    , ossd_rear_status(false)
    , external_stop_status(false)
    , reset_switch_usable_flag(false)
    , reset_switch_toggle(false)
    , manual_move_switch_usable_flag(false)
    , manual_move_switch_status(false)
    , lidar_front_warn(false)
    , lidar_rear_warn(false)
    , lidar_power_status(false)
    , mcu_watchdog_status_master(0)
    , mcu_watchdog_status_slave(0)
    , fault_detected(false)
    , fault_inconsitent_sequence_two_mcu(false)
    , fault_different_data_two_mcu(false)
    , fault_safety_function(0)
    , fault_mcu()  {
      fault_mcu.assign(0);
  }
  SafetyReportV2_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mode(0)
    , estop_switch_status(false)
    , sto_status(false)
    , sto_feedback_status(false)
    , ossd_front_status(false)
    , ossd_rear_status(false)
    , external_stop_status(false)
    , reset_switch_usable_flag(false)
    , reset_switch_toggle(false)
    , manual_move_switch_usable_flag(false)
    , manual_move_switch_status(false)
    , lidar_front_warn(false)
    , lidar_rear_warn(false)
    , lidar_power_status(false)
    , mcu_watchdog_status_master(0)
    , mcu_watchdog_status_slave(0)
    , fault_detected(false)
    , fault_inconsitent_sequence_two_mcu(false)
    , fault_different_data_two_mcu(false)
    , fault_safety_function(0)
    , fault_mcu()  {
  (void)_alloc;
      fault_mcu.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int8_t _mode_type;
  _mode_type mode;

   typedef uint8_t _estop_switch_status_type;
  _estop_switch_status_type estop_switch_status;

   typedef uint8_t _sto_status_type;
  _sto_status_type sto_status;

   typedef uint8_t _sto_feedback_status_type;
  _sto_feedback_status_type sto_feedback_status;

   typedef uint8_t _ossd_front_status_type;
  _ossd_front_status_type ossd_front_status;

   typedef uint8_t _ossd_rear_status_type;
  _ossd_rear_status_type ossd_rear_status;

   typedef uint8_t _external_stop_status_type;
  _external_stop_status_type external_stop_status;

   typedef uint8_t _reset_switch_usable_flag_type;
  _reset_switch_usable_flag_type reset_switch_usable_flag;

   typedef uint8_t _reset_switch_toggle_type;
  _reset_switch_toggle_type reset_switch_toggle;

   typedef uint8_t _manual_move_switch_usable_flag_type;
  _manual_move_switch_usable_flag_type manual_move_switch_usable_flag;

   typedef uint8_t _manual_move_switch_status_type;
  _manual_move_switch_status_type manual_move_switch_status;

   typedef uint8_t _lidar_front_warn_type;
  _lidar_front_warn_type lidar_front_warn;

   typedef uint8_t _lidar_rear_warn_type;
  _lidar_rear_warn_type lidar_rear_warn;

   typedef uint8_t _lidar_power_status_type;
  _lidar_power_status_type lidar_power_status;

   typedef uint8_t _mcu_watchdog_status_master_type;
  _mcu_watchdog_status_master_type mcu_watchdog_status_master;

   typedef uint8_t _mcu_watchdog_status_slave_type;
  _mcu_watchdog_status_slave_type mcu_watchdog_status_slave;

   typedef uint8_t _fault_detected_type;
  _fault_detected_type fault_detected;

   typedef uint8_t _fault_inconsitent_sequence_two_mcu_type;
  _fault_inconsitent_sequence_two_mcu_type fault_inconsitent_sequence_two_mcu;

   typedef uint8_t _fault_different_data_two_mcu_type;
  _fault_different_data_two_mcu_type fault_different_data_two_mcu;

   typedef uint16_t _fault_safety_function_type;
  _fault_safety_function_type fault_safety_function;

   typedef boost::array<uint8_t, 2>  _fault_mcu_type;
  _fault_mcu_type fault_mcu;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(MODE_NORMAL)
  #undef MODE_NORMAL
#endif
#if defined(_WIN32) && defined(MODE_OSSD_MUTE_MOVE)
  #undef MODE_OSSD_MUTE_MOVE
#endif
#if defined(_WIN32) && defined(MODE_MANUAL_MOVE)
  #undef MODE_MANUAL_MOVE
#endif
#if defined(_WIN32) && defined(MODE_EMERGENCY_STOP)
  #undef MODE_EMERGENCY_STOP
#endif
#if defined(_WIN32) && defined(MODE_PROTECTIVE_STOP)
  #undef MODE_PROTECTIVE_STOP
#endif
#if defined(_WIN32) && defined(MODE_EXTERNAL_STOP)
  #undef MODE_EXTERNAL_STOP
#endif
#if defined(_WIN32) && defined(MCU_WATCHDOG_NORMAL)
  #undef MCU_WATCHDOG_NORMAL
#endif
#if defined(_WIN32) && defined(MCU_WATCHDOG_ALARM)
  #undef MCU_WATCHDOG_ALARM
#endif
#if defined(_WIN32) && defined(MCU_WATCHDOG_FAULT)
  #undef MCU_WATCHDOG_FAULT
#endif
#if defined(_WIN32) && defined(FAULT_EMERGENCY_SW_FAULT)
  #undef FAULT_EMERGENCY_SW_FAULT
#endif
#if defined(_WIN32) && defined(FAULT_STO_FAULT)
  #undef FAULT_STO_FAULT
#endif
#if defined(_WIN32) && defined(FAULT_OSSD_FRONT)
  #undef FAULT_OSSD_FRONT
#endif
#if defined(_WIN32) && defined(FAULT_OSSD_REAR)
  #undef FAULT_OSSD_REAR
#endif
#if defined(_WIN32) && defined(FAULT_LIDAR_FRONT)
  #undef FAULT_LIDAR_FRONT
#endif
#if defined(_WIN32) && defined(FAULT_LIDAR_REAR)
  #undef FAULT_LIDAR_REAR
#endif
#if defined(_WIN32) && defined(FAULT_EXTERNAL_STOP)
  #undef FAULT_EXTERNAL_STOP
#endif
#if defined(_WIN32) && defined(FAULT_PROGRAM_TIMING)
  #undef FAULT_PROGRAM_TIMING
#endif
#if defined(_WIN32) && defined(FAULT_PC_BOARD_CHECK)
  #undef FAULT_PC_BOARD_CHECK
#endif
#if defined(_WIN32) && defined(MCU_FAULT_NO_ERROR)
  #undef MCU_FAULT_NO_ERROR
#endif
#if defined(_WIN32) && defined(MCU_FAULT_CORE_TEST_FAIL)
  #undef MCU_FAULT_CORE_TEST_FAIL
#endif
#if defined(_WIN32) && defined(MCU_FAULT_RAM_TEST_FAIL)
  #undef MCU_FAULT_RAM_TEST_FAIL
#endif
#if defined(_WIN32) && defined(MCU_FAULT_FLASH_TEST_FAIL)
  #undef MCU_FAULT_FLASH_TEST_FAIL
#endif
#if defined(_WIN32) && defined(MCU_FAULT_PWR_SETTING_MISMATCH)
  #undef MCU_FAULT_PWR_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_RCC_SETTING_MISMATCH)
  #undef MCU_FAULT_RCC_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_GPIO_SETTING_MISMATCH)
  #undef MCU_FAULT_GPIO_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_SYSCFG_SETTING_MISMATCH)
  #undef MCU_FAULT_SYSCFG_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_DMA_SETTING_MISMATCH)
  #undef MCU_FAULT_DMA_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_NVIC_SETTING_MISMATCH)
  #undef MCU_FAULT_NVIC_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_ADC_SETTING_MISMATCH)
  #undef MCU_FAULT_ADC_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_VREFBUF_SETTING_MISMATCH)
  #undef MCU_FAULT_VREFBUF_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_WDG_SETTING_MISMATCH)
  #undef MCU_FAULT_WDG_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_SPI_SETTING_MISMATCH)
  #undef MCU_FAULT_SPI_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_CAN_SETTING_MISMATCH)
  #undef MCU_FAULT_CAN_SETTING_MISMATCH
#endif
#if defined(_WIN32) && defined(MCU_FAULT_POWERING_ERROR)
  #undef MCU_FAULT_POWERING_ERROR
#endif
#if defined(_WIN32) && defined(MCU_FAULT_CLOCKING_ERROR)
  #undef MCU_FAULT_CLOCKING_ERROR
#endif
#if defined(_WIN32) && defined(MCU_FAULT_DIAGNOSTIC_ERROR)
  #undef MCU_FAULT_DIAGNOSTIC_ERROR
#endif
#if defined(_WIN32) && defined(MCU_FAULT_CAN_ERROR)
  #undef MCU_FAULT_CAN_ERROR
#endif
#if defined(_WIN32) && defined(MCU_FAULT_RESET_OCCURED)
  #undef MCU_FAULT_RESET_OCCURED
#endif

  enum {
    MODE_NORMAL = 0,
    MODE_OSSD_MUTE_MOVE = 1,
    MODE_MANUAL_MOVE = 2,
    MODE_EMERGENCY_STOP = -1,
    MODE_PROTECTIVE_STOP = -2,
    MODE_EXTERNAL_STOP = -3,
    MCU_WATCHDOG_NORMAL = 0u,
    MCU_WATCHDOG_ALARM = 1u,
    MCU_WATCHDOG_FAULT = 2u,
    FAULT_EMERGENCY_SW_FAULT = 1u,
    FAULT_STO_FAULT = 2u,
    FAULT_OSSD_FRONT = 3u,
    FAULT_OSSD_REAR = 4u,
    FAULT_LIDAR_FRONT = 5u,
    FAULT_LIDAR_REAR = 6u,
    FAULT_EXTERNAL_STOP = 7u,
    FAULT_PROGRAM_TIMING = 8u,
    FAULT_PC_BOARD_CHECK = 9u,
    MCU_FAULT_NO_ERROR = 0u,
    MCU_FAULT_CORE_TEST_FAIL = 1u,
    MCU_FAULT_RAM_TEST_FAIL = 2u,
    MCU_FAULT_FLASH_TEST_FAIL = 3u,
    MCU_FAULT_PWR_SETTING_MISMATCH = 4u,
    MCU_FAULT_RCC_SETTING_MISMATCH = 5u,
    MCU_FAULT_GPIO_SETTING_MISMATCH = 6u,
    MCU_FAULT_SYSCFG_SETTING_MISMATCH = 7u,
    MCU_FAULT_DMA_SETTING_MISMATCH = 8u,
    MCU_FAULT_NVIC_SETTING_MISMATCH = 9u,
    MCU_FAULT_ADC_SETTING_MISMATCH = 10u,
    MCU_FAULT_VREFBUF_SETTING_MISMATCH = 11u,
    MCU_FAULT_WDG_SETTING_MISMATCH = 12u,
    MCU_FAULT_SPI_SETTING_MISMATCH = 13u,
    MCU_FAULT_CAN_SETTING_MISMATCH = 14u,
    MCU_FAULT_POWERING_ERROR = 15u,
    MCU_FAULT_CLOCKING_ERROR = 16u,
    MCU_FAULT_DIAGNOSTIC_ERROR = 17u,
    MCU_FAULT_CAN_ERROR = 18u,
    MCU_FAULT_RESET_OCCURED = 255u,
  };


  typedef boost::shared_ptr< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> const> ConstPtr;

}; // struct SafetyReportV2_

typedef ::twinny_msgs::SafetyReportV2_<std::allocator<void> > SafetyReportV2;

typedef boost::shared_ptr< ::twinny_msgs::SafetyReportV2 > SafetyReportV2Ptr;
typedef boost::shared_ptr< ::twinny_msgs::SafetyReportV2 const> SafetyReportV2ConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::SafetyReportV2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::SafetyReportV2_<ContainerAllocator1> & lhs, const ::twinny_msgs::SafetyReportV2_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.mode == rhs.mode &&
    lhs.estop_switch_status == rhs.estop_switch_status &&
    lhs.sto_status == rhs.sto_status &&
    lhs.sto_feedback_status == rhs.sto_feedback_status &&
    lhs.ossd_front_status == rhs.ossd_front_status &&
    lhs.ossd_rear_status == rhs.ossd_rear_status &&
    lhs.external_stop_status == rhs.external_stop_status &&
    lhs.reset_switch_usable_flag == rhs.reset_switch_usable_flag &&
    lhs.reset_switch_toggle == rhs.reset_switch_toggle &&
    lhs.manual_move_switch_usable_flag == rhs.manual_move_switch_usable_flag &&
    lhs.manual_move_switch_status == rhs.manual_move_switch_status &&
    lhs.lidar_front_warn == rhs.lidar_front_warn &&
    lhs.lidar_rear_warn == rhs.lidar_rear_warn &&
    lhs.lidar_power_status == rhs.lidar_power_status &&
    lhs.mcu_watchdog_status_master == rhs.mcu_watchdog_status_master &&
    lhs.mcu_watchdog_status_slave == rhs.mcu_watchdog_status_slave &&
    lhs.fault_detected == rhs.fault_detected &&
    lhs.fault_inconsitent_sequence_two_mcu == rhs.fault_inconsitent_sequence_two_mcu &&
    lhs.fault_different_data_two_mcu == rhs.fault_different_data_two_mcu &&
    lhs.fault_safety_function == rhs.fault_safety_function &&
    lhs.fault_mcu == rhs.fault_mcu;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::SafetyReportV2_<ContainerAllocator1> & lhs, const ::twinny_msgs::SafetyReportV2_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "29c0534163876600d31359fed6020e8b";
  }

  static const char* value(const ::twinny_msgs::SafetyReportV2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x29c0534163876600ULL;
  static const uint64_t static_value2 = 0xd31359fed6020e8bULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/SafetyReportV2";
  }

  static const char* value(const ::twinny_msgs::SafetyReportV2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"int8 MODE_NORMAL=0\n"
"int8 MODE_OSSD_MUTE_MOVE=1\n"
"int8 MODE_MANUAL_MOVE=2\n"
"int8 MODE_EMERGENCY_STOP=-1\n"
"int8 MODE_PROTECTIVE_STOP=-2\n"
"int8 MODE_EXTERNAL_STOP=-3\n"
"\n"
"int8 mode\n"
"\n"
"bool estop_switch_status\n"
"bool sto_status\n"
"bool sto_feedback_status\n"
"bool ossd_front_status\n"
"bool ossd_rear_status\n"
"bool external_stop_status\n"
"\n"
"bool reset_switch_usable_flag\n"
"bool reset_switch_toggle\n"
"bool manual_move_switch_usable_flag\n"
"bool manual_move_switch_status\n"
"bool lidar_front_warn\n"
"bool lidar_rear_warn\n"
"bool lidar_power_status\n"
"\n"
"uint8 MCU_WATCHDOG_NORMAL=0\n"
"uint8 MCU_WATCHDOG_ALARM=1\n"
"uint8 MCU_WATCHDOG_FAULT=2\n"
"\n"
"uint8 mcu_watchdog_status_master\n"
"uint8 mcu_watchdog_status_slave\n"
"\n"
"bool fault_detected\n"
"\n"
"bool fault_inconsitent_sequence_two_mcu\n"
"bool fault_different_data_two_mcu\n"
"\n"
"uint8 FAULT_EMERGENCY_SW_FAULT=1\n"
"uint8 FAULT_STO_FAULT=2\n"
"uint8 FAULT_OSSD_FRONT=3\n"
"uint8 FAULT_OSSD_REAR=4\n"
"uint8 FAULT_LIDAR_FRONT=5\n"
"uint8 FAULT_LIDAR_REAR=6\n"
"uint8 FAULT_EXTERNAL_STOP=7\n"
"uint8 FAULT_PROGRAM_TIMING=8\n"
"uint8 FAULT_PC_BOARD_CHECK=9\n"
"uint16 fault_safety_function\n"
"\n"
"uint8 MCU_FAULT_NO_ERROR=0\n"
"uint8 MCU_FAULT_CORE_TEST_FAIL=1\n"
"uint8 MCU_FAULT_RAM_TEST_FAIL=2\n"
"uint8 MCU_FAULT_FLASH_TEST_FAIL=3\n"
"uint8 MCU_FAULT_PWR_SETTING_MISMATCH=4\n"
"uint8 MCU_FAULT_RCC_SETTING_MISMATCH=5\n"
"uint8 MCU_FAULT_GPIO_SETTING_MISMATCH=6\n"
"uint8 MCU_FAULT_SYSCFG_SETTING_MISMATCH=7\n"
"uint8 MCU_FAULT_DMA_SETTING_MISMATCH=8\n"
"uint8 MCU_FAULT_NVIC_SETTING_MISMATCH=9\n"
"uint8 MCU_FAULT_ADC_SETTING_MISMATCH=10\n"
"uint8 MCU_FAULT_VREFBUF_SETTING_MISMATCH=11\n"
"uint8 MCU_FAULT_WDG_SETTING_MISMATCH=12\n"
"uint8 MCU_FAULT_SPI_SETTING_MISMATCH=13\n"
"uint8 MCU_FAULT_CAN_SETTING_MISMATCH=14\n"
"uint8 MCU_FAULT_POWERING_ERROR=15\n"
"uint8 MCU_FAULT_CLOCKING_ERROR=16\n"
"uint8 MCU_FAULT_DIAGNOSTIC_ERROR=17\n"
"uint8 MCU_FAULT_CAN_ERROR=18\n"
"uint8 MCU_FAULT_RESET_OCCURED=255\n"
"uint8[2] fault_mcu\n"
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

  static const char* value(const ::twinny_msgs::SafetyReportV2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mode);
      stream.next(m.estop_switch_status);
      stream.next(m.sto_status);
      stream.next(m.sto_feedback_status);
      stream.next(m.ossd_front_status);
      stream.next(m.ossd_rear_status);
      stream.next(m.external_stop_status);
      stream.next(m.reset_switch_usable_flag);
      stream.next(m.reset_switch_toggle);
      stream.next(m.manual_move_switch_usable_flag);
      stream.next(m.manual_move_switch_status);
      stream.next(m.lidar_front_warn);
      stream.next(m.lidar_rear_warn);
      stream.next(m.lidar_power_status);
      stream.next(m.mcu_watchdog_status_master);
      stream.next(m.mcu_watchdog_status_slave);
      stream.next(m.fault_detected);
      stream.next(m.fault_inconsitent_sequence_two_mcu);
      stream.next(m.fault_different_data_two_mcu);
      stream.next(m.fault_safety_function);
      stream.next(m.fault_mcu);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SafetyReportV2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::SafetyReportV2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::SafetyReportV2_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
    s << indent << "estop_switch_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.estop_switch_status);
    s << indent << "sto_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sto_status);
    s << indent << "sto_feedback_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sto_feedback_status);
    s << indent << "ossd_front_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ossd_front_status);
    s << indent << "ossd_rear_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ossd_rear_status);
    s << indent << "external_stop_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.external_stop_status);
    s << indent << "reset_switch_usable_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reset_switch_usable_flag);
    s << indent << "reset_switch_toggle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reset_switch_toggle);
    s << indent << "manual_move_switch_usable_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.manual_move_switch_usable_flag);
    s << indent << "manual_move_switch_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.manual_move_switch_status);
    s << indent << "lidar_front_warn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lidar_front_warn);
    s << indent << "lidar_rear_warn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lidar_rear_warn);
    s << indent << "lidar_power_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lidar_power_status);
    s << indent << "mcu_watchdog_status_master: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mcu_watchdog_status_master);
    s << indent << "mcu_watchdog_status_slave: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mcu_watchdog_status_slave);
    s << indent << "fault_detected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fault_detected);
    s << indent << "fault_inconsitent_sequence_two_mcu: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fault_inconsitent_sequence_two_mcu);
    s << indent << "fault_different_data_two_mcu: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fault_different_data_two_mcu);
    s << indent << "fault_safety_function: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.fault_safety_function);
    s << indent << "fault_mcu[]" << std::endl;
    for (size_t i = 0; i < v.fault_mcu.size(); ++i)
    {
      s << indent << "  fault_mcu[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.fault_mcu[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_SAFETYREPORTV2_H
