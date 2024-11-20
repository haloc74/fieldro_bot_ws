; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PowerSavingMode.msg.html

(cl:defclass <PowerSavingMode> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Power_saving_mode_command
    :reader Power_saving_mode_command
    :initarg :Power_saving_mode_command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerSavingMode (<PowerSavingMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerSavingMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerSavingMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PowerSavingMode> is deprecated: use twinny_msgs-msg:PowerSavingMode instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PowerSavingMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Power_saving_mode_command-val :lambda-list '(m))
(cl:defmethod Power_saving_mode_command-val ((m <PowerSavingMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Power_saving_mode_command-val is deprecated.  Use twinny_msgs-msg:Power_saving_mode_command instead.")
  (Power_saving_mode_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PowerSavingMode>)))
    "Constants for message type '<PowerSavingMode>"
  '((:POWER_SAVING_OFF . 0)
    (:POWER_SAVING_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PowerSavingMode)))
    "Constants for message type 'PowerSavingMode"
  '((:POWER_SAVING_OFF . 0)
    (:POWER_SAVING_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerSavingMode>) ostream)
  "Serializes a message object of type '<PowerSavingMode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_saving_mode_command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerSavingMode>) istream)
  "Deserializes a message object of type '<PowerSavingMode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Power_saving_mode_command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerSavingMode>)))
  "Returns string type for a message object of type '<PowerSavingMode>"
  "twinny_msgs/PowerSavingMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerSavingMode)))
  "Returns string type for a message object of type 'PowerSavingMode"
  "twinny_msgs/PowerSavingMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerSavingMode>)))
  "Returns md5sum for a message object of type '<PowerSavingMode>"
  "f0af11356e58cb52bb82c9160d6eec4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerSavingMode)))
  "Returns md5sum for a message object of type 'PowerSavingMode"
  "f0af11356e58cb52bb82c9160d6eec4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerSavingMode>)))
  "Returns full string definition for message of type '<PowerSavingMode>"
  (cl:format cl:nil "Header header~%~%uint8 POWER_SAVING_OFF = 0~%uint8 POWER_SAVING_ON = 1~%uint8 Power_saving_mode_command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerSavingMode)))
  "Returns full string definition for message of type 'PowerSavingMode"
  (cl:format cl:nil "Header header~%~%uint8 POWER_SAVING_OFF = 0~%uint8 POWER_SAVING_ON = 1~%uint8 Power_saving_mode_command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerSavingMode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerSavingMode>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerSavingMode
    (cl:cons ':header (header msg))
    (cl:cons ':Power_saving_mode_command (Power_saving_mode_command msg))
))
