;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorMotorError)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorMotorError (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORMOTORERROR")
  (make-package "TWINNY_MSGS::MONITORMOTORERROR"))

(in-package "ROS")
;;//! \htmlinclude MonitorMotorError.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MOTOR_ERROR_LEVEL_HIGH*" (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(shadow '*MOTOR_ERROR_LEVEL_HIGH* (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(defconstant twinny_msgs::MonitorMotorError::*MOTOR_ERROR_LEVEL_HIGH* -3)
(intern "*MOTOR_ERROR_LEVEL_MIDDLE*" (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(shadow '*MOTOR_ERROR_LEVEL_MIDDLE* (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(defconstant twinny_msgs::MonitorMotorError::*MOTOR_ERROR_LEVEL_MIDDLE* -2)
(intern "*MOTOR_ERROR_LEVEL_LOW*" (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(shadow '*MOTOR_ERROR_LEVEL_LOW* (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(defconstant twinny_msgs::MonitorMotorError::*MOTOR_ERROR_LEVEL_LOW* -1)
(intern "*MOTOR_ERROR_LEVEL_NORMAL*" (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(shadow '*MOTOR_ERROR_LEVEL_NORMAL* (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(defconstant twinny_msgs::MonitorMotorError::*MOTOR_ERROR_LEVEL_NORMAL* 0)
(intern "*MOTOR_ERROR_LEVEL_INVALID*" (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(shadow '*MOTOR_ERROR_LEVEL_INVALID* (find-package "TWINNY_MSGS::MONITORMOTORERROR"))
(defconstant twinny_msgs::MonitorMotorError::*MOTOR_ERROR_LEVEL_INVALID* -99)
(defclass twinny_msgs::MonitorMotorError
  :super ros::object
  :slots (_header _Motor_Number _Motor_drive_bridge_status _Motor_drive_protection_status _Motor_system_protection_status _Motor_drive_system_status _Motor_Error_Level ))

(defmethod twinny_msgs::MonitorMotorError
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Motor_Number __Motor_Number) 0)
    ((:Motor_drive_bridge_status __Motor_drive_bridge_status) 0)
    ((:Motor_drive_protection_status __Motor_drive_protection_status) 0)
    ((:Motor_system_protection_status __Motor_system_protection_status) 0)
    ((:Motor_drive_system_status __Motor_drive_system_status) 0)
    ((:Motor_Error_Level __Motor_Error_Level) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Motor_Number (round __Motor_Number))
   (setq _Motor_drive_bridge_status (round __Motor_drive_bridge_status))
   (setq _Motor_drive_protection_status (round __Motor_drive_protection_status))
   (setq _Motor_system_protection_status (round __Motor_system_protection_status))
   (setq _Motor_drive_system_status (round __Motor_drive_system_status))
   (setq _Motor_Error_Level (round __Motor_Error_Level))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Motor_Number
   (&optional __Motor_Number)
   (if __Motor_Number (setq _Motor_Number __Motor_Number)) _Motor_Number)
  (:Motor_drive_bridge_status
   (&optional __Motor_drive_bridge_status)
   (if __Motor_drive_bridge_status (setq _Motor_drive_bridge_status __Motor_drive_bridge_status)) _Motor_drive_bridge_status)
  (:Motor_drive_protection_status
   (&optional __Motor_drive_protection_status)
   (if __Motor_drive_protection_status (setq _Motor_drive_protection_status __Motor_drive_protection_status)) _Motor_drive_protection_status)
  (:Motor_system_protection_status
   (&optional __Motor_system_protection_status)
   (if __Motor_system_protection_status (setq _Motor_system_protection_status __Motor_system_protection_status)) _Motor_system_protection_status)
  (:Motor_drive_system_status
   (&optional __Motor_drive_system_status)
   (if __Motor_drive_system_status (setq _Motor_drive_system_status __Motor_drive_system_status)) _Motor_drive_system_status)
  (:Motor_Error_Level
   (&optional __Motor_Error_Level)
   (if __Motor_Error_Level (setq _Motor_Error_Level __Motor_Error_Level)) _Motor_Error_Level)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _Motor_Number
    1
    ;; uint16 _Motor_drive_bridge_status
    2
    ;; uint16 _Motor_drive_protection_status
    2
    ;; uint16 _Motor_system_protection_status
    2
    ;; uint16 _Motor_drive_system_status
    2
    ;; int8 _Motor_Error_Level
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _Motor_Number
       (write-byte _Motor_Number s)
     ;; uint16 _Motor_drive_bridge_status
       (write-word _Motor_drive_bridge_status s)
     ;; uint16 _Motor_drive_protection_status
       (write-word _Motor_drive_protection_status s)
     ;; uint16 _Motor_system_protection_status
       (write-word _Motor_system_protection_status s)
     ;; uint16 _Motor_drive_system_status
       (write-word _Motor_drive_system_status s)
     ;; int8 _Motor_Error_Level
       (write-byte _Motor_Error_Level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _Motor_Number
     (setq _Motor_Number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _Motor_drive_bridge_status
     (setq _Motor_drive_bridge_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Motor_drive_protection_status
     (setq _Motor_drive_protection_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Motor_system_protection_status
     (setq _Motor_system_protection_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Motor_drive_system_status
     (setq _Motor_drive_system_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _Motor_Error_Level
     (setq _Motor_Error_Level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Motor_Error_Level 127) (setq _Motor_Error_Level (- _Motor_Error_Level 256)))
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorMotorError :md5sum-) "32bee29b39aa81380c35de6c8643364c")
(setf (get twinny_msgs::MonitorMotorError :datatype-) "twinny_msgs/MonitorMotorError")
(setf (get twinny_msgs::MonitorMotorError :definition-)
      "Header header 

uint8 Motor_Number
uint16 Motor_drive_bridge_status
uint16 Motor_drive_protection_status
uint16 Motor_system_protection_status
uint16 Motor_drive_system_status

int8 MOTOR_ERROR_LEVEL_HIGH=-3
int8 MOTOR_ERROR_LEVEL_MIDDLE=-2
int8 MOTOR_ERROR_LEVEL_LOW=-1
int8 MOTOR_ERROR_LEVEL_NORMAL=0
int8 MOTOR_ERROR_LEVEL_INVALID=-99
int8 Motor_Error_Level



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



(provide :twinny_msgs/MonitorMotorError "32bee29b39aa81380c35de6c8643364c")


