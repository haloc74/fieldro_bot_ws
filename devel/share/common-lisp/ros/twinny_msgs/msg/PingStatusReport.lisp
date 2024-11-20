; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PingStatusReport.msg.html

(cl:defclass <PingStatusReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (device_name
    :reader device_name
    :initarg :device_name
    :type cl:string
    :initform "")
   (device_ip
    :reader device_ip
    :initarg :device_ip
    :type cl:string
    :initform "")
   (ping_status
    :reader ping_status
    :initarg :ping_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PingStatusReport (<PingStatusReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PingStatusReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PingStatusReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PingStatusReport> is deprecated: use twinny_msgs-msg:PingStatusReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PingStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'device_name-val :lambda-list '(m))
(cl:defmethod device_name-val ((m <PingStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:device_name-val is deprecated.  Use twinny_msgs-msg:device_name instead.")
  (device_name m))

(cl:ensure-generic-function 'device_ip-val :lambda-list '(m))
(cl:defmethod device_ip-val ((m <PingStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:device_ip-val is deprecated.  Use twinny_msgs-msg:device_ip instead.")
  (device_ip m))

(cl:ensure-generic-function 'ping_status-val :lambda-list '(m))
(cl:defmethod ping_status-val ((m <PingStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ping_status-val is deprecated.  Use twinny_msgs-msg:ping_status instead.")
  (ping_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PingStatusReport>) ostream)
  "Serializes a message object of type '<PingStatusReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_ip))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ping_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PingStatusReport>) istream)
  "Deserializes a message object of type '<PingStatusReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'ping_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PingStatusReport>)))
  "Returns string type for a message object of type '<PingStatusReport>"
  "twinny_msgs/PingStatusReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PingStatusReport)))
  "Returns string type for a message object of type 'PingStatusReport"
  "twinny_msgs/PingStatusReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PingStatusReport>)))
  "Returns md5sum for a message object of type '<PingStatusReport>"
  "b7dc823ed209aaeabcd0a55272cee0bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PingStatusReport)))
  "Returns md5sum for a message object of type 'PingStatusReport"
  "b7dc823ed209aaeabcd0a55272cee0bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PingStatusReport>)))
  "Returns full string definition for message of type '<PingStatusReport>"
  (cl:format cl:nil "Header header~%~%string device_name~%string device_ip~%bool ping_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PingStatusReport)))
  "Returns full string definition for message of type 'PingStatusReport"
  (cl:format cl:nil "Header header~%~%string device_name~%string device_ip~%bool ping_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PingStatusReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'device_name))
     4 (cl:length (cl:slot-value msg 'device_ip))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PingStatusReport>))
  "Converts a ROS message object to a list"
  (cl:list 'PingStatusReport
    (cl:cons ':header (header msg))
    (cl:cons ':device_name (device_name msg))
    (cl:cons ':device_ip (device_ip msg))
    (cl:cons ':ping_status (ping_status msg))
))
