// Generated by gencpp from file your_package/Circle.msg
// DO NOT EDIT!


#ifndef YOUR_PACKAGE_MESSAGE_CIRCLE_H
#define YOUR_PACKAGE_MESSAGE_CIRCLE_H

#include <ros/service_traits.h>


#include <your_package/CircleRequest.h>
#include <your_package/CircleResponse.h>


namespace your_package
{

struct Circle
{

typedef CircleRequest Request;
typedef CircleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Circle
} // namespace your_package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::your_package::Circle > {
  static const char* value()
  {
    return "5679ee031be5856b91b9f28dfed8edff";
  }

  static const char* value(const ::your_package::Circle&) { return value(); }
};

template<>
struct DataType< ::your_package::Circle > {
  static const char* value()
  {
    return "your_package/Circle";
  }

  static const char* value(const ::your_package::Circle&) { return value(); }
};


// service_traits::MD5Sum< ::your_package::CircleRequest> should match
// service_traits::MD5Sum< ::your_package::Circle >
template<>
struct MD5Sum< ::your_package::CircleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::your_package::Circle >::value();
  }
  static const char* value(const ::your_package::CircleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::your_package::CircleRequest> should match
// service_traits::DataType< ::your_package::Circle >
template<>
struct DataType< ::your_package::CircleRequest>
{
  static const char* value()
  {
    return DataType< ::your_package::Circle >::value();
  }
  static const char* value(const ::your_package::CircleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::your_package::CircleResponse> should match
// service_traits::MD5Sum< ::your_package::Circle >
template<>
struct MD5Sum< ::your_package::CircleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::your_package::Circle >::value();
  }
  static const char* value(const ::your_package::CircleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::your_package::CircleResponse> should match
// service_traits::DataType< ::your_package::Circle >
template<>
struct DataType< ::your_package::CircleResponse>
{
  static const char* value()
  {
    return DataType< ::your_package::Circle >::value();
  }
  static const char* value(const ::your_package::CircleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // YOUR_PACKAGE_MESSAGE_CIRCLE_H
