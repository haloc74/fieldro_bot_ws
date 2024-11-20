; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude CargoBoxControl.msg.html

(cl:defclass <CargoBoxControl> (roslisp-msg-protocol:ros-message)
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
   (cargobox_id
    :reader cargobox_id
    :initarg :cargobox_id
    :type cl:integer
    :initform 0)
   (cargobox_command
    :reader cargobox_command
    :initarg :cargobox_command
    :type cl:integer
    :initform 0))
)

(cl:defclass CargoBoxControl (<CargoBoxControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CargoBoxControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CargoBoxControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<CargoBoxControl> is deprecated: use twinny_msgs-msg:CargoBoxControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CargoBoxControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CargoBoxControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'cargobox_id-val :lambda-list '(m))
(cl:defmethod cargobox_id-val ((m <CargoBoxControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cargobox_id-val is deprecated.  Use twinny_msgs-msg:cargobox_id instead.")
  (cargobox_id m))

(cl:ensure-generic-function 'cargobox_command-val :lambda-list '(m))
(cl:defmethod cargobox_command-val ((m <CargoBoxControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:cargobox_command-val is deprecated.  Use twinny_msgs-msg:cargobox_command instead.")
  (cargobox_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CargoBoxControl>)))
    "Constants for message type '<CargoBoxControl>"
  '((:CARGOBOX_CMD_INIT . 0)
    (:CARGOBOX_CMD_LOCK . 1)
    (:CARGOBOX_CMD_UNLOCK . 2)
    (:CARGOBOX_CMD_LAMP_ON . 3)
    (:CARGOBOX_CMD_LAMP_OFF . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CargoBoxControl)))
    "Constants for message type 'CargoBoxControl"
  '((:CARGOBOX_CMD_INIT . 0)
    (:CARGOBOX_CMD_LOCK . 1)
    (:CARGOBOX_CMD_UNLOCK . 2)
    (:CARGOBOX_CMD_LAMP_ON . 3)
    (:CARGOBOX_CMD_LAMP_OFF . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CargoBoxControl>) ostream)
  "Serializes a message object of type '<CargoBoxControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cargobox_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cargobox_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cargobox_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cargobox_command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CargoBoxControl>) istream)
  "Deserializes a message object of type '<CargoBoxControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cargobox_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cargobox_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cargobox_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cargobox_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cargobox_command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CargoBoxControl>)))
  "Returns string type for a message object of type '<CargoBoxControl>"
  "twinny_msgs/CargoBoxControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CargoBoxControl)))
  "Returns string type for a message object of type 'CargoBoxControl"
  "twinny_msgs/CargoBoxControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CargoBoxControl>)))
  "Returns md5sum for a message object of type '<CargoBoxControl>"
  "c439b05678863e7514e389ae7882b3f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CargoBoxControl)))
  "Returns md5sum for a message object of type 'CargoBoxControl"
  "c439b05678863e7514e389ae7882b3f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CargoBoxControl>)))
  "Returns full string definition for message of type '<CargoBoxControl>"
  (cl:format cl:nil "Header header~%string type~%~%uint32 cargobox_id~%~%int32 CARGOBOX_CMD_INIT=0~%int32 CARGOBOX_CMD_LOCK=1~%int32 CARGOBOX_CMD_UNLOCK=2~%int32 CARGOBOX_CMD_LAMP_ON=3~%int32 CARGOBOX_CMD_LAMP_OFF=4~%~%int32 cargobox_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CargoBoxControl)))
  "Returns full string definition for message of type 'CargoBoxControl"
  (cl:format cl:nil "Header header~%string type~%~%uint32 cargobox_id~%~%int32 CARGOBOX_CMD_INIT=0~%int32 CARGOBOX_CMD_LOCK=1~%int32 CARGOBOX_CMD_UNLOCK=2~%int32 CARGOBOX_CMD_LAMP_ON=3~%int32 CARGOBOX_CMD_LAMP_OFF=4~%~%int32 cargobox_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CargoBoxControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CargoBoxControl>))
  "Converts a ROS message object to a list"
  (cl:list 'CargoBoxControl
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':cargobox_id (cargobox_id msg))
    (cl:cons ':cargobox_command (cargobox_command msg))
))
