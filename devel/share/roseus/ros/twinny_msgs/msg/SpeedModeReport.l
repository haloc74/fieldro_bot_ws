;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SpeedModeReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SpeedModeReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SPEEDMODEREPORT")
  (make-package "TWINNY_MSGS::SPEEDMODEREPORT"))

(in-package "ROS")
;;//! \htmlinclude SpeedModeReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ROBOT_SPEED_LOW*" (find-package "TWINNY_MSGS::SPEEDMODEREPORT"))
(shadow '*ROBOT_SPEED_LOW* (find-package "TWINNY_MSGS::SPEEDMODEREPORT"))
(defconstant twinny_msgs::SpeedModeReport::*ROBOT_SPEED_LOW* -1)
(intern "*ROBOT_SPEED_DEFAULT*" (find-package "TWINNY_MSGS::SPEEDMODEREPORT"))
(shadow '*ROBOT_SPEED_DEFAULT* (find-package "TWINNY_MSGS::SPEEDMODEREPORT"))
(defconstant twinny_msgs::SpeedModeReport::*ROBOT_SPEED_DEFAULT* 0)
(intern "*ROBOT_SPEED_HIGH*" (find-package "TWINNY_MSGS::SPEEDMODEREPORT"))
(shadow '*ROBOT_SPEED_HIGH* (find-package "TWINNY_MSGS::SPEEDMODEREPORT"))
(defconstant twinny_msgs::SpeedModeReport::*ROBOT_SPEED_HIGH* 1)
(defclass twinny_msgs::SpeedModeReport
  :super ros::object
  :slots (_header _type _robot_current_speed_mode ))

(defmethod twinny_msgs::SpeedModeReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:robot_current_speed_mode __robot_current_speed_mode) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _robot_current_speed_mode (round __robot_current_speed_mode))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:robot_current_speed_mode
   (&optional __robot_current_speed_mode)
   (if __robot_current_speed_mode (setq _robot_current_speed_mode __robot_current_speed_mode)) _robot_current_speed_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; int8 _robot_current_speed_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int8 _robot_current_speed_mode
       (write-byte _robot_current_speed_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _robot_current_speed_mode
     (setq _robot_current_speed_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot_current_speed_mode 127) (setq _robot_current_speed_mode (- _robot_current_speed_mode 256)))
   ;;
   self)
  )

(setf (get twinny_msgs::SpeedModeReport :md5sum-) "80f59a95cf675512c2f5ddacc798542f")
(setf (get twinny_msgs::SpeedModeReport :datatype-) "twinny_msgs/SpeedModeReport")
(setf (get twinny_msgs::SpeedModeReport :definition-)
      "Header header
string type

int8 ROBOT_SPEED_LOW = -1
int8 ROBOT_SPEED_DEFAULT = 0
int8 ROBOT_SPEED_HIGH = 1

int8 robot_current_speed_mode

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



(provide :twinny_msgs/SpeedModeReport "80f59a95cf675512c2f5ddacc798542f")


