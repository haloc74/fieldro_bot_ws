;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::RobotState)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'RobotState (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::ROBOTSTATE")
  (make-package "TWINNY_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html


(defclass twinny_msgs::RobotState
  :super ros::object
  :slots (_pose _velocity ))

(defmethod twinny_msgs::RobotState
  (:init
   (&key
    ((:pose __pose) (instance twinny_msgs::Pose3D :init))
    ((:velocity __velocity) (instance twinny_msgs::Pose3D :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _velocity __velocity)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; twinny_msgs/Pose3D _pose
    (send _pose :serialization-length)
    ;; twinny_msgs/Pose3D _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; twinny_msgs/Pose3D _pose
       (send _pose :serialize s)
     ;; twinny_msgs/Pose3D _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; twinny_msgs/Pose3D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; twinny_msgs/Pose3D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get twinny_msgs::RobotState :md5sum-) "20e50a921366e4be59bcdf3bb697d021")
(setf (get twinny_msgs::RobotState :datatype-) "twinny_msgs/RobotState")
(setf (get twinny_msgs::RobotState :definition-)
      "twinny_msgs/Pose3D pose
twinny_msgs/Pose3D velocity
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



(provide :twinny_msgs/RobotState "20e50a921366e4be59bcdf3bb697d021")


