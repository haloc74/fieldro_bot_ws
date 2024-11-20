; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PowerRelayCommand.msg.html

(cl:defclass <PowerRelayCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Motor_power_relay_control
    :reader Motor_power_relay_control
    :initarg :Motor_power_relay_control
    :type cl:fixnum
    :initform 0)
   (PC_MCU_power_relay_control
    :reader PC_MCU_power_relay_control
    :initarg :PC_MCU_power_relay_control
    :type cl:fixnum
    :initform 0)
   (Charger_start_command
    :reader Charger_start_command
    :initarg :Charger_start_command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerRelayCommand (<PowerRelayCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerRelayCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerRelayCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PowerRelayCommand> is deprecated: use twinny_msgs-msg:PowerRelayCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PowerRelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Motor_power_relay_control-val :lambda-list '(m))
(cl:defmethod Motor_power_relay_control-val ((m <PowerRelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_power_relay_control-val is deprecated.  Use twinny_msgs-msg:Motor_power_relay_control instead.")
  (Motor_power_relay_control m))

(cl:ensure-generic-function 'PC_MCU_power_relay_control-val :lambda-list '(m))
(cl:defmethod PC_MCU_power_relay_control-val ((m <PowerRelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:PC_MCU_power_relay_control-val is deprecated.  Use twinny_msgs-msg:PC_MCU_power_relay_control instead.")
  (PC_MCU_power_relay_control m))

(cl:ensure-generic-function 'Charger_start_command-val :lambda-list '(m))
(cl:defmethod Charger_start_command-val ((m <PowerRelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Charger_start_command-val is deprecated.  Use twinny_msgs-msg:Charger_start_command instead.")
  (Charger_start_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PowerRelayCommand>)))
    "Constants for message type '<PowerRelayCommand>"
  '((:FORCED_OFF . 0)
    (:ON . 1)
    (:KEEP . 2)
    (:CHARGER_OFF . 0)
    (:CHARGER_ON . 1)
    (:CHARGER_KEEP . 2)
    (:MOTOR_RELAY_OFF . 0)
    (:MOTOR_RELAY_ON . 1)
    (:MOTOR_RELAY_KEEP . 2)
    (:PC_MCU_RELAY_OFF . 0)
    (:PC_MCU_RELAY_ON . 1)
    (:PC_MCU_RELAY_KEEP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PowerRelayCommand)))
    "Constants for message type 'PowerRelayCommand"
  '((:FORCED_OFF . 0)
    (:ON . 1)
    (:KEEP . 2)
    (:CHARGER_OFF . 0)
    (:CHARGER_ON . 1)
    (:CHARGER_KEEP . 2)
    (:MOTOR_RELAY_OFF . 0)
    (:MOTOR_RELAY_ON . 1)
    (:MOTOR_RELAY_KEEP . 2)
    (:PC_MCU_RELAY_OFF . 0)
    (:PC_MCU_RELAY_ON . 1)
    (:PC_MCU_RELAY_KEEP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerRelayCommand>) ostream)
  "Serializes a message object of type '<PowerRelayCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_power_relay_control)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PC_MCU_power_relay_control)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charger_start_command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerRelayCommand>) istream)
  "Deserializes a message object of type '<PowerRelayCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_power_relay_control)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PC_MCU_power_relay_control)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Charger_start_command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerRelayCommand>)))
  "Returns string type for a message object of type '<PowerRelayCommand>"
  "twinny_msgs/PowerRelayCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerRelayCommand)))
  "Returns string type for a message object of type 'PowerRelayCommand"
  "twinny_msgs/PowerRelayCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerRelayCommand>)))
  "Returns md5sum for a message object of type '<PowerRelayCommand>"
  "7c82c51a774f35c41519d2c48627f1d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerRelayCommand)))
  "Returns md5sum for a message object of type 'PowerRelayCommand"
  "7c82c51a774f35c41519d2c48627f1d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerRelayCommand>)))
  "Returns full string definition for message of type '<PowerRelayCommand>"
  (cl:format cl:nil "Header header ~%~%uint8 Motor_power_relay_control~%uint8 PC_MCU_power_relay_control~%uint8 Charger_start_command~%~%uint8 FORCED_OFF = 0~%uint8 ON = 1~%uint8 KEEP = 2~%~%uint8 CHARGER_OFF = 0~%uint8 CHARGER_ON = 1~%uint8 CHARGER_KEEP = 2~%~%uint8 MOTOR_RELAY_OFF = 0~%uint8 MOTOR_RELAY_ON = 1~%uint8 MOTOR_RELAY_KEEP = 2~%~%uint8 PC_MCU_RELAY_OFF = 0~%uint8 PC_MCU_RELAY_ON = 1~%uint8 PC_MCU_RELAY_KEEP = 2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerRelayCommand)))
  "Returns full string definition for message of type 'PowerRelayCommand"
  (cl:format cl:nil "Header header ~%~%uint8 Motor_power_relay_control~%uint8 PC_MCU_power_relay_control~%uint8 Charger_start_command~%~%uint8 FORCED_OFF = 0~%uint8 ON = 1~%uint8 KEEP = 2~%~%uint8 CHARGER_OFF = 0~%uint8 CHARGER_ON = 1~%uint8 CHARGER_KEEP = 2~%~%uint8 MOTOR_RELAY_OFF = 0~%uint8 MOTOR_RELAY_ON = 1~%uint8 MOTOR_RELAY_KEEP = 2~%~%uint8 PC_MCU_RELAY_OFF = 0~%uint8 PC_MCU_RELAY_ON = 1~%uint8 PC_MCU_RELAY_KEEP = 2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerRelayCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerRelayCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerRelayCommand
    (cl:cons ':header (header msg))
    (cl:cons ':Motor_power_relay_control (Motor_power_relay_control msg))
    (cl:cons ':PC_MCU_power_relay_control (PC_MCU_power_relay_control msg))
    (cl:cons ':Charger_start_command (Charger_start_command msg))
))
