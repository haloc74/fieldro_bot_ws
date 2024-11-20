; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorMotorError.msg.html

(cl:defclass <MonitorMotorError> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Motor_Number
    :reader Motor_Number
    :initarg :Motor_Number
    :type cl:fixnum
    :initform 0)
   (Motor_drive_bridge_status
    :reader Motor_drive_bridge_status
    :initarg :Motor_drive_bridge_status
    :type cl:fixnum
    :initform 0)
   (Motor_drive_protection_status
    :reader Motor_drive_protection_status
    :initarg :Motor_drive_protection_status
    :type cl:fixnum
    :initform 0)
   (Motor_system_protection_status
    :reader Motor_system_protection_status
    :initarg :Motor_system_protection_status
    :type cl:fixnum
    :initform 0)
   (Motor_drive_system_status
    :reader Motor_drive_system_status
    :initarg :Motor_drive_system_status
    :type cl:fixnum
    :initform 0)
   (Motor_Error_Level
    :reader Motor_Error_Level
    :initarg :Motor_Error_Level
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MonitorMotorError (<MonitorMotorError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorMotorError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorMotorError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorMotorError> is deprecated: use twinny_msgs-msg:MonitorMotorError instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorMotorError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Motor_Number-val :lambda-list '(m))
(cl:defmethod Motor_Number-val ((m <MonitorMotorError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_Number-val is deprecated.  Use twinny_msgs-msg:Motor_Number instead.")
  (Motor_Number m))

(cl:ensure-generic-function 'Motor_drive_bridge_status-val :lambda-list '(m))
(cl:defmethod Motor_drive_bridge_status-val ((m <MonitorMotorError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_drive_bridge_status-val is deprecated.  Use twinny_msgs-msg:Motor_drive_bridge_status instead.")
  (Motor_drive_bridge_status m))

(cl:ensure-generic-function 'Motor_drive_protection_status-val :lambda-list '(m))
(cl:defmethod Motor_drive_protection_status-val ((m <MonitorMotorError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_drive_protection_status-val is deprecated.  Use twinny_msgs-msg:Motor_drive_protection_status instead.")
  (Motor_drive_protection_status m))

(cl:ensure-generic-function 'Motor_system_protection_status-val :lambda-list '(m))
(cl:defmethod Motor_system_protection_status-val ((m <MonitorMotorError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_system_protection_status-val is deprecated.  Use twinny_msgs-msg:Motor_system_protection_status instead.")
  (Motor_system_protection_status m))

(cl:ensure-generic-function 'Motor_drive_system_status-val :lambda-list '(m))
(cl:defmethod Motor_drive_system_status-val ((m <MonitorMotorError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_drive_system_status-val is deprecated.  Use twinny_msgs-msg:Motor_drive_system_status instead.")
  (Motor_drive_system_status m))

(cl:ensure-generic-function 'Motor_Error_Level-val :lambda-list '(m))
(cl:defmethod Motor_Error_Level-val ((m <MonitorMotorError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_Error_Level-val is deprecated.  Use twinny_msgs-msg:Motor_Error_Level instead.")
  (Motor_Error_Level m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MonitorMotorError>)))
    "Constants for message type '<MonitorMotorError>"
  '((:MOTOR_ERROR_LEVEL_HIGH . -3)
    (:MOTOR_ERROR_LEVEL_MIDDLE . -2)
    (:MOTOR_ERROR_LEVEL_LOW . -1)
    (:MOTOR_ERROR_LEVEL_NORMAL . 0)
    (:MOTOR_ERROR_LEVEL_INVALID . -99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MonitorMotorError)))
    "Constants for message type 'MonitorMotorError"
  '((:MOTOR_ERROR_LEVEL_HIGH . -3)
    (:MOTOR_ERROR_LEVEL_MIDDLE . -2)
    (:MOTOR_ERROR_LEVEL_LOW . -1)
    (:MOTOR_ERROR_LEVEL_NORMAL . 0)
    (:MOTOR_ERROR_LEVEL_INVALID . -99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorMotorError>) ostream)
  "Serializes a message object of type '<MonitorMotorError>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_Number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_drive_bridge_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_drive_bridge_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_drive_protection_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_drive_protection_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_system_protection_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_system_protection_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_drive_system_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_drive_system_status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Motor_Error_Level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorMotorError>) istream)
  "Deserializes a message object of type '<MonitorMotorError>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_Number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_drive_bridge_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_drive_bridge_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_drive_protection_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_drive_protection_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_system_protection_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_system_protection_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_drive_system_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Motor_drive_system_status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Motor_Error_Level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorMotorError>)))
  "Returns string type for a message object of type '<MonitorMotorError>"
  "twinny_msgs/MonitorMotorError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorMotorError)))
  "Returns string type for a message object of type 'MonitorMotorError"
  "twinny_msgs/MonitorMotorError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorMotorError>)))
  "Returns md5sum for a message object of type '<MonitorMotorError>"
  "32bee29b39aa81380c35de6c8643364c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorMotorError)))
  "Returns md5sum for a message object of type 'MonitorMotorError"
  "32bee29b39aa81380c35de6c8643364c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorMotorError>)))
  "Returns full string definition for message of type '<MonitorMotorError>"
  (cl:format cl:nil "Header header ~%~%uint8 Motor_Number~%uint16 Motor_drive_bridge_status~%uint16 Motor_drive_protection_status~%uint16 Motor_system_protection_status~%uint16 Motor_drive_system_status~%~%int8 MOTOR_ERROR_LEVEL_HIGH=-3~%int8 MOTOR_ERROR_LEVEL_MIDDLE=-2~%int8 MOTOR_ERROR_LEVEL_LOW=-1~%int8 MOTOR_ERROR_LEVEL_NORMAL=0~%int8 MOTOR_ERROR_LEVEL_INVALID=-99~%int8 Motor_Error_Level~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorMotorError)))
  "Returns full string definition for message of type 'MonitorMotorError"
  (cl:format cl:nil "Header header ~%~%uint8 Motor_Number~%uint16 Motor_drive_bridge_status~%uint16 Motor_drive_protection_status~%uint16 Motor_system_protection_status~%uint16 Motor_drive_system_status~%~%int8 MOTOR_ERROR_LEVEL_HIGH=-3~%int8 MOTOR_ERROR_LEVEL_MIDDLE=-2~%int8 MOTOR_ERROR_LEVEL_LOW=-1~%int8 MOTOR_ERROR_LEVEL_NORMAL=0~%int8 MOTOR_ERROR_LEVEL_INVALID=-99~%int8 Motor_Error_Level~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorMotorError>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     2
     2
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorMotorError>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorMotorError
    (cl:cons ':header (header msg))
    (cl:cons ':Motor_Number (Motor_Number msg))
    (cl:cons ':Motor_drive_bridge_status (Motor_drive_bridge_status msg))
    (cl:cons ':Motor_drive_protection_status (Motor_drive_protection_status msg))
    (cl:cons ':Motor_system_protection_status (Motor_system_protection_status msg))
    (cl:cons ':Motor_drive_system_status (Motor_drive_system_status msg))
    (cl:cons ':Motor_Error_Level (Motor_Error_Level msg))
))
