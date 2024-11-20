; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude TorqueOffModeReport.msg.html

(cl:defclass <TorqueOffModeReport> (roslisp-msg-protocol:ros-message)
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
   (torque_off_mode
    :reader torque_off_mode
    :initarg :torque_off_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TorqueOffModeReport (<TorqueOffModeReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueOffModeReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueOffModeReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<TorqueOffModeReport> is deprecated: use twinny_msgs-msg:TorqueOffModeReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TorqueOffModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TorqueOffModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'torque_off_mode-val :lambda-list '(m))
(cl:defmethod torque_off_mode-val ((m <TorqueOffModeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:torque_off_mode-val is deprecated.  Use twinny_msgs-msg:torque_off_mode instead.")
  (torque_off_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueOffModeReport>) ostream)
  "Serializes a message object of type '<TorqueOffModeReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'torque_off_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueOffModeReport>) istream)
  "Deserializes a message object of type '<TorqueOffModeReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'torque_off_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueOffModeReport>)))
  "Returns string type for a message object of type '<TorqueOffModeReport>"
  "twinny_msgs/TorqueOffModeReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueOffModeReport)))
  "Returns string type for a message object of type 'TorqueOffModeReport"
  "twinny_msgs/TorqueOffModeReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueOffModeReport>)))
  "Returns md5sum for a message object of type '<TorqueOffModeReport>"
  "a12cbb721753edc02866f655483573a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueOffModeReport)))
  "Returns md5sum for a message object of type 'TorqueOffModeReport"
  "a12cbb721753edc02866f655483573a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueOffModeReport>)))
  "Returns full string definition for message of type '<TorqueOffModeReport>"
  (cl:format cl:nil "Header header~%string type~%~%bool torque_off_mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueOffModeReport)))
  "Returns full string definition for message of type 'TorqueOffModeReport"
  (cl:format cl:nil "Header header~%string type~%~%bool torque_off_mode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueOffModeReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueOffModeReport>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueOffModeReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':torque_off_mode (torque_off_mode msg))
))
