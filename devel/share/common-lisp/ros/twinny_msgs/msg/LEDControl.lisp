; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude LEDControl.msg.html

(cl:defclass <LEDControl> (roslisp-msg-protocol:ros-message)
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
   (ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (STATE
    :reader STATE
    :initarg :STATE
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LEDControl (<LEDControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<LEDControl> is deprecated: use twinny_msgs-msg:LEDControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <LEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ID-val is deprecated.  Use twinny_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'STATE-val :lambda-list '(m))
(cl:defmethod STATE-val ((m <LEDControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:STATE-val is deprecated.  Use twinny_msgs-msg:STATE instead.")
  (STATE m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LEDControl>)))
    "Constants for message type '<LEDControl>"
  '((:LED_0 . 0)
    (:LED_1 . 1)
    (:LED_2 . 2)
    (:LED_3 . 3)
    (:LED_4 . 4)
    (:LED_5 . 5)
    (:LED_6 . 6)
    (:LED_7 . 7)
    (:LED_8 . 8)
    (:LED_9 . 9)
    (:LED_10 . 10)
    (:LED_11 . 11)
    (:LED_BAR_OFF . 100)
    (:LED_BAR_RED . 101)
    (:LED_BAR_GREEN . 102)
    (:LED_BAR_YELLOW . 103)
    (:LED_BAR_BLUE . 104)
    (:LED_BAR_MAGENTA . 105)
    (:LED_BAR_CYAN . 106)
    (:LED_BAR_WHITE . 107)
    (:LED_BAR_OFF_2 . 200)
    (:LED_BAR_RED_2 . 201)
    (:LED_BAR_GREEN_2 . 202)
    (:LED_BAR_YELLOW_2 . 203)
    (:LED_BAR_BLUE_2 . 204)
    (:LED_BAR_MAGENTA_2 . 205)
    (:LED_BAR_CYAN_2 . 206)
    (:LED_BAR_WHITE_2 . 207)
    (:LED_ALL . 255)
    (:STATE_OFF . 0)
    (:STATE_ON . 1)
    (:STATE_BLINK . 2)
    (:STATE_KEEP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LEDControl)))
    "Constants for message type 'LEDControl"
  '((:LED_0 . 0)
    (:LED_1 . 1)
    (:LED_2 . 2)
    (:LED_3 . 3)
    (:LED_4 . 4)
    (:LED_5 . 5)
    (:LED_6 . 6)
    (:LED_7 . 7)
    (:LED_8 . 8)
    (:LED_9 . 9)
    (:LED_10 . 10)
    (:LED_11 . 11)
    (:LED_BAR_OFF . 100)
    (:LED_BAR_RED . 101)
    (:LED_BAR_GREEN . 102)
    (:LED_BAR_YELLOW . 103)
    (:LED_BAR_BLUE . 104)
    (:LED_BAR_MAGENTA . 105)
    (:LED_BAR_CYAN . 106)
    (:LED_BAR_WHITE . 107)
    (:LED_BAR_OFF_2 . 200)
    (:LED_BAR_RED_2 . 201)
    (:LED_BAR_GREEN_2 . 202)
    (:LED_BAR_YELLOW_2 . 203)
    (:LED_BAR_BLUE_2 . 204)
    (:LED_BAR_MAGENTA_2 . 205)
    (:LED_BAR_CYAN_2 . 206)
    (:LED_BAR_WHITE_2 . 207)
    (:LED_ALL . 255)
    (:STATE_OFF . 0)
    (:STATE_ON . 1)
    (:STATE_BLINK . 2)
    (:STATE_KEEP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDControl>) ostream)
  "Serializes a message object of type '<LEDControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'STATE)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDControl>) istream)
  "Deserializes a message object of type '<LEDControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'STATE)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDControl>)))
  "Returns string type for a message object of type '<LEDControl>"
  "twinny_msgs/LEDControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDControl)))
  "Returns string type for a message object of type 'LEDControl"
  "twinny_msgs/LEDControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDControl>)))
  "Returns md5sum for a message object of type '<LEDControl>"
  "280cc3f1ed08eaa950d3ccca2f9e6e3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDControl)))
  "Returns md5sum for a message object of type 'LEDControl"
  "280cc3f1ed08eaa950d3ccca2f9e6e3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDControl>)))
  "Returns full string definition for message of type '<LEDControl>"
  (cl:format cl:nil "Header header~%string type~%~%uint8 LED_0=0~%uint8 LED_1=1~%uint8 LED_2=2~%uint8 LED_3=3 ~%uint8 LED_4=4~%uint8 LED_5=5~%~%uint8 LED_6=6~%uint8 LED_7=7~%uint8 LED_8=8~%uint8 LED_9=9~%uint8 LED_10=10~%uint8 LED_11=11~%~%uint8 LED_BAR_OFF=100~%uint8 LED_BAR_RED=101~%uint8 LED_BAR_GREEN=102~%uint8 LED_BAR_YELLOW=103~%uint8 LED_BAR_BLUE=104~%uint8 LED_BAR_MAGENTA=105~%uint8 LED_BAR_CYAN=106~%uint8 LED_BAR_WHITE=107~%~%uint8 LED_BAR_OFF_2=200~%uint8 LED_BAR_RED_2=201~%uint8 LED_BAR_GREEN_2=202~%uint8 LED_BAR_YELLOW_2=203~%uint8 LED_BAR_BLUE_2=204~%uint8 LED_BAR_MAGENTA_2=205~%uint8 LED_BAR_CYAN_2=206~%uint8 LED_BAR_WHITE_2=207~%~%uint8 LED_ALL=255~%~%uint8 STATE_OFF=0~%uint8 STATE_ON=1~%uint8 STATE_BLINK=2~%uint8 STATE_KEEP=3~%~%uint8 ID~%uint8 STATE~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDControl)))
  "Returns full string definition for message of type 'LEDControl"
  (cl:format cl:nil "Header header~%string type~%~%uint8 LED_0=0~%uint8 LED_1=1~%uint8 LED_2=2~%uint8 LED_3=3 ~%uint8 LED_4=4~%uint8 LED_5=5~%~%uint8 LED_6=6~%uint8 LED_7=7~%uint8 LED_8=8~%uint8 LED_9=9~%uint8 LED_10=10~%uint8 LED_11=11~%~%uint8 LED_BAR_OFF=100~%uint8 LED_BAR_RED=101~%uint8 LED_BAR_GREEN=102~%uint8 LED_BAR_YELLOW=103~%uint8 LED_BAR_BLUE=104~%uint8 LED_BAR_MAGENTA=105~%uint8 LED_BAR_CYAN=106~%uint8 LED_BAR_WHITE=107~%~%uint8 LED_BAR_OFF_2=200~%uint8 LED_BAR_RED_2=201~%uint8 LED_BAR_GREEN_2=202~%uint8 LED_BAR_YELLOW_2=203~%uint8 LED_BAR_BLUE_2=204~%uint8 LED_BAR_MAGENTA_2=205~%uint8 LED_BAR_CYAN_2=206~%uint8 LED_BAR_WHITE_2=207~%~%uint8 LED_ALL=255~%~%uint8 STATE_OFF=0~%uint8 STATE_ON=1~%uint8 STATE_BLINK=2~%uint8 STATE_KEEP=3~%~%uint8 ID~%uint8 STATE~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDControl>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDControl
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':STATE (STATE msg))
))
