;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MotorReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MotorReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MOTORREPORT")
  (make-package "TWINNY_MSGS::MOTORREPORT"))

(in-package "ROS")
;;//! \htmlinclude MotorReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CURRENT_FACTOR*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*CURRENT_FACTOR* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*CURRENT_FACTOR* 0.1)
(intern "*ALARM*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*ALARM* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*ALARM* 0)
(intern "*CTRL_FAIL*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*CTRL_FAIL* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*CTRL_FAIL* 1)
(intern "*OVER_VOLT*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*OVER_VOLT* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*OVER_VOLT* 2)
(intern "*OVER_TEMP*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*OVER_TEMP* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*OVER_TEMP* 3)
(intern "*OVER_LOAD*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*OVER_LOAD* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*OVER_LOAD* 4)
(intern "*HALL_FAIL*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*HALL_FAIL* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*HALL_FAIL* 5)
(intern "*INV_VEL*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*INV_VEL* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*INV_VEL* 6)
(intern "*STALL*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*STALL* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*STALL* 7)
(intern "*DRIVE_INTERNAL_ERROR*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*DRIVE_INTERNAL_ERROR* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*DRIVE_INTERNAL_ERROR* 1)
(intern "*SHORT_CIRCUIT*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*SHORT_CIRCUIT* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*SHORT_CIRCUIT* 2)
(intern "*CURRENT_OVERSHOOT*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*CURRENT_OVERSHOOT* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*CURRENT_OVERSHOOT* 4)
(intern "*UNDER_VOLTAGE*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*UNDER_VOLTAGE* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*UNDER_VOLTAGE* 8)
(intern "*OVER_VOLTAGE*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*OVER_VOLTAGE* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*OVER_VOLTAGE* 16)
(intern "*DRIVE_OVER_TEMPERATURE*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*DRIVE_OVER_TEMPERATURE* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*DRIVE_OVER_TEMPERATURE* 32)
(intern "*INVALID_HALL_STATE*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*INVALID_HALL_STATE* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*INVALID_HALL_STATE* 64)
(intern "*MOTOR_OVER_TEMPERATURE*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*MOTOR_OVER_TEMPERATURE* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*MOTOR_OVER_TEMPERATURE* 128)
(intern "*PHASE_DECTION_FAULT*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*PHASE_DECTION_FAULT* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*PHASE_DECTION_FAULT* 256)
(intern "*FEEDBACK_SENSOR_ERROR*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*FEEDBACK_SENSOR_ERROR* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*FEEDBACK_SENSOR_ERROR* 512)
(intern "*NODE_GUARDING*" (find-package "TWINNY_MSGS::MOTORREPORT"))
(shadow '*NODE_GUARDING* (find-package "TWINNY_MSGS::MOTORREPORT"))
(defconstant twinny_msgs::MotorReport::*NODE_GUARDING* 1024)
(defclass twinny_msgs::MotorReport
  :super ros::object
  :slots (_header _motor_driver_mode _left_status _right_status _left_NMT_status _right_NMT_status _left_current _right_current _left_peak_current _right_peak_current _motor_error_flag _left_drive_bridge_status _left_drive_protection_status _left_system_protection_status _left_drive_system_status1 _right_drive_bridge_status _right_drive_protection_status _right_system_protection_status _right_drive_system_status1 _drive_fault_flag _drive_fault_status ))

(defmethod twinny_msgs::MotorReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor_driver_mode __motor_driver_mode) 0)
    ((:left_status __left_status) 0)
    ((:right_status __right_status) 0)
    ((:left_NMT_status __left_NMT_status) 0)
    ((:right_NMT_status __right_NMT_status) 0)
    ((:left_current __left_current) 0)
    ((:right_current __right_current) 0)
    ((:left_peak_current __left_peak_current) 0)
    ((:right_peak_current __right_peak_current) 0)
    ((:motor_error_flag __motor_error_flag) 0)
    ((:left_drive_bridge_status __left_drive_bridge_status) "")
    ((:left_drive_protection_status __left_drive_protection_status) "")
    ((:left_system_protection_status __left_system_protection_status) "")
    ((:left_drive_system_status1 __left_drive_system_status1) "")
    ((:right_drive_bridge_status __right_drive_bridge_status) "")
    ((:right_drive_protection_status __right_drive_protection_status) "")
    ((:right_system_protection_status __right_system_protection_status) "")
    ((:right_drive_system_status1 __right_drive_system_status1) "")
    ((:drive_fault_flag __drive_fault_flag) nil)
    ((:drive_fault_status __drive_fault_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor_driver_mode (round __motor_driver_mode))
   (setq _left_status (round __left_status))
   (setq _right_status (round __right_status))
   (setq _left_NMT_status (round __left_NMT_status))
   (setq _right_NMT_status (round __right_NMT_status))
   (setq _left_current (round __left_current))
   (setq _right_current (round __right_current))
   (setq _left_peak_current (round __left_peak_current))
   (setq _right_peak_current (round __right_peak_current))
   (setq _motor_error_flag (round __motor_error_flag))
   (setq _left_drive_bridge_status (string __left_drive_bridge_status))
   (setq _left_drive_protection_status (string __left_drive_protection_status))
   (setq _left_system_protection_status (string __left_system_protection_status))
   (setq _left_drive_system_status1 (string __left_drive_system_status1))
   (setq _right_drive_bridge_status (string __right_drive_bridge_status))
   (setq _right_drive_protection_status (string __right_drive_protection_status))
   (setq _right_system_protection_status (string __right_system_protection_status))
   (setq _right_drive_system_status1 (string __right_drive_system_status1))
   (setq _drive_fault_flag __drive_fault_flag)
   (setq _drive_fault_status (round __drive_fault_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor_driver_mode
   (&optional __motor_driver_mode)
   (if __motor_driver_mode (setq _motor_driver_mode __motor_driver_mode)) _motor_driver_mode)
  (:left_status
   (&optional __left_status)
   (if __left_status (setq _left_status __left_status)) _left_status)
  (:right_status
   (&optional __right_status)
   (if __right_status (setq _right_status __right_status)) _right_status)
  (:left_NMT_status
   (&optional __left_NMT_status)
   (if __left_NMT_status (setq _left_NMT_status __left_NMT_status)) _left_NMT_status)
  (:right_NMT_status
   (&optional __right_NMT_status)
   (if __right_NMT_status (setq _right_NMT_status __right_NMT_status)) _right_NMT_status)
  (:left_current
   (&optional __left_current)
   (if __left_current (setq _left_current __left_current)) _left_current)
  (:right_current
   (&optional __right_current)
   (if __right_current (setq _right_current __right_current)) _right_current)
  (:left_peak_current
   (&optional __left_peak_current)
   (if __left_peak_current (setq _left_peak_current __left_peak_current)) _left_peak_current)
  (:right_peak_current
   (&optional __right_peak_current)
   (if __right_peak_current (setq _right_peak_current __right_peak_current)) _right_peak_current)
  (:motor_error_flag
   (&optional __motor_error_flag)
   (if __motor_error_flag (setq _motor_error_flag __motor_error_flag)) _motor_error_flag)
  (:left_drive_bridge_status
   (&optional __left_drive_bridge_status)
   (if __left_drive_bridge_status (setq _left_drive_bridge_status __left_drive_bridge_status)) _left_drive_bridge_status)
  (:left_drive_protection_status
   (&optional __left_drive_protection_status)
   (if __left_drive_protection_status (setq _left_drive_protection_status __left_drive_protection_status)) _left_drive_protection_status)
  (:left_system_protection_status
   (&optional __left_system_protection_status)
   (if __left_system_protection_status (setq _left_system_protection_status __left_system_protection_status)) _left_system_protection_status)
  (:left_drive_system_status1
   (&optional __left_drive_system_status1)
   (if __left_drive_system_status1 (setq _left_drive_system_status1 __left_drive_system_status1)) _left_drive_system_status1)
  (:right_drive_bridge_status
   (&optional __right_drive_bridge_status)
   (if __right_drive_bridge_status (setq _right_drive_bridge_status __right_drive_bridge_status)) _right_drive_bridge_status)
  (:right_drive_protection_status
   (&optional __right_drive_protection_status)
   (if __right_drive_protection_status (setq _right_drive_protection_status __right_drive_protection_status)) _right_drive_protection_status)
  (:right_system_protection_status
   (&optional __right_system_protection_status)
   (if __right_system_protection_status (setq _right_system_protection_status __right_system_protection_status)) _right_system_protection_status)
  (:right_drive_system_status1
   (&optional __right_drive_system_status1)
   (if __right_drive_system_status1 (setq _right_drive_system_status1 __right_drive_system_status1)) _right_drive_system_status1)
  (:drive_fault_flag
   (&optional __drive_fault_flag)
   (if __drive_fault_flag (setq _drive_fault_flag __drive_fault_flag)) _drive_fault_flag)
  (:drive_fault_status
   (&optional __drive_fault_status)
   (if __drive_fault_status (setq _drive_fault_status __drive_fault_status)) _drive_fault_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _motor_driver_mode
    2
    ;; uint16 _left_status
    2
    ;; uint16 _right_status
    2
    ;; uint8 _left_NMT_status
    1
    ;; uint8 _right_NMT_status
    1
    ;; int16 _left_current
    2
    ;; int16 _right_current
    2
    ;; int16 _left_peak_current
    2
    ;; int16 _right_peak_current
    2
    ;; uint8 _motor_error_flag
    1
    ;; string _left_drive_bridge_status
    4 (length _left_drive_bridge_status)
    ;; string _left_drive_protection_status
    4 (length _left_drive_protection_status)
    ;; string _left_system_protection_status
    4 (length _left_system_protection_status)
    ;; string _left_drive_system_status1
    4 (length _left_drive_system_status1)
    ;; string _right_drive_bridge_status
    4 (length _right_drive_bridge_status)
    ;; string _right_drive_protection_status
    4 (length _right_drive_protection_status)
    ;; string _right_system_protection_status
    4 (length _right_system_protection_status)
    ;; string _right_drive_system_status1
    4 (length _right_drive_system_status1)
    ;; bool _drive_fault_flag
    1
    ;; uint16 _drive_fault_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _motor_driver_mode
       (write-word _motor_driver_mode s)
     ;; uint16 _left_status
       (write-word _left_status s)
     ;; uint16 _right_status
       (write-word _right_status s)
     ;; uint8 _left_NMT_status
       (write-byte _left_NMT_status s)
     ;; uint8 _right_NMT_status
       (write-byte _right_NMT_status s)
     ;; int16 _left_current
       (write-word _left_current s)
     ;; int16 _right_current
       (write-word _right_current s)
     ;; int16 _left_peak_current
       (write-word _left_peak_current s)
     ;; int16 _right_peak_current
       (write-word _right_peak_current s)
     ;; uint8 _motor_error_flag
       (write-byte _motor_error_flag s)
     ;; string _left_drive_bridge_status
       (write-long (length _left_drive_bridge_status) s) (princ _left_drive_bridge_status s)
     ;; string _left_drive_protection_status
       (write-long (length _left_drive_protection_status) s) (princ _left_drive_protection_status s)
     ;; string _left_system_protection_status
       (write-long (length _left_system_protection_status) s) (princ _left_system_protection_status s)
     ;; string _left_drive_system_status1
       (write-long (length _left_drive_system_status1) s) (princ _left_drive_system_status1 s)
     ;; string _right_drive_bridge_status
       (write-long (length _right_drive_bridge_status) s) (princ _right_drive_bridge_status s)
     ;; string _right_drive_protection_status
       (write-long (length _right_drive_protection_status) s) (princ _right_drive_protection_status s)
     ;; string _right_system_protection_status
       (write-long (length _right_system_protection_status) s) (princ _right_system_protection_status s)
     ;; string _right_drive_system_status1
       (write-long (length _right_drive_system_status1) s) (princ _right_drive_system_status1 s)
     ;; bool _drive_fault_flag
       (if _drive_fault_flag (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _drive_fault_status
       (write-word _drive_fault_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _motor_driver_mode
     (setq _motor_driver_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _left_status
     (setq _left_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _right_status
     (setq _right_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _left_NMT_status
     (setq _left_NMT_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_NMT_status
     (setq _right_NMT_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _left_current
     (setq _left_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_current
     (setq _right_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _left_peak_current
     (setq _left_peak_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _right_peak_current
     (setq _right_peak_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _motor_error_flag
     (setq _motor_error_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _left_drive_bridge_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _left_drive_bridge_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _left_drive_protection_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _left_drive_protection_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _left_system_protection_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _left_system_protection_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _left_drive_system_status1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _left_drive_system_status1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _right_drive_bridge_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _right_drive_bridge_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _right_drive_protection_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _right_drive_protection_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _right_system_protection_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _right_system_protection_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _right_drive_system_status1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _right_drive_system_status1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _drive_fault_flag
     (setq _drive_fault_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _drive_fault_status
     (setq _drive_fault_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get twinny_msgs::MotorReport :md5sum-) "fe02ce809fad1b492fd33e316a77ebd5")
(setf (get twinny_msgs::MotorReport :datatype-) "twinny_msgs/MotorReport")
(setf (get twinny_msgs::MotorReport :definition-)
      "Header header

float64 current_factor=0.1

uint8 ALARM=0
uint8 CTRL_FAIL=1
uint8 OVER_VOLT=2
uint8 OVER_TEMP=3
uint8 OVER_LOAD=4
uint8 HALL_FAIL=5
uint8 INV_VEL=6
uint8 STALL=7

uint16 motor_driver_mode

uint16 left_status
uint16 right_status
uint8 left_NMT_status
uint8 right_NMT_status

int16 left_current
int16 right_current
int16 left_peak_current
int16 right_peak_current

uint8 motor_error_flag

string left_drive_bridge_status
string left_drive_protection_status
string left_system_protection_status
string left_drive_system_status1

string right_drive_bridge_status
string right_drive_protection_status
string right_system_protection_status
string right_drive_system_status1

bool drive_fault_flag

uint16 DRIVE_INTERNAL_ERROR = 1
uint16 SHORT_CIRCUIT = 2
uint16 CURRENT_OVERSHOOT = 4
uint16 UNDER_VOLTAGE = 8
uint16 OVER_VOLTAGE = 16
uint16 DRIVE_OVER_TEMPERATURE = 32
uint16 INVALID_HALL_STATE = 64
uint16 MOTOR_OVER_TEMPERATURE = 128
uint16 PHASE_DECTION_FAULT = 256
uint16 FEEDBACK_SENSOR_ERROR = 512
uint16 NODE_GUARDING = 1024

uint16 drive_fault_status
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



(provide :twinny_msgs/MotorReport "fe02ce809fad1b492fd33e316a77ebd5")


