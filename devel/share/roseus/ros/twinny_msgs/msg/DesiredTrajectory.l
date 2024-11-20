;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::DesiredTrajectory)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'DesiredTrajectory (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::DESIREDTRAJECTORY")
  (make-package "TWINNY_MSGS::DESIREDTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude DesiredTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NORMAL*" (find-package "TWINNY_MSGS::DESIREDTRAJECTORY"))
(shadow '*NORMAL* (find-package "TWINNY_MSGS::DESIREDTRAJECTORY"))
(defconstant twinny_msgs::DesiredTrajectory::*NORMAL* 0)
(intern "*E_STOP*" (find-package "TWINNY_MSGS::DESIREDTRAJECTORY"))
(shadow '*E_STOP* (find-package "TWINNY_MSGS::DESIREDTRAJECTORY"))
(defconstant twinny_msgs::DesiredTrajectory::*E_STOP* 2)
(defclass twinny_msgs::DesiredTrajectory
  :super ros::object
  :slots (_header _command_mode _state ))

(defmethod twinny_msgs::DesiredTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command_mode __command_mode) 0)
    ((:state __state) (let (r) (dotimes (i 0) (push (instance twinny_msgs::RobotState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _command_mode (round __command_mode))
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command_mode
   (&optional __command_mode)
   (if __command_mode (setq _command_mode __command_mode)) _command_mode)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _command_mode
    4
    ;; twinny_msgs/RobotState[] _state
    (apply #'+ (send-all _state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _command_mode
       (write-long _command_mode s)
     ;; twinny_msgs/RobotState[] _state
     (write-long (length _state) s)
     (dolist (elem _state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _command_mode
     (setq _command_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; twinny_msgs/RobotState[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (let (r) (dotimes (i n) (push (instance twinny_msgs::RobotState :init) r)) r))
     (dolist (elem- _state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get twinny_msgs::DesiredTrajectory :md5sum-) "25b57abfbad7a15896be8327858d220b")
(setf (get twinny_msgs::DesiredTrajectory :datatype-) "twinny_msgs/DesiredTrajectory")
(setf (get twinny_msgs::DesiredTrajectory :definition-)
      "Header header

uint32 NORMAL=0
uint32 E_STOP=2

uint32 command_mode
twinny_msgs/RobotState[] state

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

================================================================================
MSG: twinny_msgs/RobotState
twinny_msgs/Pose3D pose
twinny_msgs/Pose3D velocity
================================================================================
MSG: twinny_msgs/Pose3D
Header header
float64 x
float64 y
float64 theta

")



(provide :twinny_msgs/DesiredTrajectory "25b57abfbad7a15896be8327858d220b")


