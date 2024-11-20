;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::BatteryReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'BatteryReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::BATTERYREPORT")
  (make-package "TWINNY_MSGS::BATTERYREPORT"))

(in-package "ROS")
;;//! \htmlinclude BatteryReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NORMAL*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*NORMAL* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*NORMAL* 0)
(intern "*ERROR*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*ERROR* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*ERROR* 1)
(intern "*CHARGING*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*CHARGING* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*CHARGING* 1)
(intern "*NOCHARGING*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*NOCHARGING* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*NOCHARGING* 0)
(intern "*DOCKING_SENSOR_OFF*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*DOCKING_SENSOR_OFF* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*DOCKING_SENSOR_OFF* 0)
(intern "*DOCKING_SENSOR_ON*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*DOCKING_SENSOR_ON* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*DOCKING_SENSOR_ON* 1)
(intern "*CHARGER_RELAY_OFF*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*CHARGER_RELAY_OFF* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*CHARGER_RELAY_OFF* 0)
(intern "*CHARGER_RELAY_ON*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*CHARGER_RELAY_ON* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*CHARGER_RELAY_ON* 1)
(intern "*POWER_SAVING_OFF*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*POWER_SAVING_OFF* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*POWER_SAVING_OFF* 0)
(intern "*POWER_SAVING_ON*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*POWER_SAVING_ON* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*POWER_SAVING_ON* 1)
(intern "*WIRE_CHARGING_MODE_OFF*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*WIRE_CHARGING_MODE_OFF* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*WIRE_CHARGING_MODE_OFF* 0)
(intern "*WIRE_CHARGING_MODE_ON*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*WIRE_CHARGING_MODE_ON* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*WIRE_CHARGING_MODE_ON* 1)
(intern "*DOCKING_CHARGE_DISABLE*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*DOCKING_CHARGE_DISABLE* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*DOCKING_CHARGE_DISABLE* 0)
(intern "*DOCKING_CHARGE_ENABLE*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*DOCKING_CHARGE_ENABLE* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*DOCKING_CHARGE_ENABLE* 1)
(intern "*BATTERY_NONFULL*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*BATTERY_NONFULL* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*BATTERY_NONFULL* 0)
(intern "*BATTERY_FULL*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*BATTERY_FULL* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*BATTERY_FULL* 1)
(intern "*BATTERY_NONZERO*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*BATTERY_NONZERO* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*BATTERY_NONZERO* 0)
(intern "*BATTERY_ZERO*" (find-package "TWINNY_MSGS::BATTERYREPORT"))
(shadow '*BATTERY_ZERO* (find-package "TWINNY_MSGS::BATTERYREPORT"))
(defconstant twinny_msgs::BatteryReport::*BATTERY_ZERO* 1)
(defclass twinny_msgs::BatteryReport
  :super ros::object
  :slots (_header _STATE _Battery_power _Battery_current _Battery_voltage _Charge_flag _Docking_sensor_flag _Charger_relay_status _Power_saving_mode _Wire_charging_mode _Docking_charge_enable _Battery_full_flag _Battery_empty_flag ))

(defmethod twinny_msgs::BatteryReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:STATE __STATE) 0)
    ((:Battery_power __Battery_power) 0)
    ((:Battery_current __Battery_current) 0.0)
    ((:Battery_voltage __Battery_voltage) 0.0)
    ((:Charge_flag __Charge_flag) 0)
    ((:Docking_sensor_flag __Docking_sensor_flag) 0)
    ((:Charger_relay_status __Charger_relay_status) 0)
    ((:Power_saving_mode __Power_saving_mode) 0)
    ((:Wire_charging_mode __Wire_charging_mode) 0)
    ((:Docking_charge_enable __Docking_charge_enable) 0)
    ((:Battery_full_flag __Battery_full_flag) 0)
    ((:Battery_empty_flag __Battery_empty_flag) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _STATE (round __STATE))
   (setq _Battery_power (round __Battery_power))
   (setq _Battery_current (float __Battery_current))
   (setq _Battery_voltage (float __Battery_voltage))
   (setq _Charge_flag (round __Charge_flag))
   (setq _Docking_sensor_flag (round __Docking_sensor_flag))
   (setq _Charger_relay_status (round __Charger_relay_status))
   (setq _Power_saving_mode (round __Power_saving_mode))
   (setq _Wire_charging_mode (round __Wire_charging_mode))
   (setq _Docking_charge_enable (round __Docking_charge_enable))
   (setq _Battery_full_flag (round __Battery_full_flag))
   (setq _Battery_empty_flag (round __Battery_empty_flag))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:STATE
   (&optional __STATE)
   (if __STATE (setq _STATE __STATE)) _STATE)
  (:Battery_power
   (&optional __Battery_power)
   (if __Battery_power (setq _Battery_power __Battery_power)) _Battery_power)
  (:Battery_current
   (&optional __Battery_current)
   (if __Battery_current (setq _Battery_current __Battery_current)) _Battery_current)
  (:Battery_voltage
   (&optional __Battery_voltage)
   (if __Battery_voltage (setq _Battery_voltage __Battery_voltage)) _Battery_voltage)
  (:Charge_flag
   (&optional __Charge_flag)
   (if __Charge_flag (setq _Charge_flag __Charge_flag)) _Charge_flag)
  (:Docking_sensor_flag
   (&optional __Docking_sensor_flag)
   (if __Docking_sensor_flag (setq _Docking_sensor_flag __Docking_sensor_flag)) _Docking_sensor_flag)
  (:Charger_relay_status
   (&optional __Charger_relay_status)
   (if __Charger_relay_status (setq _Charger_relay_status __Charger_relay_status)) _Charger_relay_status)
  (:Power_saving_mode
   (&optional __Power_saving_mode)
   (if __Power_saving_mode (setq _Power_saving_mode __Power_saving_mode)) _Power_saving_mode)
  (:Wire_charging_mode
   (&optional __Wire_charging_mode)
   (if __Wire_charging_mode (setq _Wire_charging_mode __Wire_charging_mode)) _Wire_charging_mode)
  (:Docking_charge_enable
   (&optional __Docking_charge_enable)
   (if __Docking_charge_enable (setq _Docking_charge_enable __Docking_charge_enable)) _Docking_charge_enable)
  (:Battery_full_flag
   (&optional __Battery_full_flag)
   (if __Battery_full_flag (setq _Battery_full_flag __Battery_full_flag)) _Battery_full_flag)
  (:Battery_empty_flag
   (&optional __Battery_empty_flag)
   (if __Battery_empty_flag (setq _Battery_empty_flag __Battery_empty_flag)) _Battery_empty_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _STATE
    1
    ;; uint8 _Battery_power
    1
    ;; float64 _Battery_current
    8
    ;; float64 _Battery_voltage
    8
    ;; uint8 _Charge_flag
    1
    ;; uint8 _Docking_sensor_flag
    1
    ;; uint8 _Charger_relay_status
    1
    ;; uint8 _Power_saving_mode
    1
    ;; uint8 _Wire_charging_mode
    1
    ;; uint8 _Docking_charge_enable
    1
    ;; uint8 _Battery_full_flag
    1
    ;; uint8 _Battery_empty_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _STATE
       (write-byte _STATE s)
     ;; uint8 _Battery_power
       (write-byte _Battery_power s)
     ;; float64 _Battery_current
       (sys::poke _Battery_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Battery_voltage
       (sys::poke _Battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _Charge_flag
       (write-byte _Charge_flag s)
     ;; uint8 _Docking_sensor_flag
       (write-byte _Docking_sensor_flag s)
     ;; uint8 _Charger_relay_status
       (write-byte _Charger_relay_status s)
     ;; uint8 _Power_saving_mode
       (write-byte _Power_saving_mode s)
     ;; uint8 _Wire_charging_mode
       (write-byte _Wire_charging_mode s)
     ;; uint8 _Docking_charge_enable
       (write-byte _Docking_charge_enable s)
     ;; uint8 _Battery_full_flag
       (write-byte _Battery_full_flag s)
     ;; uint8 _Battery_empty_flag
       (write-byte _Battery_empty_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _STATE
     (setq _STATE (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Battery_power
     (setq _Battery_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _Battery_current
     (setq _Battery_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Battery_voltage
     (setq _Battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _Charge_flag
     (setq _Charge_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Docking_sensor_flag
     (setq _Docking_sensor_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Charger_relay_status
     (setq _Charger_relay_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Power_saving_mode
     (setq _Power_saving_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Wire_charging_mode
     (setq _Wire_charging_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Docking_charge_enable
     (setq _Docking_charge_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Battery_full_flag
     (setq _Battery_full_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Battery_empty_flag
     (setq _Battery_empty_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::BatteryReport :md5sum-) "e9a48e58d2c7cc1f7859a62328338891")
(setf (get twinny_msgs::BatteryReport :datatype-) "twinny_msgs/BatteryReport")
(setf (get twinny_msgs::BatteryReport :definition-)
      "Header header

uint8 NORMAL=0
uint8 ERROR=1
uint8 STATE  

uint8 Battery_power

float64 Battery_current
float64 Battery_voltage

uint8 CHARGING = 1
uint8 NOCHARGING = 0
uint8 Charge_flag  

uint8 DOCKING_SENSOR_OFF = 0
uint8 DOCKING_SENSOR_ON = 1
uint8 Docking_sensor_flag

uint8 CHARGER_RELAY_OFF = 0
uint8 CHARGER_RELAY_ON = 1
uint8 Charger_relay_status

uint8 POWER_SAVING_OFF = 0
uint8 POWER_SAVING_ON = 1
uint8 Power_saving_mode

uint8 WIRE_CHARGING_MODE_OFF = 0
uint8 WIRE_CHARGING_MODE_ON = 1
uint8 Wire_charging_mode

uint8 DOCKING_CHARGE_DISABLE = 0
uint8 DOCKING_CHARGE_ENABLE = 1
uint8 Docking_charge_enable

uint8 BATTERY_NONFULL = 0
uint8 BATTERY_FULL = 1
uint8 Battery_full_flag

uint8 BATTERY_NONZERO = 0
uint8 BATTERY_ZERO = 1
uint8 Battery_empty_flag
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



(provide :twinny_msgs/BatteryReport "e9a48e58d2c7cc1f7859a62328338891")


