; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude BuzzerControl.msg.html

(cl:defclass <BuzzerControl> (roslisp-msg-protocol:ros-message)
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
   (buzzer_control
    :reader buzzer_control
    :initarg :buzzer_control
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BuzzerControl (<BuzzerControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuzzerControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuzzerControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<BuzzerControl> is deprecated: use twinny_msgs-msg:BuzzerControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BuzzerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <BuzzerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'buzzer_control-val :lambda-list '(m))
(cl:defmethod buzzer_control-val ((m <BuzzerControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:buzzer_control-val is deprecated.  Use twinny_msgs-msg:buzzer_control instead.")
  (buzzer_control m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BuzzerControl>)))
    "Constants for message type '<BuzzerControl>"
  '((:BUZZER_CONTROL_OFF . 0)
    (:BUZZER_CONTROL_1 . 1)
    (:BUZZER_CONTROL_2 . 2)
    (:BUZZER_CONTROL_1_2 . 3)
    (:BUZZER_CONTROL_3 . 4)
    (:BUZZER_CONTROL_1_3 . 5)
    (:BUZZER_CONTROL_2_3 . 6)
    (:BUZZER_CONTROL_ALL . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BuzzerControl)))
    "Constants for message type 'BuzzerControl"
  '((:BUZZER_CONTROL_OFF . 0)
    (:BUZZER_CONTROL_1 . 1)
    (:BUZZER_CONTROL_2 . 2)
    (:BUZZER_CONTROL_1_2 . 3)
    (:BUZZER_CONTROL_3 . 4)
    (:BUZZER_CONTROL_1_3 . 5)
    (:BUZZER_CONTROL_2_3 . 6)
    (:BUZZER_CONTROL_ALL . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuzzerControl>) ostream)
  "Serializes a message object of type '<BuzzerControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer_control)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuzzerControl>) istream)
  "Deserializes a message object of type '<BuzzerControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer_control)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuzzerControl>)))
  "Returns string type for a message object of type '<BuzzerControl>"
  "twinny_msgs/BuzzerControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuzzerControl)))
  "Returns string type for a message object of type 'BuzzerControl"
  "twinny_msgs/BuzzerControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuzzerControl>)))
  "Returns md5sum for a message object of type '<BuzzerControl>"
  "2deb2adab106391fb0b57e805d1b2cd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuzzerControl)))
  "Returns md5sum for a message object of type 'BuzzerControl"
  "2deb2adab106391fb0b57e805d1b2cd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuzzerControl>)))
  "Returns full string definition for message of type '<BuzzerControl>"
  (cl:format cl:nil "Header header~%string type~%~%uint8 BUZZER_CONTROL_OFF=0~%uint8 BUZZER_CONTROL_1=1~%uint8 BUZZER_CONTROL_2=2~%uint8 BUZZER_CONTROL_1_2=3~%uint8 BUZZER_CONTROL_3=4~%uint8 BUZZER_CONTROL_1_3=5~%uint8 BUZZER_CONTROL_2_3=6~%uint8 BUZZER_CONTROL_ALL=7~%~%uint8 buzzer_control~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuzzerControl)))
  "Returns full string definition for message of type 'BuzzerControl"
  (cl:format cl:nil "Header header~%string type~%~%uint8 BUZZER_CONTROL_OFF=0~%uint8 BUZZER_CONTROL_1=1~%uint8 BUZZER_CONTROL_2=2~%uint8 BUZZER_CONTROL_1_2=3~%uint8 BUZZER_CONTROL_3=4~%uint8 BUZZER_CONTROL_1_3=5~%uint8 BUZZER_CONTROL_2_3=6~%uint8 BUZZER_CONTROL_ALL=7~%~%uint8 buzzer_control~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuzzerControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuzzerControl>))
  "Converts a ROS message object to a list"
  (cl:list 'BuzzerControl
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':buzzer_control (buzzer_control msg))
))
