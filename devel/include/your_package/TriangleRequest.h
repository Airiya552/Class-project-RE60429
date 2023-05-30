// Generated by gencpp from file your_package/TriangleRequest.msg
// DO NOT EDIT!


#ifndef YOUR_PACKAGE_MESSAGE_TRIANGLEREQUEST_H
#define YOUR_PACKAGE_MESSAGE_TRIANGLEREQUEST_H


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
struct TriangleRequest_
{
  typedef TriangleRequest_<ContainerAllocator> Type;

  TriangleRequest_()
    : A(0.0)
    , B(0.0)  {
    }
  TriangleRequest_(const ContainerAllocator& _alloc)
    : A(0.0)
    , B(0.0)  {
  (void)_alloc;
    }



   typedef float _A_type;
  _A_type A;

   typedef float _B_type;
  _B_type B;





  typedef boost::shared_ptr< ::your_package::TriangleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::your_package::TriangleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TriangleRequest_

typedef ::your_package::TriangleRequest_<std::allocator<void> > TriangleRequest;

typedef boost::shared_ptr< ::your_package::TriangleRequest > TriangleRequestPtr;
typedef boost::shared_ptr< ::your_package::TriangleRequest const> TriangleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::your_package::TriangleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::your_package::TriangleRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::your_package::TriangleRequest_<ContainerAllocator1> & lhs, const ::your_package::TriangleRequest_<ContainerAllocator2> & rhs)
{
  return lhs.A == rhs.A &&
    lhs.B == rhs.B;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::your_package::TriangleRequest_<ContainerAllocator1> & lhs, const ::your_package::TriangleRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace your_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::your_package::TriangleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::your_package::TriangleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::TriangleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::your_package::TriangleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::TriangleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::your_package::TriangleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::your_package::TriangleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "35e01614ccf662166c95dcdcb14e928c";
  }

  static const char* value(const ::your_package::TriangleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x35e01614ccf66216ULL;
  static const uint64_t static_value2 = 0x6c95dcdcb14e928cULL;
};

template<class ContainerAllocator>
struct DataType< ::your_package::TriangleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "your_package/TriangleRequest";
  }

  static const char* value(const ::your_package::TriangleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::your_package::TriangleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 A\n"
"float32 B\n"
;
  }

  static const char* value(const ::your_package::TriangleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::your_package::TriangleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.A);
      stream.next(m.B);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TriangleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::your_package::TriangleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::your_package::TriangleRequest_<ContainerAllocator>& v)
  {
    s << indent << "A: ";
    Printer<float>::stream(s, indent + "  ", v.A);
    s << indent << "B: ";
    Printer<float>::stream(s, indent + "  ", v.B);
  }
};

} // namespace message_operations
} // namespace ros

#endif // YOUR_PACKAGE_MESSAGE_TRIANGLEREQUEST_H
