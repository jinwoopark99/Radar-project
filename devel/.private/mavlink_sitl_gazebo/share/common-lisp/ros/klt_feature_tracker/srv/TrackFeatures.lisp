; Auto-generated. Do not edit!


(cl:in-package klt_feature_tracker-srv)


;//! \htmlinclude TrackFeatures-request.msg.html

(cl:defclass <TrackFeatures-request> (roslisp-msg-protocol:ros-message)
  ((left_image
    :reader left_image
    :initarg :left_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (right_image
    :reader right_image
    :initarg :right_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (update_vect
    :reader update_vect
    :initarg :update_vect
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (stereo
    :reader stereo
    :initarg :stereo
    :type cl:integer
    :initform 0))
)

(cl:defclass TrackFeatures-request (<TrackFeatures-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackFeatures-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackFeatures-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name klt_feature_tracker-srv:<TrackFeatures-request> is deprecated: use klt_feature_tracker-srv:TrackFeatures-request instead.")))

(cl:ensure-generic-function 'left_image-val :lambda-list '(m))
(cl:defmethod left_image-val ((m <TrackFeatures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader klt_feature_tracker-srv:left_image-val is deprecated.  Use klt_feature_tracker-srv:left_image instead.")
  (left_image m))

(cl:ensure-generic-function 'right_image-val :lambda-list '(m))
(cl:defmethod right_image-val ((m <TrackFeatures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader klt_feature_tracker-srv:right_image-val is deprecated.  Use klt_feature_tracker-srv:right_image instead.")
  (right_image m))

(cl:ensure-generic-function 'update_vect-val :lambda-list '(m))
(cl:defmethod update_vect-val ((m <TrackFeatures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader klt_feature_tracker-srv:update_vect-val is deprecated.  Use klt_feature_tracker-srv:update_vect instead.")
  (update_vect m))

(cl:ensure-generic-function 'stereo-val :lambda-list '(m))
(cl:defmethod stereo-val ((m <TrackFeatures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader klt_feature_tracker-srv:stereo-val is deprecated.  Use klt_feature_tracker-srv:stereo instead.")
  (stereo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackFeatures-request>) ostream)
  "Serializes a message object of type '<TrackFeatures-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'update_vect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'update_vect))
  (cl:let* ((signed (cl:slot-value msg 'stereo)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackFeatures-request>) istream)
  "Deserializes a message object of type '<TrackFeatures-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'update_vect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'update_vect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stereo) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackFeatures-request>)))
  "Returns string type for a service object of type '<TrackFeatures-request>"
  "klt_feature_tracker/TrackFeaturesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackFeatures-request)))
  "Returns string type for a service object of type 'TrackFeatures-request"
  "klt_feature_tracker/TrackFeaturesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackFeatures-request>)))
  "Returns md5sum for a message object of type '<TrackFeatures-request>"
  "d55c173a9d514c7ff49f3816cbda7316")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackFeatures-request)))
  "Returns md5sum for a message object of type 'TrackFeatures-request"
  "d55c173a9d514c7ff49f3816cbda7316")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackFeatures-request>)))
  "Returns full string definition for message of type '<TrackFeatures-request>"
  (cl:format cl:nil "sensor_msgs/Image left_image~%sensor_msgs/Image right_image~%int32[] update_vect~%int32 stereo~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackFeatures-request)))
  "Returns full string definition for message of type 'TrackFeatures-request"
  (cl:format cl:nil "sensor_msgs/Image left_image~%sensor_msgs/Image right_image~%int32[] update_vect~%int32 stereo~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackFeatures-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'update_vect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackFeatures-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackFeatures-request
    (cl:cons ':left_image (left_image msg))
    (cl:cons ':right_image (right_image msg))
    (cl:cons ':update_vect (update_vect msg))
    (cl:cons ':stereo (stereo msg))
))
;//! \htmlinclude TrackFeatures-response.msg.html

(cl:defclass <TrackFeatures-response> (roslisp-msg-protocol:ros-message)
  ((update_vect
    :reader update_vect
    :initarg :update_vect
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (features_l
    :reader features_l
    :initarg :features_l
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (features_r
    :reader features_r
    :initarg :features_r
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TrackFeatures-response (<TrackFeatures-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackFeatures-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackFeatures-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name klt_feature_tracker-srv:<TrackFeatures-response> is deprecated: use klt_feature_tracker-srv:TrackFeatures-response instead.")))

(cl:ensure-generic-function 'update_vect-val :lambda-list '(m))
(cl:defmethod update_vect-val ((m <TrackFeatures-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader klt_feature_tracker-srv:update_vect-val is deprecated.  Use klt_feature_tracker-srv:update_vect instead.")
  (update_vect m))

(cl:ensure-generic-function 'features_l-val :lambda-list '(m))
(cl:defmethod features_l-val ((m <TrackFeatures-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader klt_feature_tracker-srv:features_l-val is deprecated.  Use klt_feature_tracker-srv:features_l instead.")
  (features_l m))

(cl:ensure-generic-function 'features_r-val :lambda-list '(m))
(cl:defmethod features_r-val ((m <TrackFeatures-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader klt_feature_tracker-srv:features_r-val is deprecated.  Use klt_feature_tracker-srv:features_r instead.")
  (features_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackFeatures-response>) ostream)
  "Serializes a message object of type '<TrackFeatures-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'update_vect))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'update_vect))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'features_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'features_l))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'features_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'features_r))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackFeatures-response>) istream)
  "Deserializes a message object of type '<TrackFeatures-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'update_vect) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'update_vect)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'features_l) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'features_l)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'features_r) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'features_r)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackFeatures-response>)))
  "Returns string type for a service object of type '<TrackFeatures-response>"
  "klt_feature_tracker/TrackFeaturesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackFeatures-response)))
  "Returns string type for a service object of type 'TrackFeatures-response"
  "klt_feature_tracker/TrackFeaturesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackFeatures-response>)))
  "Returns md5sum for a message object of type '<TrackFeatures-response>"
  "d55c173a9d514c7ff49f3816cbda7316")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackFeatures-response)))
  "Returns md5sum for a message object of type 'TrackFeatures-response"
  "d55c173a9d514c7ff49f3816cbda7316")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackFeatures-response>)))
  "Returns full string definition for message of type '<TrackFeatures-response>"
  (cl:format cl:nil "int32[] update_vect~%float64[] features_l~%float64[] features_r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackFeatures-response)))
  "Returns full string definition for message of type 'TrackFeatures-response"
  (cl:format cl:nil "int32[] update_vect~%float64[] features_l~%float64[] features_r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackFeatures-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'update_vect) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features_l) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features_r) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackFeatures-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackFeatures-response
    (cl:cons ':update_vect (update_vect msg))
    (cl:cons ':features_l (features_l msg))
    (cl:cons ':features_r (features_r msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrackFeatures)))
  'TrackFeatures-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrackFeatures)))
  'TrackFeatures-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackFeatures)))
  "Returns string type for a service object of type '<TrackFeatures>"
  "klt_feature_tracker/TrackFeatures")