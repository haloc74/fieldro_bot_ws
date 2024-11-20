;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::DWMRState)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'DWMRState (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::DWMRSTATE")
  (make-package "TWINNY_MSGS::DWMRSTATE"))

(in-package "ROS")
;;//! \htmlinclude DWMRState.msg.html


(defclass twinny_msgs::DWMRState
  :super ros::object
  :slots (_velocity _pose ))

(defmethod twinny_msgs::DWMRState
  (:init
   (&key
    ((:velocity __velocity) (instance twinny_msgs::LinearAngular :init))
    ((:pose __pose) (instance twinny_msgs::Pose3D :init))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _pose __pose)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; twinny_msgs/LinearAngular _velocity
    (send _velocity :serialization-length)
    ;; twinny_msgs/Pose3D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; twinny_msgs/LinearAngular _velocity
       (send _velocity :serialize s)
     ;; twinny_msgs/Pose3D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; twinny_msgs/LinearAngular _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; twinny_msgs/Pose3D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get twinny_msgs::DWMRState :md5sum-) "2e83e1ba0db9b6fa987145cd987133b4")
(setf (get twinny_msgs::DWMRState :datatype-) "twinny_msgs/DWMRState")
(setf (get twinny_msgs::DWMRState :definition-)
      "twinny_msgs/LinearAngular velocity
twinny_msgs/Pose3D pose
================================================================================
MSG: twinny_msgs/LinearAngular
float64 linear
float64 angular

================================================================================
MSG: twinny_msgs/Pose3D
Header header
float64 x
float64 y
float64 theta

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

")



(provide :twinny_msgs/DWMRState "2e83e1ba0db9b6fa987145cd987133b4")


