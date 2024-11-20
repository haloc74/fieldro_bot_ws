; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude LampStateReport.msg.html

(cl:defclass <LampStateReport> (roslisp-msg-protocol:ros-message)
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
   (lamp_state
    :reader lamp_state
    :initarg :lamp_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LampStateReport (<LampStateReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LampStateReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LampStateReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<LampStateReport> is deprecated: use twinny_msgs-msg:LampStateReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LampStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LampStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'lamp_state-val :lambda-list '(m))
(cl:defmethod lamp_state-val ((m <LampStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lamp_state-val is deprecated.  Use twinny_msgs-msg:lamp_state instead.")
  (lamp_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LampStateReport>)))
    "Constants for message type '<LampStateReport>"
  '((:LAMP_STATUS_OFF . 0)
    (:LAMP_STATUS_RED . 1)
    (:LAMP_STATUS_AMBER . 2)
    (:LAMP_STATUS_RED_AMBER . 3)
    (:LAMP_STATUS_GREEN . 4)
    (:LAMP_STATUS_RED_GREEN . 5)
    (:LAMP_STATUS_AMBER_GREEN . 6)
    (:LAMP_STATUS_ALL . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LampStateReport)))
    "Constants for message type 'LampStateReport"
  '((:LAMP_STATUS_OFF . 0)
    (:LAMP_STATUS_RED . 1)
    (:LAMP_STATUS_AMBER . 2)
    (:LAMP_STATUS_RED_AMBER . 3)
    (:LAMP_STATUS_GREEN . 4)
    (:LAMP_STATUS_RED_GREEN . 5)
    (:LAMP_STATUS_AMBER_GREEN . 6)
    (:LAMP_STATUS_ALL . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LampStateReport>) ostream)
  "Serializes a message object of type '<LampStateReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lamp_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LampStateReport>) istream)
  "Deserializes a message object of type '<LampStateReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lamp_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LampStateReport>)))
  "Returns string type for a message object of type '<LampStateReport>"
  "twinny_msgs/LampStateReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LampStateReport)))
  "Returns string type for a message object of type 'LampStateReport"
  "twinny_msgs/LampStateReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LampStateReport>)))
  "Returns md5sum for a message object of type '<LampStateReport>"
  "51065b6ca361ab348ad809d22534f3d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LampStateReport)))
  "Returns md5sum for a message object of type 'LampStateReport"
  "51065b6ca361ab348ad809d22534f3d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LampStateReport>)))
  "Returns full string definition for message of type '<LampStateReport>"
  (cl:format cl:nil "Header header~%string type~%~%uint8 LAMP_STATUS_OFF=0~%uint8 LAMP_STATUS_RED=1~%uint8 LAMP_STATUS_AMBER=2~%uint8 LAMP_STATUS_RED_AMBER=3~%uint8 LAMP_STATUS_GREEN=4~%uint8 LAMP_STATUS_RED_GREEN=5~%uint8 LAMP_STATUS_AMBER_GREEN=6~%uint8 LAMP_STATUS_ALL=7~%~%uint8 lamp_state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LampStateReport)))
  "Returns full string definition for message of type 'LampStateReport"
  (cl:format cl:nil "Header header~%string type~%~%uint8 LAMP_STATUS_OFF=0~%uint8 LAMP_STATUS_RED=1~%uint8 LAMP_STATUS_AMBER=2~%uint8 LAMP_STATUS_RED_AMBER=3~%uint8 LAMP_STATUS_GREEN=4~%uint8 LAMP_STATUS_RED_GREEN=5~%uint8 LAMP_STATUS_AMBER_GREEN=6~%uint8 LAMP_STATUS_ALL=7~%~%uint8 lamp_state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LampStateReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LampStateReport>))
  "Converts a ROS message object to a list"
  (cl:list 'LampStateReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':lamp_state (lamp_state msg))
))
