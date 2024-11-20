; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PositionCompensatorReport.msg.html

(cl:defclass <PositionCompensatorReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command_id
    :reader command_id
    :initarg :command_id
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (last_event
    :reader last_event
    :initarg :last_event
    :type cl:integer
    :initform 0)
   (final_x_error
    :reader final_x_error
    :initarg :final_x_error
    :type cl:float
    :initform 0.0)
   (final_y_error
    :reader final_y_error
    :initarg :final_y_error
    :type cl:float
    :initform 0.0)
   (final_theta_error
    :reader final_theta_error
    :initarg :final_theta_error
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionCompensatorReport (<PositionCompensatorReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCompensatorReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCompensatorReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PositionCompensatorReport> is deprecated: use twinny_msgs-msg:PositionCompensatorReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionCompensatorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command_id-val :lambda-list '(m))
(cl:defmethod command_id-val ((m <PositionCompensatorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:command_id-val is deprecated.  Use twinny_msgs-msg:command_id instead.")
  (command_id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PositionCompensatorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:state-val is deprecated.  Use twinny_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'last_event-val :lambda-list '(m))
(cl:defmethod last_event-val ((m <PositionCompensatorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:last_event-val is deprecated.  Use twinny_msgs-msg:last_event instead.")
  (last_event m))

(cl:ensure-generic-function 'final_x_error-val :lambda-list '(m))
(cl:defmethod final_x_error-val ((m <PositionCompensatorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:final_x_error-val is deprecated.  Use twinny_msgs-msg:final_x_error instead.")
  (final_x_error m))

(cl:ensure-generic-function 'final_y_error-val :lambda-list '(m))
(cl:defmethod final_y_error-val ((m <PositionCompensatorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:final_y_error-val is deprecated.  Use twinny_msgs-msg:final_y_error instead.")
  (final_y_error m))

(cl:ensure-generic-function 'final_theta_error-val :lambda-list '(m))
(cl:defmethod final_theta_error-val ((m <PositionCompensatorReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:final_theta_error-val is deprecated.  Use twinny_msgs-msg:final_theta_error instead.")
  (final_theta_error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionCompensatorReport>)))
    "Constants for message type '<PositionCompensatorReport>"
  '((:READY . 1)
    (:RUNNING . 2)
    (:ERROR . -99)
    (:NO_EVENT . 0)
    (:GET_START . 1)
    (:GET_STOP . 2)
    (:FIND_STATION . 11)
    (:FINISHED . 21)
    (:BUMPER_ACTIVATED . 31)
    (:BUMPER_RELEASED . 32)
    (:RECOVERY_WORKING . 41)
    (:FAIL_DUETO_NO_STATION . -1)
    (:FAIL_DUETO_OVER_RECOVERY . -2)
    (:FAIL_DUETO_LENGTH_ERROR . -3)
    (:FAIL_DUETO_ANGLE_ERROR . -4)
    (:ERROR_OCCUR . -99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionCompensatorReport)))
    "Constants for message type 'PositionCompensatorReport"
  '((:READY . 1)
    (:RUNNING . 2)
    (:ERROR . -99)
    (:NO_EVENT . 0)
    (:GET_START . 1)
    (:GET_STOP . 2)
    (:FIND_STATION . 11)
    (:FINISHED . 21)
    (:BUMPER_ACTIVATED . 31)
    (:BUMPER_RELEASED . 32)
    (:RECOVERY_WORKING . 41)
    (:FAIL_DUETO_NO_STATION . -1)
    (:FAIL_DUETO_OVER_RECOVERY . -2)
    (:FAIL_DUETO_LENGTH_ERROR . -3)
    (:FAIL_DUETO_ANGLE_ERROR . -4)
    (:ERROR_OCCUR . -99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCompensatorReport>) ostream)
  "Serializes a message object of type '<PositionCompensatorReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'command_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'last_event)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_x_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_y_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_theta_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCompensatorReport>) istream)
  "Deserializes a message object of type '<PositionCompensatorReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_event) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_x_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_y_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_theta_error) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCompensatorReport>)))
  "Returns string type for a message object of type '<PositionCompensatorReport>"
  "twinny_msgs/PositionCompensatorReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCompensatorReport)))
  "Returns string type for a message object of type 'PositionCompensatorReport"
  "twinny_msgs/PositionCompensatorReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCompensatorReport>)))
  "Returns md5sum for a message object of type '<PositionCompensatorReport>"
  "ce394262ae46a810715d34454a160030")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCompensatorReport)))
  "Returns md5sum for a message object of type 'PositionCompensatorReport"
  "ce394262ae46a810715d34454a160030")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCompensatorReport>)))
  "Returns full string definition for message of type '<PositionCompensatorReport>"
  (cl:format cl:nil "Header header~%~%int32 command_id~%~%int32 READY = 1~%int32 RUNNING = 2~%int32 ERROR = -99~%int32 state~%~%int32 NO_EVENT = 0~%int32 GET_START = 1~%int32 GET_STOP = 2~%~%int32 FIND_STATION = 11~%int32 FINISHED = 21~%~%int32 BUMPER_ACTIVATED = 31~%int32 BUMPER_RELEASED = 32~%~%int32 RECOVERY_WORKING = 41~%~%int32 FAIL_DUETO_NO_STATION = -1~%int32 FAIL_DUETO_OVER_RECOVERY = -2~%int32 FAIL_DUETO_LENGTH_ERROR = -3~%int32 FAIL_DUETO_ANGLE_ERROR = -4~%~%int32 ERROR_OCCUR = -99~%~%int32 last_event~%~%float64 final_x_error~%float64 final_y_error~%float64 final_theta_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCompensatorReport)))
  "Returns full string definition for message of type 'PositionCompensatorReport"
  (cl:format cl:nil "Header header~%~%int32 command_id~%~%int32 READY = 1~%int32 RUNNING = 2~%int32 ERROR = -99~%int32 state~%~%int32 NO_EVENT = 0~%int32 GET_START = 1~%int32 GET_STOP = 2~%~%int32 FIND_STATION = 11~%int32 FINISHED = 21~%~%int32 BUMPER_ACTIVATED = 31~%int32 BUMPER_RELEASED = 32~%~%int32 RECOVERY_WORKING = 41~%~%int32 FAIL_DUETO_NO_STATION = -1~%int32 FAIL_DUETO_OVER_RECOVERY = -2~%int32 FAIL_DUETO_LENGTH_ERROR = -3~%int32 FAIL_DUETO_ANGLE_ERROR = -4~%~%int32 ERROR_OCCUR = -99~%~%int32 last_event~%~%float64 final_x_error~%float64 final_y_error~%float64 final_theta_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCompensatorReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCompensatorReport>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCompensatorReport
    (cl:cons ':header (header msg))
    (cl:cons ':command_id (command_id msg))
    (cl:cons ':state (state msg))
    (cl:cons ':last_event (last_event msg))
    (cl:cons ':final_x_error (final_x_error msg))
    (cl:cons ':final_y_error (final_y_error msg))
    (cl:cons ':final_theta_error (final_theta_error msg))
))
