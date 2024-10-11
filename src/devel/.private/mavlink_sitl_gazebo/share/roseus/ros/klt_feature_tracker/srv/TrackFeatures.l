;; Auto-generated. Do not edit!


(when (boundp 'klt_feature_tracker::TrackFeatures)
  (if (not (find-package "KLT_FEATURE_TRACKER"))
    (make-package "KLT_FEATURE_TRACKER"))
  (shadow 'TrackFeatures (find-package "KLT_FEATURE_TRACKER")))
(unless (find-package "KLT_FEATURE_TRACKER::TRACKFEATURES")
  (make-package "KLT_FEATURE_TRACKER::TRACKFEATURES"))
(unless (find-package "KLT_FEATURE_TRACKER::TRACKFEATURESREQUEST")
  (make-package "KLT_FEATURE_TRACKER::TRACKFEATURESREQUEST"))
(unless (find-package "KLT_FEATURE_TRACKER::TRACKFEATURESRESPONSE")
  (make-package "KLT_FEATURE_TRACKER::TRACKFEATURESRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass klt_feature_tracker::TrackFeaturesRequest
  :super ros::object
  :slots (_left_image _right_image _update_vect _stereo ))

(defmethod klt_feature_tracker::TrackFeaturesRequest
  (:init
   (&key
    ((:left_image __left_image) (instance sensor_msgs::Image :init))
    ((:right_image __right_image) (instance sensor_msgs::Image :init))
    ((:update_vect __update_vect) (make-array 0 :initial-element 0 :element-type :integer))
    ((:stereo __stereo) 0)
    )
   (send-super :init)
   (setq _left_image __left_image)
   (setq _right_image __right_image)
   (setq _update_vect __update_vect)
   (setq _stereo (round __stereo))
   self)
  (:left_image
   (&rest __left_image)
   (if (keywordp (car __left_image))
       (send* _left_image __left_image)
     (progn
       (if __left_image (setq _left_image (car __left_image)))
       _left_image)))
  (:right_image
   (&rest __right_image)
   (if (keywordp (car __right_image))
       (send* _right_image __right_image)
     (progn
       (if __right_image (setq _right_image (car __right_image)))
       _right_image)))
  (:update_vect
   (&optional __update_vect)
   (if __update_vect (setq _update_vect __update_vect)) _update_vect)
  (:stereo
   (&optional __stereo)
   (if __stereo (setq _stereo __stereo)) _stereo)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _left_image
    (send _left_image :serialization-length)
    ;; sensor_msgs/Image _right_image
    (send _right_image :serialization-length)
    ;; int32[] _update_vect
    (* 4    (length _update_vect)) 4
    ;; int32 _stereo
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _left_image
       (send _left_image :serialize s)
     ;; sensor_msgs/Image _right_image
       (send _right_image :serialize s)
     ;; int32[] _update_vect
     (write-long (length _update_vect) s)
     (dotimes (i (length _update_vect))
       (write-long (elt _update_vect i) s)
       )
     ;; int32 _stereo
       (write-long _stereo s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _left_image
     (send _left_image :deserialize buf ptr-) (incf ptr- (send _left_image :serialization-length))
   ;; sensor_msgs/Image _right_image
     (send _right_image :deserialize buf ptr-) (incf ptr- (send _right_image :serialization-length))
   ;; int32[] _update_vect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _update_vect (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _update_vect i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _stereo
     (setq _stereo (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass klt_feature_tracker::TrackFeaturesResponse
  :super ros::object
  :slots (_update_vect _features_l _features_r ))

(defmethod klt_feature_tracker::TrackFeaturesResponse
  (:init
   (&key
    ((:update_vect __update_vect) (make-array 0 :initial-element 0 :element-type :integer))
    ((:features_l __features_l) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:features_r __features_r) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _update_vect __update_vect)
   (setq _features_l __features_l)
   (setq _features_r __features_r)
   self)
  (:update_vect
   (&optional __update_vect)
   (if __update_vect (setq _update_vect __update_vect)) _update_vect)
  (:features_l
   (&optional __features_l)
   (if __features_l (setq _features_l __features_l)) _features_l)
  (:features_r
   (&optional __features_r)
   (if __features_r (setq _features_r __features_r)) _features_r)
  (:serialization-length
   ()
   (+
    ;; int32[] _update_vect
    (* 4    (length _update_vect)) 4
    ;; float64[] _features_l
    (* 8    (length _features_l)) 4
    ;; float64[] _features_r
    (* 8    (length _features_r)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _update_vect
     (write-long (length _update_vect) s)
     (dotimes (i (length _update_vect))
       (write-long (elt _update_vect i) s)
       )
     ;; float64[] _features_l
     (write-long (length _features_l) s)
     (dotimes (i (length _features_l))
       (sys::poke (elt _features_l i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _features_r
     (write-long (length _features_r) s)
     (dotimes (i (length _features_r))
       (sys::poke (elt _features_r i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _update_vect
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _update_vect (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _update_vect i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _features_l
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _features_l (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _features_l i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _features_r
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _features_r (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _features_r i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass klt_feature_tracker::TrackFeatures
  :super ros::object
  :slots ())

(setf (get klt_feature_tracker::TrackFeatures :md5sum-) "d55c173a9d514c7ff49f3816cbda7316")
(setf (get klt_feature_tracker::TrackFeatures :datatype-) "klt_feature_tracker/TrackFeatures")
(setf (get klt_feature_tracker::TrackFeatures :request) klt_feature_tracker::TrackFeaturesRequest)
(setf (get klt_feature_tracker::TrackFeatures :response) klt_feature_tracker::TrackFeaturesResponse)

(defmethod klt_feature_tracker::TrackFeaturesRequest
  (:response () (instance klt_feature_tracker::TrackFeaturesResponse :init)))

(setf (get klt_feature_tracker::TrackFeaturesRequest :md5sum-) "d55c173a9d514c7ff49f3816cbda7316")
(setf (get klt_feature_tracker::TrackFeaturesRequest :datatype-) "klt_feature_tracker/TrackFeaturesRequest")
(setf (get klt_feature_tracker::TrackFeaturesRequest :definition-)
      "sensor_msgs/Image left_image
sensor_msgs/Image right_image
int32[] update_vect
int32 stereo

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
int32[] update_vect
float64[] features_l
float64[] features_r

")

(setf (get klt_feature_tracker::TrackFeaturesResponse :md5sum-) "d55c173a9d514c7ff49f3816cbda7316")
(setf (get klt_feature_tracker::TrackFeaturesResponse :datatype-) "klt_feature_tracker/TrackFeaturesResponse")
(setf (get klt_feature_tracker::TrackFeaturesResponse :definition-)
      "sensor_msgs/Image left_image
sensor_msgs/Image right_image
int32[] update_vect
int32 stereo

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
int32[] update_vect
float64[] features_l
float64[] features_r

")



(provide :klt_feature_tracker/TrackFeatures "d55c173a9d514c7ff49f3816cbda7316")


