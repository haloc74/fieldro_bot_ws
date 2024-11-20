; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude BatteryReport.msg.html

(cl:defclass <BatteryReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (STATE
    :reader STATE
    :initarg :STATE
    :type cl:fixnum
    :initform 0)
   (Battery_power
    :reader Battery_power
    :initarg :Battery_power
    :type cl:fixnum
    :initform 0)
   (Battery_current
    :reader Battery_current
    :initarg :Battery_current
    :type cl:float
    :initform 0.0)
   (Battery_voltage
    :reader Battery_voltage
    :initarg :Battery_voltage
    :type cl:float
    :initform 0.0)
   (Charge_flag
    :reader Charge_flag
    :initarg :Charge_flag
    :type cl:fixnum
    :initform 0)
   (Docking_sensor_flag
    :reader Docking_sensor_flag
    :initarg :Docking_sensor_flag
    :type cl:fixnum
    :initform 0)
   (Charger_relay_status
    :reader Charger_relay_status
    :initarg :Charger_relay_status
    :type cl:fixnum
    :initform 0)
   (Power_saving_mode
    :reader Power_saving_mode
    :initarg :Power_saving_mode
    :type cl:fixnum
    :initform 0)
   (Wire_charging_mode
    :reader Wire_charging_mode
    :initarg :Wire_charging_mode
    :type cl:fixnum
    :initform 0)
   (Docking_charge_enable
    :reader Docking_charge_enable
    :initarg :Docking_charge_enable
    :type cl:fixnum
    :initform 0)
   (Battery_full_flag
    :reader Battery_full_flag
    :initarg :Battery_full_flag
    :type cl:fixnum
    :initform 0)
   (Battery_empty_flag
    :reader Battery_empty_flag
    :initarg :Battery_empty_flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BatteryReport (<BatteryReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<BatteryReport> is deprecated: use twinny_msgs-msg:BatteryReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'STATE-val :lambda-list '(m))
(cl:defmethod STATE-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:STATE-val is deprecated.  Use twinny_msgs-msg:STATE instead.")
  (STATE m))

(cl:ensure-generic-function 'Battery_power-val :lambda-list '(m))
(cl:defmethod Battery_power-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Battery_power-val is deprecated.  Use twinny_msgs-msg:Battery_power instead.")
  (Battery_power m))

(cl:ensure-generic-function 'Battery_current-val :lambda-list '(m))
(cl:defmethod Battery_current-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Battery_current-val is deprecated.  Use twinny_msgs-msg:Battery_current instead.")
  (Battery_current m))

(cl:ensure-generic-function 'Battery_voltage-val :lambda-list '(m))
(cl:defmethod Battery_voltage-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Battery_voltage-val is deprecated.  Use twinny_msgs-msg:Battery_voltage instead.")
  (Battery_voltage m))

(cl:ensure-generic-function 'Charge_flag-val :lambda-list '(m))
(cl:defmethod Charge_flag-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Charge_flag-val is deprecated.  Use twinny_msgs-msg:Charge_flag instead.")
  (Charge_flag m))

(cl:ensure-generic-function 'Docking_sensor_flag-val :lambda-list '(m))
(cl:defmethod Docking_sensor_flag-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Docking_sensor_flag-val is deprecated.  Use twinny_msgs-msg:Docking_sensor_flag instead.")
  (Docking_sensor_flag m))

(cl:ensure-generic-function 'Charger_relay_status-val :lambda-list '(m))
(cl:defmethod Charger_relay_status-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Charger_relay_status-val is deprecated.  Use twinny_msgs-msg:Charger_relay_status instead.")
  (Charger_relay_status m))

(cl:ensure-generic-function 'Power_saving_mode-val :lambda-list '(m))
(cl:defmethod Power_saving_mode-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Power_saving_mode-val is deprecated.  Use twinny_msgs-msg:Power_saving_mode instead.")
  (Power_saving_mode m))

(cl:ensure-generic-function 'Wire_charging_mode-val :lambda-list '(m))
(cl:defmethod Wire_charging_mode-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Wire_charging_mode-val is deprecated.  Use twinny_msgs-msg:Wire_charging_mode instead.")
  (Wire_charging_mode m))

(cl:ensure-generic-function 'Docking_charge_enable-val :lambda-list '(m))
(cl:defmethod Docking_charge_enable-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Docking_charge_enable-val is deprecated.  Use twinny_msgs-msg:Docking_charge_enable instead.")
  (Docking_charge_enable m))

(cl:ensure-generic-function 'Battery_full_flag-val :lambda-list '(m))
(cl:defmethod Battery_full_flag-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Battery_full_flag-val is deprecated.  Use twinny_msgs-msg:Battery_full_flag instead.")
  (Battery_full_flag m))

(cl:ensure-generic-function 'Battery_empty_flag-val :lambda-list '(m))
(cl:defmethod Battery_empty_flag-val ((m <BatteryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Battery_empty_flag-val is deprecated.  Use twinny_msgs-msg:Battery_empty_flag instead.")
  (Battery_empty_flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BatteryReport>)))
    "Constants for message type '<BatteryReport>"
  '((:NORMAL . 0)
    (:ERROR . 1)
    (:CHARGING . 1)
    (:NOCHARGING . 0)
    (:DOCKING_SENSOR_OFF . 0)
    (:DOCKING_SENSOR_ON . 1)
    (:CHARGER_RELAY_OFF . 0)
    (:CHARGER_RELAY_ON . 1)
    (:POWER_SAVING_OFF . 0)
    (:POWER_SAVING_ON . 1)
    (:WIRE_CHARGING_MODE_OFF . 0)
    (:WIRE_CHARGING_MODE_ON . 1)
    (:DOCKING_CHARGE_DISABLE . 0)
    (:DOCKING_CHARGE_ENABLE . 1)
    (:BATTERY_NONFULL . 0)
    (:BATTERY_FULL . 1)
    (:BATTERY_NONZERO . 0)
    (:BATTERY_ZERO . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BatteryReport)))
    "Constants for message type 'BatteryReport"
  '((:NORMAL . 0)
    (:ERROR . 1)
    (:CHARGING . 1)
    (:NOCHARGING . 0)
    (:DOCKING_SENSOR_OFF . 0)
    (:DOCKING_SENSOR_ON . 1)
    (:CHARGER_RELAY_OFF . 0)
    (:CHARGER_RELAY_ON . 1)
    (:POWER_SAVING_OFF . 0)
    (:POWER_SAVING_ON . 1)
    (:WIRE_CHARGING_MODE_OFF . 0)
    (:WIRE_CHARGING_MODE_ON . 1)
    (:DOCKING_CHARGE_DISABLE . 0)
    (:DOCKING_CHARGE_ENABLE . 1)
    (:BATTERY_NONFULL . 0)
    (:BATTERY_FULL . 1)
    (:BATTERY_NONZERO . 0)
    (:BATTERY_ZERO . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryReport>) ostream)
  "Serializes a message object of type '<BatteryReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'STATE)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Battery_power)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Battery_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charge_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Docking_sensor_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charger_relay_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_saving_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Wire_charging_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Docking_charge_enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Battery_full_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Battery_empty_flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryReport>) istream)
  "Deserializes a message object of type '<BatteryReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'STATE)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Battery_power)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Battery_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charge_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Docking_sensor_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charger_relay_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_saving_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Wire_charging_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Docking_charge_enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Battery_full_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Battery_empty_flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryReport>)))
  "Returns string type for a message object of type '<BatteryReport>"
  "twinny_msgs/BatteryReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryReport)))
  "Returns string type for a message object of type 'BatteryReport"
  "twinny_msgs/BatteryReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryReport>)))
  "Returns md5sum for a message object of type '<BatteryReport>"
  "e9a48e58d2c7cc1f7859a62328338891")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryReport)))
  "Returns md5sum for a message object of type 'BatteryReport"
  "e9a48e58d2c7cc1f7859a62328338891")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryReport>)))
  "Returns full string definition for message of type '<BatteryReport>"
  (cl:format cl:nil "Header header~%~%uint8 NORMAL=0~%uint8 ERROR=1~%uint8 STATE  ~%~%uint8 Battery_power~%~%float64 Battery_current~%float64 Battery_voltage~%~%uint8 CHARGING = 1~%uint8 NOCHARGING = 0~%uint8 Charge_flag  ~%~%uint8 DOCKING_SENSOR_OFF = 0~%uint8 DOCKING_SENSOR_ON = 1~%uint8 Docking_sensor_flag~%~%uint8 CHARGER_RELAY_OFF = 0~%uint8 CHARGER_RELAY_ON = 1~%uint8 Charger_relay_status~%~%uint8 POWER_SAVING_OFF = 0~%uint8 POWER_SAVING_ON = 1~%uint8 Power_saving_mode~%~%uint8 WIRE_CHARGING_MODE_OFF = 0~%uint8 WIRE_CHARGING_MODE_ON = 1~%uint8 Wire_charging_mode~%~%uint8 DOCKING_CHARGE_DISABLE = 0~%uint8 DOCKING_CHARGE_ENABLE = 1~%uint8 Docking_charge_enable~%~%uint8 BATTERY_NONFULL = 0~%uint8 BATTERY_FULL = 1~%uint8 Battery_full_flag~%~%uint8 BATTERY_NONZERO = 0~%uint8 BATTERY_ZERO = 1~%uint8 Battery_empty_flag~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryReport)))
  "Returns full string definition for message of type 'BatteryReport"
  (cl:format cl:nil "Header header~%~%uint8 NORMAL=0~%uint8 ERROR=1~%uint8 STATE  ~%~%uint8 Battery_power~%~%float64 Battery_current~%float64 Battery_voltage~%~%uint8 CHARGING = 1~%uint8 NOCHARGING = 0~%uint8 Charge_flag  ~%~%uint8 DOCKING_SENSOR_OFF = 0~%uint8 DOCKING_SENSOR_ON = 1~%uint8 Docking_sensor_flag~%~%uint8 CHARGER_RELAY_OFF = 0~%uint8 CHARGER_RELAY_ON = 1~%uint8 Charger_relay_status~%~%uint8 POWER_SAVING_OFF = 0~%uint8 POWER_SAVING_ON = 1~%uint8 Power_saving_mode~%~%uint8 WIRE_CHARGING_MODE_OFF = 0~%uint8 WIRE_CHARGING_MODE_ON = 1~%uint8 Wire_charging_mode~%~%uint8 DOCKING_CHARGE_DISABLE = 0~%uint8 DOCKING_CHARGE_ENABLE = 1~%uint8 Docking_charge_enable~%~%uint8 BATTERY_NONFULL = 0~%uint8 BATTERY_FULL = 1~%uint8 Battery_full_flag~%~%uint8 BATTERY_NONZERO = 0~%uint8 BATTERY_ZERO = 1~%uint8 Battery_empty_flag~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     8
     8
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryReport>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryReport
    (cl:cons ':header (header msg))
    (cl:cons ':STATE (STATE msg))
    (cl:cons ':Battery_power (Battery_power msg))
    (cl:cons ':Battery_current (Battery_current msg))
    (cl:cons ':Battery_voltage (Battery_voltage msg))
    (cl:cons ':Charge_flag (Charge_flag msg))
    (cl:cons ':Docking_sensor_flag (Docking_sensor_flag msg))
    (cl:cons ':Charger_relay_status (Charger_relay_status msg))
    (cl:cons ':Power_saving_mode (Power_saving_mode msg))
    (cl:cons ':Wire_charging_mode (Wire_charging_mode msg))
    (cl:cons ':Docking_charge_enable (Docking_charge_enable msg))
    (cl:cons ':Battery_full_flag (Battery_full_flag msg))
    (cl:cons ':Battery_empty_flag (Battery_empty_flag msg))
))
