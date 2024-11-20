; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorVoltage.msg.html

(cl:defclass <MonitorVoltage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Power_Actual_3_3V_monitoring
    :reader Power_Actual_3_3V_monitoring
    :initarg :Power_Actual_3_3V_monitoring
    :type cl:float
    :initform 0.0)
   (Power_Actual_5V_monitoring
    :reader Power_Actual_5V_monitoring
    :initarg :Power_Actual_5V_monitoring
    :type cl:float
    :initform 0.0)
   (Power_Actual_12V_monitoring
    :reader Power_Actual_12V_monitoring
    :initarg :Power_Actual_12V_monitoring
    :type cl:float
    :initform 0.0)
   (Power_Actual_24V_monitoring
    :reader Power_Actual_24V_monitoring
    :initarg :Power_Actual_24V_monitoring
    :type cl:float
    :initform 0.0)
   (Robot_Actual_3_3V_monitoring
    :reader Robot_Actual_3_3V_monitoring
    :initarg :Robot_Actual_3_3V_monitoring
    :type cl:float
    :initform 0.0)
   (Robot_Actual_5V_monitoring
    :reader Robot_Actual_5V_monitoring
    :initarg :Robot_Actual_5V_monitoring
    :type cl:float
    :initform 0.0)
   (Robot_Actual_12V_monitoring
    :reader Robot_Actual_12V_monitoring
    :initarg :Robot_Actual_12V_monitoring
    :type cl:float
    :initform 0.0)
   (Robot_Actual_24V_monitoring
    :reader Robot_Actual_24V_monitoring
    :initarg :Robot_Actual_24V_monitoring
    :type cl:float
    :initform 0.0))
)

(cl:defclass MonitorVoltage (<MonitorVoltage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorVoltage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorVoltage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorVoltage> is deprecated: use twinny_msgs-msg:MonitorVoltage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Power_Actual_3_3V_monitoring-val :lambda-list '(m))
(cl:defmethod Power_Actual_3_3V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Power_Actual_3_3V_monitoring-val is deprecated.  Use twinny_msgs-msg:Power_Actual_3_3V_monitoring instead.")
  (Power_Actual_3_3V_monitoring m))

(cl:ensure-generic-function 'Power_Actual_5V_monitoring-val :lambda-list '(m))
(cl:defmethod Power_Actual_5V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Power_Actual_5V_monitoring-val is deprecated.  Use twinny_msgs-msg:Power_Actual_5V_monitoring instead.")
  (Power_Actual_5V_monitoring m))

(cl:ensure-generic-function 'Power_Actual_12V_monitoring-val :lambda-list '(m))
(cl:defmethod Power_Actual_12V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Power_Actual_12V_monitoring-val is deprecated.  Use twinny_msgs-msg:Power_Actual_12V_monitoring instead.")
  (Power_Actual_12V_monitoring m))

(cl:ensure-generic-function 'Power_Actual_24V_monitoring-val :lambda-list '(m))
(cl:defmethod Power_Actual_24V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Power_Actual_24V_monitoring-val is deprecated.  Use twinny_msgs-msg:Power_Actual_24V_monitoring instead.")
  (Power_Actual_24V_monitoring m))

(cl:ensure-generic-function 'Robot_Actual_3_3V_monitoring-val :lambda-list '(m))
(cl:defmethod Robot_Actual_3_3V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Robot_Actual_3_3V_monitoring-val is deprecated.  Use twinny_msgs-msg:Robot_Actual_3_3V_monitoring instead.")
  (Robot_Actual_3_3V_monitoring m))

(cl:ensure-generic-function 'Robot_Actual_5V_monitoring-val :lambda-list '(m))
(cl:defmethod Robot_Actual_5V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Robot_Actual_5V_monitoring-val is deprecated.  Use twinny_msgs-msg:Robot_Actual_5V_monitoring instead.")
  (Robot_Actual_5V_monitoring m))

(cl:ensure-generic-function 'Robot_Actual_12V_monitoring-val :lambda-list '(m))
(cl:defmethod Robot_Actual_12V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Robot_Actual_12V_monitoring-val is deprecated.  Use twinny_msgs-msg:Robot_Actual_12V_monitoring instead.")
  (Robot_Actual_12V_monitoring m))

(cl:ensure-generic-function 'Robot_Actual_24V_monitoring-val :lambda-list '(m))
(cl:defmethod Robot_Actual_24V_monitoring-val ((m <MonitorVoltage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Robot_Actual_24V_monitoring-val is deprecated.  Use twinny_msgs-msg:Robot_Actual_24V_monitoring instead.")
  (Robot_Actual_24V_monitoring m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorVoltage>) ostream)
  "Serializes a message object of type '<MonitorVoltage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Power_Actual_3_3V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Power_Actual_5V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Power_Actual_12V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Power_Actual_24V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Robot_Actual_3_3V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Robot_Actual_5V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Robot_Actual_12V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Robot_Actual_24V_monitoring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorVoltage>) istream)
  "Deserializes a message object of type '<MonitorVoltage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Power_Actual_3_3V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Power_Actual_5V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Power_Actual_12V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Power_Actual_24V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Robot_Actual_3_3V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Robot_Actual_5V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Robot_Actual_12V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Robot_Actual_24V_monitoring) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorVoltage>)))
  "Returns string type for a message object of type '<MonitorVoltage>"
  "twinny_msgs/MonitorVoltage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorVoltage)))
  "Returns string type for a message object of type 'MonitorVoltage"
  "twinny_msgs/MonitorVoltage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorVoltage>)))
  "Returns md5sum for a message object of type '<MonitorVoltage>"
  "ded95860164e9591253c797ff59d9a16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorVoltage)))
  "Returns md5sum for a message object of type 'MonitorVoltage"
  "ded95860164e9591253c797ff59d9a16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorVoltage>)))
  "Returns full string definition for message of type '<MonitorVoltage>"
  (cl:format cl:nil "Header header ~%~%float64 Power_Actual_3_3V_monitoring~%float64 Power_Actual_5V_monitoring~%float64 Power_Actual_12V_monitoring~%float64 Power_Actual_24V_monitoring~%~%float64 Robot_Actual_3_3V_monitoring~%float64 Robot_Actual_5V_monitoring~%float64 Robot_Actual_12V_monitoring~%float64 Robot_Actual_24V_monitoring~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorVoltage)))
  "Returns full string definition for message of type 'MonitorVoltage"
  (cl:format cl:nil "Header header ~%~%float64 Power_Actual_3_3V_monitoring~%float64 Power_Actual_5V_monitoring~%float64 Power_Actual_12V_monitoring~%float64 Power_Actual_24V_monitoring~%~%float64 Robot_Actual_3_3V_monitoring~%float64 Robot_Actual_5V_monitoring~%float64 Robot_Actual_12V_monitoring~%float64 Robot_Actual_24V_monitoring~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorVoltage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorVoltage>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorVoltage
    (cl:cons ':header (header msg))
    (cl:cons ':Power_Actual_3_3V_monitoring (Power_Actual_3_3V_monitoring msg))
    (cl:cons ':Power_Actual_5V_monitoring (Power_Actual_5V_monitoring msg))
    (cl:cons ':Power_Actual_12V_monitoring (Power_Actual_12V_monitoring msg))
    (cl:cons ':Power_Actual_24V_monitoring (Power_Actual_24V_monitoring msg))
    (cl:cons ':Robot_Actual_3_3V_monitoring (Robot_Actual_3_3V_monitoring msg))
    (cl:cons ':Robot_Actual_5V_monitoring (Robot_Actual_5V_monitoring msg))
    (cl:cons ':Robot_Actual_12V_monitoring (Robot_Actual_12V_monitoring msg))
    (cl:cons ':Robot_Actual_24V_monitoring (Robot_Actual_24V_monitoring msg))
))
