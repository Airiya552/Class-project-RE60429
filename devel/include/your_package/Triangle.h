// Generated by gencpp from file your_package/Triangle.msg
// DO NOT EDIT!


#ifndef YOUR_PACKAGE_MESSAGE_TRIANGLE_H
#define YOUR_PACKAGE_MESSAGE_TRIANGLE_H

#include <ros/service_traits.h>


#include <your_package/TriangleRequest.h>
#include <your_package/TriangleResponse.h>


namespace your_package
{

struct Triangle
{

typedef TriangleRequest Request;
typedef TriangleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Triangle
} // namespace your_package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::your_package::Triangle > {
  static const char* value()
  {
    return "16da0fba2ffd05912bc0c78d91df2ea2";
  }

  static const char* value(const ::your_package::Triangle&) { return value(); }
};

template<>
struct DataType< ::your_package::Triangle > {
  static const char* value()
  {
    return "your_package/Triangle";
  }

  static const char* value(const ::your_package::Triangle&) { return value(); }
};


// service_traits::MD5Sum< ::your_package::TriangleRequest> should match
// service_traits::MD5Sum< ::your_package::Triangle >
template<>
struct MD5Sum< ::your_package::TriangleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::your_package::Triangle >::value();
  }
  static const char* value(const ::your_package::TriangleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::your_package::TriangleRequest> should match
// service_traits::DataType< ::your_package::Triangle >
template<>
struct DataType< ::your_package::TriangleRequest>
{
  static const char* value()
  {
    return DataType< ::your_package::Triangle >::value();
  }
  static const char* value(const ::your_package::TriangleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::your_package::TriangleResponse> should match
// service_traits::MD5Sum< ::your_package::Triangle >
template<>
struct MD5Sum< ::your_package::TriangleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::your_package::Triangle >::value();
  }
  static const char* value(const ::your_package::TriangleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::your_package::TriangleResponse> should match
// service_traits::DataType< ::your_package::Triangle >
template<>
struct DataType< ::your_package::TriangleResponse>
{
  static const char* value()
  {
    return DataType< ::your_package::Triangle >::value();
  }
  static const char* value(const ::your_package::TriangleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YOUR_PACKAGE_MESSAGE_TRIANGLE_H