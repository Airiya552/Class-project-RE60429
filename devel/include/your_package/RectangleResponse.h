// Generated by gencpp from file your_package/RectangleResponse.msg
// DO NOT EDIT!


#ifndef YOUR_PACKAGE_MESSAGE_RECTANGLERESPONSE_H
#define YOUR_PACKAGE_MESSAGE_RECTANGLERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace your_package
{
template <class ContainerAllocator>
struct RectangleResponse_
{
  typedef RectangleResponse_<ContainerAllocator> Type;

  RectangleResponse_()
    : result(0)  {
    }
  RectangleResponse_(const ContainerAllocator& _alloc)
    : result(0)  {
  (void)_alloc;
    }



   typedef int64_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::your_package::RectangleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::your_package::RectangleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RectangleResponse_

typedef ::your_package::RectangleResponse_<std::allocator<void> > RectangleResponse;

typedef boost::shared_ptr< ::your_package::RectangleResponse > RectangleResponsePtr;
typedef boost::shared_ptr< ::your_package::RectangleResponse const> RectangleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::your_package::RectangleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::your_package::RectangleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::your_package::RectangleResponse_<ContainerAllocator1> & lhs, const ::your_package::RectangleResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::your_package::RectangleResponse_<ContainerAllocator1> & lhs, const ::your_package::RectangleResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace your_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::your_package::RectangleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::your_package::RectangleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::RectangleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::RectangleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::RectangleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::RectangleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::your_package::RectangleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b05623554ab950ed237d43d45f0b4dd";
  }

  static const char* value(const ::your_package::RectangleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b05623554ab950eULL;
  static const uint64_t static_value2 = 0xd237d43d45f0b4ddULL;
};

template<class ContainerAllocator>
struct DataType< ::your_package::RectangleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "your_package/RectangleResponse";
  }

  static const char* value(const ::your_package::RectangleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::your_package::RectangleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 result\n"
"\n"
;
  }

  static const char* value(const ::your_package::RectangleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::your_package::RectangleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RectangleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::your_package::RectangleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::your_package::RectangleResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<int64_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOUR_PACKAGE_MESSAGE_RECTANGLERESPONSE_H
