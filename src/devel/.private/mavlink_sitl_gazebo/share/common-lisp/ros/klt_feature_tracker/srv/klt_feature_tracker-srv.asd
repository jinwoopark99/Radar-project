
(cl:in-package :asdf)

(defsystem "klt_feature_tracker-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "TrackFeatures" :depends-on ("_package_TrackFeatures"))
    (:file "_package_TrackFeatures" :depends-on ("_package"))
  ))