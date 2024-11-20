; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude LEDStateReport.msg.html

(cl:defclass <LEDStateReport> (roslisp-msg-protocol:ros-message)
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
   (LED_0_state
    :reader LED_0_state
    :initarg :LED_0_state
    :type cl:fixnum
    :initform 0)
   (LED_1_state
    :reader LED_1_state
    :initarg :LED_1_state
    :type cl:fixnum
    :initform 0)
   (LED_2_state
    :reader LED_2_state
    :initarg :LED_2_state
    :type cl:fixnum
    :initform 0)
   (LED_3_state
    :reader LED_3_state
    :initarg :LED_3_state
    :type cl:fixnum
    :initform 0)
   (LED_4_state
    :reader LED_4_state
    :initarg :LED_4_state
    :type cl:fixnum
    :initform 0)
   (LED_5_state
    :reader LED_5_state
    :initarg :LED_5_state
    :type cl:fixnum
    :initform 0)
   (SUB_LED_0_state
    :reader SUB_LED_0_state
    :initarg :SUB_LED_0_state
    :type cl:fixnum
    :initform 0)
   (SUB_LED_1_state
    :reader SUB_LED_1_state
    :initarg :SUB_LED_1_state
    :type cl:fixnum
    :initform 0)
   (SUB_LED_2_state
    :reader SUB_LED_2_state
    :initarg :SUB_LED_2_state
    :type cl:fixnum
    :initform 0)
   (SUB_LED_3_state
    :reader SUB_LED_3_state
    :initarg :SUB_LED_3_state
    :type cl:fixnum
    :initform 0)
   (SUB_LED_4_state
    :reader SUB_LED_4_state
    :initarg :SUB_LED_4_state
    :type cl:fixnum
    :initform 0)
   (SUB_LED_5_state
    :reader SUB_LED_5_state
    :initarg :SUB_LED_5_state
    :type cl:fixnum
    :initform 0)
   (LED_bar_color
    :reader LED_bar_color
    :initarg :LED_bar_color
    :type cl:fixnum
    :initform 0)
   (LED_bar_state
    :reader LED_bar_state
    :initarg :LED_bar_state
    :type cl:fixnum
    :initform 0)
   (LED_bar2_color
    :reader LED_bar2_color
    :initarg :LED_bar2_color
    :type cl:fixnum
    :initform 0)
   (LED_bar2_state
    :reader LED_bar2_state
    :initarg :LED_bar2_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LEDStateReport (<LEDStateReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LEDStateReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LEDStateReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<LEDStateReport> is deprecated: use twinny_msgs-msg:LEDStateReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'LED_0_state-val :lambda-list '(m))
(cl:defmethod LED_0_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_0_state-val is deprecated.  Use twinny_msgs-msg:LED_0_state instead.")
  (LED_0_state m))

(cl:ensure-generic-function 'LED_1_state-val :lambda-list '(m))
(cl:defmethod LED_1_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_1_state-val is deprecated.  Use twinny_msgs-msg:LED_1_state instead.")
  (LED_1_state m))

(cl:ensure-generic-function 'LED_2_state-val :lambda-list '(m))
(cl:defmethod LED_2_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_2_state-val is deprecated.  Use twinny_msgs-msg:LED_2_state instead.")
  (LED_2_state m))

(cl:ensure-generic-function 'LED_3_state-val :lambda-list '(m))
(cl:defmethod LED_3_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_3_state-val is deprecated.  Use twinny_msgs-msg:LED_3_state instead.")
  (LED_3_state m))

(cl:ensure-generic-function 'LED_4_state-val :lambda-list '(m))
(cl:defmethod LED_4_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_4_state-val is deprecated.  Use twinny_msgs-msg:LED_4_state instead.")
  (LED_4_state m))

(cl:ensure-generic-function 'LED_5_state-val :lambda-list '(m))
(cl:defmethod LED_5_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_5_state-val is deprecated.  Use twinny_msgs-msg:LED_5_state instead.")
  (LED_5_state m))

(cl:ensure-generic-function 'SUB_LED_0_state-val :lambda-list '(m))
(cl:defmethod SUB_LED_0_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SUB_LED_0_state-val is deprecated.  Use twinny_msgs-msg:SUB_LED_0_state instead.")
  (SUB_LED_0_state m))

(cl:ensure-generic-function 'SUB_LED_1_state-val :lambda-list '(m))
(cl:defmethod SUB_LED_1_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SUB_LED_1_state-val is deprecated.  Use twinny_msgs-msg:SUB_LED_1_state instead.")
  (SUB_LED_1_state m))

(cl:ensure-generic-function 'SUB_LED_2_state-val :lambda-list '(m))
(cl:defmethod SUB_LED_2_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SUB_LED_2_state-val is deprecated.  Use twinny_msgs-msg:SUB_LED_2_state instead.")
  (SUB_LED_2_state m))

(cl:ensure-generic-function 'SUB_LED_3_state-val :lambda-list '(m))
(cl:defmethod SUB_LED_3_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SUB_LED_3_state-val is deprecated.  Use twinny_msgs-msg:SUB_LED_3_state instead.")
  (SUB_LED_3_state m))

(cl:ensure-generic-function 'SUB_LED_4_state-val :lambda-list '(m))
(cl:defmethod SUB_LED_4_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SUB_LED_4_state-val is deprecated.  Use twinny_msgs-msg:SUB_LED_4_state instead.")
  (SUB_LED_4_state m))

(cl:ensure-generic-function 'SUB_LED_5_state-val :lambda-list '(m))
(cl:defmethod SUB_LED_5_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:SUB_LED_5_state-val is deprecated.  Use twinny_msgs-msg:SUB_LED_5_state instead.")
  (SUB_LED_5_state m))

(cl:ensure-generic-function 'LED_bar_color-val :lambda-list '(m))
(cl:defmethod LED_bar_color-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_bar_color-val is deprecated.  Use twinny_msgs-msg:LED_bar_color instead.")
  (LED_bar_color m))

(cl:ensure-generic-function 'LED_bar_state-val :lambda-list '(m))
(cl:defmethod LED_bar_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_bar_state-val is deprecated.  Use twinny_msgs-msg:LED_bar_state instead.")
  (LED_bar_state m))

(cl:ensure-generic-function 'LED_bar2_color-val :lambda-list '(m))
(cl:defmethod LED_bar2_color-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_bar2_color-val is deprecated.  Use twinny_msgs-msg:LED_bar2_color instead.")
  (LED_bar2_color m))

(cl:ensure-generic-function 'LED_bar2_state-val :lambda-list '(m))
(cl:defmethod LED_bar2_state-val ((m <LEDStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LED_bar2_state-val is deprecated.  Use twinny_msgs-msg:LED_bar2_state instead.")
  (LED_bar2_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LEDStateReport>)))
    "Constants for message type '<LEDStateReport>"
  '((:STATE_OFF . 0)
    (:STATE_ON . 1)
    (:STATE_BLINK . 2)
    (:STATE_ERROR . 3)
    (:LED_BAR_OFF . 0)
    (:LED_BAR_RED . 1)
    (:LED_BAR_GREEN . 2)
    (:LED_BAR_YELLOW . 3)
    (:LED_BAR_BLUE . 4)
    (:LED_BAR_MAGENTA . 5)
    (:LED_BAR_CYAN . 6)
    (:LED_BAR_WHITE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LEDStateReport)))
    "Constants for message type 'LEDStateReport"
  '((:STATE_OFF . 0)
    (:STATE_ON . 1)
    (:STATE_BLINK . 2)
    (:STATE_ERROR . 3)
    (:LED_BAR_OFF . 0)
    (:LED_BAR_RED . 1)
    (:LED_BAR_GREEN . 2)
    (:LED_BAR_YELLOW . 3)
    (:LED_BAR_BLUE . 4)
    (:LED_BAR_MAGENTA . 5)
    (:LED_BAR_CYAN . 6)
    (:LED_BAR_WHITE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LEDStateReport>) ostream)
  "Serializes a message object of type '<LEDStateReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_0_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_1_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_2_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_3_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_4_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_5_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_0_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_1_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_2_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_3_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_4_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_5_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar_color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar2_color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar2_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LEDStateReport>) istream)
  "Deserializes a message object of type '<LEDStateReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_0_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_1_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_2_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_3_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_4_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_5_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_0_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_1_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_2_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_3_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_4_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SUB_LED_5_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar_color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar2_color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LED_bar2_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LEDStateReport>)))
  "Returns string type for a message object of type '<LEDStateReport>"
  "twinny_msgs/LEDStateReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LEDStateReport)))
  "Returns string type for a message object of type 'LEDStateReport"
  "twinny_msgs/LEDStateReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LEDStateReport>)))
  "Returns md5sum for a message object of type '<LEDStateReport>"
  "fc4c0739dd32f45e85707b08066723b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LEDStateReport)))
  "Returns md5sum for a message object of type 'LEDStateReport"
  "fc4c0739dd32f45e85707b08066723b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LEDStateReport>)))
  "Returns full string definition for message of type '<LEDStateReport>"
  (cl:format cl:nil "Header header~%string type~%~%uint8 STATE_OFF=0~%uint8 STATE_ON=1~%uint8 STATE_BLINK=2~%uint8 STATE_ERROR=3~%~%uint8 LED_0_state~%uint8 LED_1_state~%uint8 LED_2_state~%uint8 LED_3_state~%uint8 LED_4_state~%uint8 LED_5_state~%~%uint8 SUB_LED_0_state~%uint8 SUB_LED_1_state~%uint8 SUB_LED_2_state~%uint8 SUB_LED_3_state~%uint8 SUB_LED_4_state~%uint8 SUB_LED_5_state~%~%uint8 LED_bar_color~%uint8 LED_bar_state~%~%uint8 LED_bar2_color~%uint8 LED_bar2_state~%~%uint8 LED_BAR_OFF = 0~%uint8 LED_BAR_RED = 1~%uint8 LED_BAR_GREEN = 2~%uint8 LED_BAR_YELLOW = 3~%uint8 LED_BAR_BLUE = 4~%uint8 LED_BAR_MAGENTA = 5~%uint8 LED_BAR_CYAN = 6~%uint8 LED_BAR_WHITE = 7~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LEDStateReport)))
  "Returns full string definition for message of type 'LEDStateReport"
  (cl:format cl:nil "Header header~%string type~%~%uint8 STATE_OFF=0~%uint8 STATE_ON=1~%uint8 STATE_BLINK=2~%uint8 STATE_ERROR=3~%~%uint8 LED_0_state~%uint8 LED_1_state~%uint8 LED_2_state~%uint8 LED_3_state~%uint8 LED_4_state~%uint8 LED_5_state~%~%uint8 SUB_LED_0_state~%uint8 SUB_LED_1_state~%uint8 SUB_LED_2_state~%uint8 SUB_LED_3_state~%uint8 SUB_LED_4_state~%uint8 SUB_LED_5_state~%~%uint8 LED_bar_color~%uint8 LED_bar_state~%~%uint8 LED_bar2_color~%uint8 LED_bar2_state~%~%uint8 LED_BAR_OFF = 0~%uint8 LED_BAR_RED = 1~%uint8 LED_BAR_GREEN = 2~%uint8 LED_BAR_YELLOW = 3~%uint8 LED_BAR_BLUE = 4~%uint8 LED_BAR_MAGENTA = 5~%uint8 LED_BAR_CYAN = 6~%uint8 LED_BAR_WHITE = 7~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LEDStateReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LEDStateReport>))
  "Converts a ROS message object to a list"
  (cl:list 'LEDStateReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':LED_0_state (LED_0_state msg))
    (cl:cons ':LED_1_state (LED_1_state msg))
    (cl:cons ':LED_2_state (LED_2_state msg))
    (cl:cons ':LED_3_state (LED_3_state msg))
    (cl:cons ':LED_4_state (LED_4_state msg))
    (cl:cons ':LED_5_state (LED_5_state msg))
    (cl:cons ':SUB_LED_0_state (SUB_LED_0_state msg))
    (cl:cons ':SUB_LED_1_state (SUB_LED_1_state msg))
    (cl:cons ':SUB_LED_2_state (SUB_LED_2_state msg))
    (cl:cons ':SUB_LED_3_state (SUB_LED_3_state msg))
    (cl:cons ':SUB_LED_4_state (SUB_LED_4_state msg))
    (cl:cons ':SUB_LED_5_state (SUB_LED_5_state msg))
    (cl:cons ':LED_bar_color (LED_bar_color msg))
    (cl:cons ':LED_bar_state (LED_bar_state msg))
    (cl:cons ':LED_bar2_color (LED_bar2_color msg))
    (cl:cons ':LED_bar2_state (LED_bar2_state msg))
))
