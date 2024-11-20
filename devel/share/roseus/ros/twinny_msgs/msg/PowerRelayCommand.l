;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PowerRelayCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PowerRelayCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::POWERRELAYCOMMAND")
  (make-package "TWINNY_MSGS::POWERRELAYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PowerRelayCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FORCED_OFF*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*FORCED_OFF* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*FORCED_OFF* 0)
(intern "*ON*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*ON* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*ON* 1)
(intern "*KEEP*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*KEEP* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*KEEP* 2)
(intern "*CHARGER_OFF*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*CHARGER_OFF* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*CHARGER_OFF* 0)
(intern "*CHARGER_ON*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*CHARGER_ON* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*CHARGER_ON* 1)
(intern "*CHARGER_KEEP*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*CHARGER_KEEP* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*CHARGER_KEEP* 2)
(intern "*MOTOR_RELAY_OFF*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*MOTOR_RELAY_OFF* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*MOTOR_RELAY_OFF* 0)
(intern "*MOTOR_RELAY_ON*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*MOTOR_RELAY_ON* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*MOTOR_RELAY_ON* 1)
(intern "*MOTOR_RELAY_KEEP*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*MOTOR_RELAY_KEEP* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*MOTOR_RELAY_KEEP* 2)
(intern "*PC_MCU_RELAY_OFF*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*PC_MCU_RELAY_OFF* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*PC_MCU_RELAY_OFF* 0)
(intern "*PC_MCU_RELAY_ON*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*PC_MCU_RELAY_ON* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*PC_MCU_RELAY_ON* 1)
(intern "*PC_MCU_RELAY_KEEP*" (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(shadow '*PC_MCU_RELAY_KEEP* (find-package "TWINNY_MSGS::POWERRELAYCOMMAND"))
(defconstant twinny_msgs::PowerRelayCommand::*PC_MCU_RELAY_KEEP* 2)
(defclass twinny_msgs::PowerRelayCommand
  :super ros::object
  :slots (_header _Motor_power_relay_control _PC_MCU_power_relay_control _Charger_start_command ))

(defmethod twinny_msgs::PowerRelayCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Motor_power_relay_control __Motor_power_relay_control) 0)
    ((:PC_MCU_power_relay_control __PC_MCU_power_relay_control) 0)
    ((:Charger_start_command __Charger_start_command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Motor_power_relay_control (round __Motor_power_relay_control))
   (setq _PC_MCU_power_relay_control (round __PC_MCU_power_relay_control))
   (setq _Charger_start_command (round __Charger_start_command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Motor_power_relay_control
   (&optional __Motor_power_relay_control)
   (if __Motor_power_relay_control (setq _Motor_power_relay_control __Motor_power_relay_control)) _Motor_power_relay_control)
  (:PC_MCU_power_relay_control
   (&optional __PC_MCU_power_relay_control)
   (if __PC_MCU_power_relay_control (setq _PC_MCU_power_relay_control __PC_MCU_power_relay_control)) _PC_MCU_power_relay_control)
  (:Charger_start_command
   (&optional __Charger_start_command)
   (if __Charger_start_command (setq _Charger_start_command __Charger_start_command)) _Charger_start_command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _Motor_power_relay_control
    1
    ;; uint8 _PC_MCU_power_relay_control
    1
    ;; uint8 _Charger_start_command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _Motor_power_relay_control
       (write-byte _Motor_power_relay_control s)
     ;; uint8 _PC_MCU_power_relay_control
       (write-byte _PC_MCU_power_relay_control s)
     ;; uint8 _Charger_start_command
       (write-byte _Charger_start_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _Motor_power_relay_control
     (setq _Motor_power_relay_control (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _PC_MCU_power_relay_control
     (setq _PC_MCU_power_relay_control (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Charger_start_command
     (setq _Charger_start_command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::PowerRelayCommand :md5sum-) "7c82c51a774f35c41519d2c48627f1d3")
(setf (get twinny_msgs::PowerRelayCommand :datatype-) "twinny_msgs/PowerRelayCommand")
(setf (get twinny_msgs::PowerRelayCommand :definition-)
      "Header header 

uint8 Motor_power_relay_control
uint8 PC_MCU_power_relay_control
uint8 Charger_start_command

uint8 FORCED_OFF = 0
uint8 ON = 1
uint8 KEEP = 2

uint8 CHARGER_OFF = 0
uint8 CHARGER_ON = 1
uint8 CHARGER_KEEP = 2

uint8 MOTOR_RELAY_OFF = 0
uint8 MOTOR_RELAY_ON = 1
uint8 MOTOR_RELAY_KEEP = 2

uint8 PC_MCU_RELAY_OFF = 0
uint8 PC_MCU_RELAY_ON = 1
uint8 PC_MCU_RELAY_KEEP = 2
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



(provide :twinny_msgs/PowerRelayCommand "7c82c51a774f35c41519d2c48627f1d3")


