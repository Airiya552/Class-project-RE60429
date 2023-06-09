// Generated by gencpp from file your_package/CircleRequest.msg
// DO NOT EDIT!


#ifndef YOUR_PACKAGE_MESSAGE_CIRCLEREQUEST_H
#define YOUR_PACKAGE_MESSAGE_CIRCLEREQUEST_H


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
struct CircleRequest_
{
  typedef CircleRequest_<ContainerAllocator> Type;

  CircleRequest_()
    : A(0.0)  {
    }
  CircleRequest_(const ContainerAllocator& _alloc)
    : A(0.0)  {
  (void)_alloc;
    }



   typedef float _A_type;
  _A_type A;





  typedef boost::shared_ptr< ::your_package::CircleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::your_package::CircleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CircleRequest_

typedef ::your_package::CircleRequest_<std::allocator<void> > CircleRequest;

typedef boost::shared_ptr< ::your_package::CircleRequest > CircleRequestPtr;
typedef boost::shared_ptr< ::your_package::CircleRequest const> CircleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::your_package::CircleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::your_package::CircleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::your_package::CircleRequest_<ContainerAllocator1> & lhs, const ::your_package::CircleRequest_<ContainerAllocator2> & rhs)
{
  return lhs.A == rhs.A;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::your_package::CircleRequest_<ContainerAllocator1> & lhs, const ::your_package::CircleRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace your_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::your_package::CircleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::your_package::CircleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::CircleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::CircleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::CircleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::CircleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::your_package::CircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86dc5e57feab1a2b50e6db6b5a647d08";
  }

  static const char* value(const ::your_package::CircleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86dc5e57feab1a2bULL;
  static const uint64_t static_value2 = 0x50e6db6b5a647d08ULL;
};

template<class ContainerAllocator>
struct DataType< ::your_package::CircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "your_package/CircleRequest";
  }

  static const char* value(const ::your_package::CircleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::your_package::CircleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 A\n"
;
  }

  static const char* value(const ::your_package::CircleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::your_package::CircleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.A);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CircleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::your_package::CircleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::your_package::CircleRequest_<ContainerAllocator>& v)
  {
    s << indent << "A: ";
    Printer<float>::stream(s, indent + "  ", v.A);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOUR_PACKAGE_MESSAGE_CIRCLEREQUEST_H
