; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude SafetyBoardReset.msg.html

(cl:defclass <SafetyBoardReset> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SafetyBoardReset (<SafetyBoardReset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyBoardReset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyBoardReset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<SafetyBoardReset> is deprecated: use twinny_msgs-msg:SafetyBoardReset instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyBoardReset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SafetyBoardReset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:command-val is deprecated.  Use twinny_msgs-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyBoardReset>)))
    "Constants for message type '<SafetyBoardReset>"
  '((:RESET_COMMAND_NO . 0)
    (:RESET_COMMAND_MASTER_MCU . 1)
    (:RESET_COMMAND_SLAVE_MCU . 2)
    (:RESET_COMMAND_ALL_MCU . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyBoardReset)))
    "Constants for message type 'SafetyBoardReset"
  '((:RESET_COMMAND_NO . 0)
    (:RESET_COMMAND_MASTER_MCU . 1)
    (:RESET_COMMAND_SLAVE_MCU . 2)
    (:RESET_COMMAND_ALL_MCU . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyBoardReset>) ostream)
  "Serializes a message object of type '<SafetyBoardReset>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyBoardReset>) istream)
  "Deserializes a message object of type '<SafetyBoardReset>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyBoardReset>)))
  "Returns string type for a message object of type '<SafetyBoardReset>"
  "twinny_msgs/SafetyBoardReset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyBoardReset)))
  "Returns string type for a message object of type 'SafetyBoardReset"
  "twinny_msgs/SafetyBoardReset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyBoardReset>)))
  "Returns md5sum for a message object of type '<SafetyBoardReset>"
  "921eefced639d2eca074a0905654b7c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyBoardReset)))
  "Returns md5sum for a message object of type 'SafetyBoardReset"
  "921eefced639d2eca074a0905654b7c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyBoardReset>)))
  "Returns full string definition for message of type '<SafetyBoardReset>"
  (cl:format cl:nil "Header header~%~%uint8 RESET_COMMAND_NO=0~%uint8 RESET_COMMAND_MASTER_MCU=1~%uint8 RESET_COMMAND_SLAVE_MCU=2~%uint8 RESET_COMMAND_ALL_MCU=3~%~%uint8 command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyBoardReset)))
  "Returns full string definition for message of type 'SafetyBoardReset"
  (cl:format cl:nil "Header header~%~%uint8 RESET_COMMAND_NO=0~%uint8 RESET_COMMAND_MASTER_MCU=1~%uint8 RESET_COMMAND_SLAVE_MCU=2~%uint8 RESET_COMMAND_ALL_MCU=3~%~%uint8 command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyBoardReset>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyBoardReset>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyBoardReset
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
))
