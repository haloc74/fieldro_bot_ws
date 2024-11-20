;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::BatteryCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'BatteryCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::BATTERYCOMMAND")
  (make-package "TWINNY_MSGS::BATTERYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude BatteryCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CHARGER_STOP*" (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(shadow '*CHARGER_STOP* (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(defconstant twinny_msgs::BatteryCommand::*CHARGER_STOP* 0)
(intern "*CHARGER_START*" (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(shadow '*CHARGER_START* (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(defconstant twinny_msgs::BatteryCommand::*CHARGER_START* 1)
(intern "*DOCKING_STOP*" (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(shadow '*DOCKING_STOP* (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(defconstant twinny_msgs::BatteryCommand::*DOCKING_STOP* 0)
(intern "*DOCKING_START*" (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(shadow '*DOCKING_START* (find-package "TWINNY_MSGS::BATTERYCOMMAND"))
(defconstant twinny_msgs::BatteryCommand::*DOCKING_START* 1)
(defclass twinny_msgs::BatteryCommand
  :super ros::object
  :slots (_header _Charger_start_command _Docking_start_command ))

(defmethod twinny_msgs::BatteryCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Charger_start_command __Charger_start_command) 0)
    ((:Docking_start_command __Docking_start_command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Charger_start_command (round __Charger_start_command))
   (setq _Docking_start_command (round __Docking_start_command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Charger_start_command
   (&optional __Charger_start_command)
   (if __Charger_start_command (setq _Charger_start_command __Charger_start_command)) _Charger_start_command)
  (:Docking_start_command
   (&optional __Docking_start_command)
   (if __Docking_start_command (setq _Docking_start_command __Docking_start_command)) _Docking_start_command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _Charger_start_command
    1
    ;; uint8 _Docking_start_command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _Charger_start_command
       (write-byte _Charger_start_command s)
     ;; uint8 _Docking_start_command
       (write-byte _Docking_start_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _Charger_start_command
     (setq _Charger_start_command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Docking_start_command
     (setq _Docking_start_command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::BatteryCommand :md5sum-) "dc2720bd2873f6b3e7e414316c28d4d1")
(setf (get twinny_msgs::BatteryCommand :datatype-) "twinny_msgs/BatteryCommand")
(setf (get twinny_msgs::BatteryCommand :definition-)
      "Header header

uint8 CHARGER_STOP = 0
uint8 CHARGER_START = 1

uint8 DOCKING_STOP = 0
uint8 DOCKING_START =1

uint8 Charger_start_command
uint8 Docking_start_command
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



(provide :twinny_msgs/BatteryCommand "dc2720bd2873f6b3e7e414316c28d4d1")


