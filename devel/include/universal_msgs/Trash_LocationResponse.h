// Generated by gencpp from file universal_msgs/Trash_LocationResponse.msg
// DO NOT EDIT!


#ifndef UNIVERSAL_MSGS_MESSAGE_TRASH_LOCATIONRESPONSE_H
#define UNIVERSAL_MSGS_MESSAGE_TRASH_LOCATIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace universal_msgs
{
template <class ContainerAllocator>
struct Trash_LocationResponse_
{
  typedef Trash_LocationResponse_<ContainerAllocator> Type;

  Trash_LocationResponse_()
    : success(false)  {
    }
  Trash_LocationResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Trash_LocationResponse_

typedef ::universal_msgs::Trash_LocationResponse_<std::allocator<void> > Trash_LocationResponse;

typedef boost::shared_ptr< ::universal_msgs::Trash_LocationResponse > Trash_LocationResponsePtr;
typedef boost::shared_ptr< ::universal_msgs::Trash_LocationResponse const> Trash_LocationResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace universal_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'universal_msgs': ['/home/robin/catkin_car/src/universal_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::universal_msgs::Trash_LocationResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "universal_msgs/Trash_LocationResponse";
  }

  static const char* value(const ::universal_msgs::Trash_LocationResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
\n\
";
  }

  static const char* value(const ::universal_msgs::Trash_LocationResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Trash_LocationResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::universal_msgs::Trash_LocationResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::universal_msgs::Trash_LocationResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UNIVERSAL_MSGS_MESSAGE_TRASH_LOCATIONRESPONSE_H