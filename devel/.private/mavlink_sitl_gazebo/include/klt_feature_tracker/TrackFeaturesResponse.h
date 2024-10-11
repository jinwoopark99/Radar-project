// Generated by gencpp from file klt_feature_tracker/TrackFeaturesResponse.msg
// DO NOT EDIT!


#ifndef KLT_FEATURE_TRACKER_MESSAGE_TRACKFEATURESRESPONSE_H
#define KLT_FEATURE_TRACKER_MESSAGE_TRACKFEATURESRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace klt_feature_tracker
{
template <class ContainerAllocator>
struct TrackFeaturesResponse_
{
  typedef TrackFeaturesResponse_<ContainerAllocator> Type;

  TrackFeaturesResponse_()
    : update_vect()
    , features_l()
    , features_r()  {
    }
  TrackFeaturesResponse_(const ContainerAllocator& _alloc)
    : update_vect(_alloc)
    , features_l(_alloc)
    , features_r(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _update_vect_type;
  _update_vect_type update_vect;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _features_l_type;
  _features_l_type features_l;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _features_r_type;
  _features_r_type features_r;





  typedef boost::shared_ptr< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct TrackFeaturesResponse_

typedef ::klt_feature_tracker::TrackFeaturesResponse_<std::allocator<void> > TrackFeaturesResponse;

typedef boost::shared_ptr< ::klt_feature_tracker::TrackFeaturesResponse > TrackFeaturesResponsePtr;
typedef boost::shared_ptr< ::klt_feature_tracker::TrackFeaturesResponse const> TrackFeaturesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator1> & lhs, const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.update_vect == rhs.update_vect &&
    lhs.features_l == rhs.features_l &&
    lhs.features_r == rhs.features_r;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator1> & lhs, const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace klt_feature_tracker

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2c0cf55e2ad9e563c111a72cc01130a";
  }

  static const char* value(const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2c0cf55e2ad9e56ULL;
  static const uint64_t static_value2 = 0x3c111a72cc01130aULL;
};

template<class ContainerAllocator>
struct DataType< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "klt_feature_tracker/TrackFeaturesResponse";
  }

  static const char* value(const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] update_vect\n"
"float64[] features_l\n"
"float64[] features_r\n"
"\n"
;
  }

  static const char* value(const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.update_vect);
      stream.next(m.features_l);
      stream.next(m.features_r);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrackFeaturesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::klt_feature_tracker::TrackFeaturesResponse_<ContainerAllocator>& v)
  {
    s << indent << "update_vect[]" << std::endl;
    for (size_t i = 0; i < v.update_vect.size(); ++i)
    {
      s << indent << "  update_vect[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.update_vect[i]);
    }
    s << indent << "features_l[]" << std::endl;
    for (size_t i = 0; i < v.features_l.size(); ++i)
    {
      s << indent << "  features_l[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.features_l[i]);
    }
    s << indent << "features_r[]" << std::endl;
    for (size_t i = 0; i < v.features_r.size(); ++i)
    {
      s << indent << "  features_r[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.features_r[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KLT_FEATURE_TRACKER_MESSAGE_TRACKFEATURESRESPONSE_H
