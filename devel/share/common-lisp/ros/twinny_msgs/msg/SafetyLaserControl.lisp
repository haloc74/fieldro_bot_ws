; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SafetyLaserControl.msg.html

(cl:defclass <SafetyLaserControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (laser_control
    :reader laser_control
    :initarg :laser_control
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SafetyLaserControl (<SafetyLaserControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyLaserControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyLaserControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SafetyLaserControl> is deprecated: use twinny_msgs-msg:SafetyLaserControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyLaserControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SafetyLaserControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'laser_control-val :lambda-list '(m))
(cl:defmethod laser_control-val ((m <SafetyLaserControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:laser_control-val is deprecated.  Use twinny_msgs-msg:laser_control instead.")
  (laser_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyLaserControl>) ostream)
  "Serializes a message object of type '<SafetyLaserControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'laser_control) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyLaserControl>) istream)
  "Deserializes a message object of type '<SafetyLaserControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'laser_control) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyLaserControl>)))
  "Returns string type for a message object of type '<SafetyLaserControl>"
  "twinny_msgs/SafetyLaserControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyLaserControl)))
  "Returns string type for a message object of type 'SafetyLaserControl"
  "twinny_msgs/SafetyLaserControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyLaserControl>)))
  "Returns md5sum for a message object of type '<SafetyLaserControl>"
  "39e93282a82d8d72ccc056afe60e1ae5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyLaserControl)))
  "Returns md5sum for a message object of type 'SafetyLaserControl"
  "39e93282a82d8d72ccc056afe60e1ae5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyLaserControl>)))
  "Returns full string definition for message of type '<SafetyLaserControl>"
  (cl:format cl:nil "Header header~%string type~%~%bool laser_control~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyLaserControl)))
  "Returns full string definition for message of type 'SafetyLaserControl"
  (cl:format cl:nil "Header header~%string type~%~%bool laser_control~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyLaserControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyLaserControl>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyLaserControl
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':laser_control (laser_control msg))
))
