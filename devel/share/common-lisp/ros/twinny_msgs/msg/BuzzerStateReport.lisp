; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude BuzzerStateReport.msg.html

(cl:defclass <BuzzerStateReport> (roslisp-msg-protocol:ros-message)
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
   (buzzer_state
    :reader buzzer_state
    :initarg :buzzer_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BuzzerStateReport (<BuzzerStateReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuzzerStateReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuzzerStateReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<BuzzerStateReport> is deprecated: use twinny_msgs-msg:BuzzerStateReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BuzzerStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <BuzzerStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'buzzer_state-val :lambda-list '(m))
(cl:defmethod buzzer_state-val ((m <BuzzerStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:buzzer_state-val is deprecated.  Use twinny_msgs-msg:buzzer_state instead.")
  (buzzer_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BuzzerStateReport>)))
    "Constants for message type '<BuzzerStateReport>"
  '((:BUZZER_STATE_OFF . 0)
    (:BUZZER_STATE_1 . 1)
    (:BUZZER_STATE_2 . 2)
    (:BUZZER_STATE_1_2 . 3)
    (:BUZZER_STATE_3 . 4)
    (:BUZZER_STATE_1_3 . 5)
    (:BUZZER_STATE_2_3 . 6)
    (:BUZZER_STATE_ALL . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BuzzerStateReport)))
    "Constants for message type 'BuzzerStateReport"
  '((:BUZZER_STATE_OFF . 0)
    (:BUZZER_STATE_1 . 1)
    (:BUZZER_STATE_2 . 2)
    (:BUZZER_STATE_1_2 . 3)
    (:BUZZER_STATE_3 . 4)
    (:BUZZER_STATE_1_3 . 5)
    (:BUZZER_STATE_2_3 . 6)
    (:BUZZER_STATE_ALL . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuzzerStateReport>) ostream)
  "Serializes a message object of type '<BuzzerStateReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuzzerStateReport>) istream)
  "Deserializes a message object of type '<BuzzerStateReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buzzer_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuzzerStateReport>)))
  "Returns string type for a message object of type '<BuzzerStateReport>"
  "twinny_msgs/BuzzerStateReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuzzerStateReport)))
  "Returns string type for a message object of type 'BuzzerStateReport"
  "twinny_msgs/BuzzerStateReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuzzerStateReport>)))
  "Returns md5sum for a message object of type '<BuzzerStateReport>"
  "04f8c52747d765f6a5272221d071769e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuzzerStateReport)))
  "Returns md5sum for a message object of type 'BuzzerStateReport"
  "04f8c52747d765f6a5272221d071769e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuzzerStateReport>)))
  "Returns full string definition for message of type '<BuzzerStateReport>"
  (cl:format cl:nil "Header header~%string type~%~%uint8 BUZZER_STATE_OFF=0~%uint8 BUZZER_STATE_1=1~%uint8 BUZZER_STATE_2=2~%uint8 BUZZER_STATE_1_2=3~%uint8 BUZZER_STATE_3=4~%uint8 BUZZER_STATE_1_3=5~%uint8 BUZZER_STATE_2_3=6~%uint8 BUZZER_STATE_ALL=7~%~%uint8 buzzer_state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuzzerStateReport)))
  "Returns full string definition for message of type 'BuzzerStateReport"
  (cl:format cl:nil "Header header~%string type~%~%uint8 BUZZER_STATE_OFF=0~%uint8 BUZZER_STATE_1=1~%uint8 BUZZER_STATE_2=2~%uint8 BUZZER_STATE_1_2=3~%uint8 BUZZER_STATE_3=4~%uint8 BUZZER_STATE_1_3=5~%uint8 BUZZER_STATE_2_3=6~%uint8 BUZZER_STATE_ALL=7~%~%uint8 buzzer_state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuzzerStateReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuzzerStateReport>))
  "Converts a ROS message object to a list"
  (cl:list 'BuzzerStateReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':buzzer_state (buzzer_state msg))
))
