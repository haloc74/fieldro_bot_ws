;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SafetyLiDARCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SafetyLiDARCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND")
  (make-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SafetyLiDARCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CMD_LIDAR_ON*" (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(shadow '*CMD_LIDAR_ON* (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(defconstant twinny_msgs::SafetyLiDARCommand::*CMD_LIDAR_ON* 0)
(intern "*CMD_LIDAR_OSSD_MUTE*" (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(shadow '*CMD_LIDAR_OSSD_MUTE* (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(defconstant twinny_msgs::SafetyLiDARCommand::*CMD_LIDAR_OSSD_MUTE* 1)
(intern "*CMD_LIDAR_RESTART*" (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(shadow '*CMD_LIDAR_RESTART* (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(defconstant twinny_msgs::SafetyLiDARCommand::*CMD_LIDAR_RESTART* 2)
(intern "*CMD_LIDAR_OFF*" (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(shadow '*CMD_LIDAR_OFF* (find-package "TWINNY_MSGS::SAFETYLIDARCOMMAND"))
(defconstant twinny_msgs::SafetyLiDARCommand::*CMD_LIDAR_OFF* 3)
(defclass twinny_msgs::SafetyLiDARCommand
  :super ros::object
  :slots (_header _command ))

(defmethod twinny_msgs::SafetyLiDARCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _command (round __command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _command
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _command
       (write-word _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get twinny_msgs::SafetyLiDARCommand :md5sum-) "2e4963d7a7964226168f009745a41eab")
(setf (get twinny_msgs::SafetyLiDARCommand :datatype-) "twinny_msgs/SafetyLiDARCommand")
(setf (get twinny_msgs::SafetyLiDARCommand :definition-)
      "Header header

uint16 CMD_LIDAR_ON=0
uint16 CMD_LIDAR_OSSD_MUTE=1
uint16 CMD_LIDAR_RESTART=2
uint16 CMD_LIDAR_OFF=3

uint16 command

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



(provide :twinny_msgs/SafetyLiDARCommand "2e4963d7a7964226168f009745a41eab")


