// Generated by gencpp from file twinny_msgs/Kinematics_ModeResponse.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_KINEMATICS_MODERESPONSE_H
#define TWINNY_MSGS_MESSAGE_KINEMATICS_MODERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace twinny_msgs
{
template <class ContainerAllocator>
struct Kinematics_ModeResponse_
{
  typedef Kinematics_ModeResponse_<ContainerAllocator> Type;

  Kinematics_ModeResponse_()
    : current_mode(0)
    , current_arg(0.0)  {
    }
  Kinematics_ModeResponse_(const ContainerAllocator& _alloc)
    : current_mode(0)
    , current_arg(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _current_mode_type;
  _current_mode_type current_mode;

   typedef double _current_arg_type;
  _current_arg_type current_arg;





  typedef boost::shared_ptr< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Kinematics_ModeResponse_

typedef ::twinny_msgs::Kinematics_ModeResponse_<std::allocator<void> > Kinematics_ModeResponse;

typedef boost::shared_ptr< ::twinny_msgs::Kinematics_ModeResponse > Kinematics_ModeResponsePtr;
typedef boost::shared_ptr< ::twinny_msgs::Kinematics_ModeResponse const> Kinematics_ModeResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator1> & lhs, const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator2> & rhs)
{
  return lhs.current_mode == rhs.current_mode &&
    lhs.current_arg == rhs.current_arg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator1> & lhs, const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8767c226c94c53c8a28ce405bdd34c65";
  }

  static const char* value(const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8767c226c94c53c8ULL;
  static const uint64_t static_value2 = 0xa28ce405bdd34c65ULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/Kinematics_ModeResponse";
  }

  static const char* value(const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 current_mode\n"
"float64 current_arg\n"
;
  }

  static const char* value(const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_mode);
      stream.next(m.current_arg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Kinematics_ModeResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::Kinematics_ModeResponse_<ContainerAllocator>& v)
  {
    s << indent << "current_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.current_mode);
    s << indent << "current_arg: ";
    Printer<double>::stream(s, indent + "  ", v.current_arg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_KINEMATICS_MODERESPONSE_H
