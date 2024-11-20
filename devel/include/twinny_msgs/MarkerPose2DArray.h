// Generated by gencpp from file twinny_msgs/MarkerPose2DArray.msg
// DO NOT EDIT!


#ifndef TWINNY_MSGS_MESSAGE_MARKERPOSE2DARRAY_H
#define TWINNY_MSGS_MESSAGE_MARKERPOSE2DARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <twinny_msgs/MarkerPose2D.h>

namespace twinny_msgs
{
template <class ContainerAllocator>
struct MarkerPose2DArray_
{
  typedef MarkerPose2DArray_<ContainerAllocator> Type;

  MarkerPose2DArray_()
    : header()
    , markerPose2D()  {
    }
  MarkerPose2DArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , markerPose2D(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::twinny_msgs::MarkerPose2D_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::twinny_msgs::MarkerPose2D_<ContainerAllocator> >> _markerPose2D_type;
  _markerPose2D_type markerPose2D;





  typedef boost::shared_ptr< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> const> ConstPtr;

}; // struct MarkerPose2DArray_

typedef ::twinny_msgs::MarkerPose2DArray_<std::allocator<void> > MarkerPose2DArray;

typedef boost::shared_ptr< ::twinny_msgs::MarkerPose2DArray > MarkerPose2DArrayPtr;
typedef boost::shared_ptr< ::twinny_msgs::MarkerPose2DArray const> MarkerPose2DArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator1> & lhs, const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.markerPose2D == rhs.markerPose2D;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator1> & lhs, const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace twinny_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ef13624f97fd199db36b03b16978e671";
  }

  static const char* value(const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xef13624f97fd199dULL;
  static const uint64_t static_value2 = 0xb36b03b16978e671ULL;
};

template<class ContainerAllocator>
struct DataType< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "twinny_msgs/MarkerPose2DArray";
  }

  static const char* value(const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"twinny_msgs/MarkerPose2D[] markerPose2D\n"
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
"\n"
"================================================================================\n"
"MSG: twinny_msgs/MarkerPose2D\n"
"Header header\n"
"\n"
"uint8 state\n"
"uint8 SUCCESS=1\n"
"uint8 FAILED_TO_DETECT=2\n"
"uint8 FAILED_TO_GET_CAMERA_DATA=3\n"
"\n"
"uint8 markerId\n"
"\n"
"geometry_msgs/Pose2D pose\n"
"\n"
"float32 distance\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.markerPose2D);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MarkerPose2DArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::twinny_msgs::MarkerPose2DArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "markerPose2D[]" << std::endl;
    for (size_t i = 0; i < v.markerPose2D.size(); ++i)
    {
      s << indent << "  markerPose2D[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::twinny_msgs::MarkerPose2D_<ContainerAllocator> >::stream(s, indent + "    ", v.markerPose2D[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TWINNY_MSGS_MESSAGE_MARKERPOSE2DARRAY_H
