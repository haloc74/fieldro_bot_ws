; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude CargoBoxLEDCommand.msg.html

(cl:defclass <CargoBoxLEDCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cargobox_id
    :reader cargobox_id
    :initarg :cargobox_id
    :type cl:fixnum
    :initform 0)
   (cargobox_led_id
    :reader cargobox_led_id
    :initarg :cargobox_led_id
    :type cl:fixnum
    :initform 0)
   (cargobox_led_status
    :reader cargobox_led_status
    :initarg :cargobox_led_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CargoBoxLEDCommand (<CargoBoxLEDCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CargoBoxLEDCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CargoBoxLEDCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<CargoBoxLEDCommand> is deprecated: use twinny_msgs-msg:CargoBoxLEDCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CargoBoxLEDCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cargobox_id-val :lambda-list '(m))
(cl:defmethod cargobox_id-val ((m <CargoBoxLEDCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cargobox_id-val is deprecated.  Use twinny_msgs-msg:cargobox_id instead.")
  (cargobox_id m))

(cl:ensure-generic-function 'cargobox_led_id-val :lambda-list '(m))
(cl:defmethod cargobox_led_id-val ((m <CargoBoxLEDCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cargobox_led_id-val is deprecated.  Use twinny_msgs-msg:cargobox_led_id instead.")
  (cargobox_led_id m))

(cl:ensure-generic-function 'cargobox_led_status-val :lambda-list '(m))
(cl:defmethod cargobox_led_status-val ((m <CargoBoxLEDCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cargobox_led_status-val is deprecated.  Use twinny_msgs-msg:cargobox_led_status instead.")
  (cargobox_led_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CargoBoxLEDCommand>)))
    "Constants for message type '<CargoBoxLEDCommand>"
  '((:LED_BAR_OFF . 100)
    (:LED_BAR_RED . 101)
    (:LED_BAR_GREEN . 102)
    (:LED_BAR_YELLOW . 103)
    (:LED_BAR_BLUE . 104)
    (:LED_BAR_MAGENTA . 105)
    (:LED_BAR_CYAN . 106)
    (:LED_BAR_WHITE . 107)
    (:STATE_OFF . 0)
    (:STATE_ON . 1)
    (:STATE_BLINK . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CargoBoxLEDCommand)))
    "Constants for message type 'CargoBoxLEDCommand"
  '((:LED_BAR_OFF . 100)
    (:LED_BAR_RED . 101)
    (:LED_BAR_GREEN . 102)
    (:LED_BAR_YELLOW . 103)
    (:LED_BAR_BLUE . 104)
    (:LED_BAR_MAGENTA . 105)
    (:LED_BAR_CYAN . 106)
    (:LED_BAR_WHITE . 107)
    (:STATE_OFF . 0)
    (:STATE_ON . 1)
    (:STATE_BLINK . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CargoBoxLEDCommand>) ostream)
  "Serializes a message object of type '<CargoBoxLEDCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_led_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_led_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CargoBoxLEDCommand>) istream)
  "Deserializes a message object of type '<CargoBoxLEDCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_led_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_led_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CargoBoxLEDCommand>)))
  "Returns string type for a message object of type '<CargoBoxLEDCommand>"
  "twinny_msgs/CargoBoxLEDCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CargoBoxLEDCommand)))
  "Returns string type for a message object of type 'CargoBoxLEDCommand"
  "twinny_msgs/CargoBoxLEDCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CargoBoxLEDCommand>)))
  "Returns md5sum for a message object of type '<CargoBoxLEDCommand>"
  "63d81b1bd2386d79a57290dc39a16fa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CargoBoxLEDCommand)))
  "Returns md5sum for a message object of type 'CargoBoxLEDCommand"
  "63d81b1bd2386d79a57290dc39a16fa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CargoBoxLEDCommand>)))
  "Returns full string definition for message of type '<CargoBoxLEDCommand>"
  (cl:format cl:nil "Header header ~%~%uint8 cargobox_id~%uint8 cargobox_led_id~%uint8 cargobox_led_status~%~%uint8 LED_BAR_OFF = 100~%uint8 LED_BAR_RED = 101~%uint8 LED_BAR_GREEN = 102~%uint8 LED_BAR_YELLOW = 103~%uint8 LED_BAR_BLUE = 104~%uint8 LED_BAR_MAGENTA = 105~%uint8 LED_BAR_CYAN = 106~%uint8 LED_BAR_WHITE = 107~%~%uint8 STATE_OFF=0~%uint8 STATE_ON=1~%uint8 STATE_BLINK=2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CargoBoxLEDCommand)))
  "Returns full string definition for message of type 'CargoBoxLEDCommand"
  (cl:format cl:nil "Header header ~%~%uint8 cargobox_id~%uint8 cargobox_led_id~%uint8 cargobox_led_status~%~%uint8 LED_BAR_OFF = 100~%uint8 LED_BAR_RED = 101~%uint8 LED_BAR_GREEN = 102~%uint8 LED_BAR_YELLOW = 103~%uint8 LED_BAR_BLUE = 104~%uint8 LED_BAR_MAGENTA = 105~%uint8 LED_BAR_CYAN = 106~%uint8 LED_BAR_WHITE = 107~%~%uint8 STATE_OFF=0~%uint8 STATE_ON=1~%uint8 STATE_BLINK=2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CargoBoxLEDCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CargoBoxLEDCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'CargoBoxLEDCommand
    (cl:cons ':header (header msg))
    (cl:cons ':cargobox_id (cargobox_id msg))
    (cl:cons ':cargobox_led_id (cargobox_led_id msg))
    (cl:cons ':cargobox_led_status (cargobox_led_status msg))
))
