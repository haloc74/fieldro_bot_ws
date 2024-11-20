; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude JoystickReport.msg.html

(cl:defclass <JoystickReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ON_flag
    :reader ON_flag
    :initarg :ON_flag
    :type cl:boolean
    :initform cl:nil)
   (up_flag
    :reader up_flag
    :initarg :up_flag
    :type cl:boolean
    :initform cl:nil)
   (up_right_flag
    :reader up_right_flag
    :initarg :up_right_flag
    :type cl:boolean
    :initform cl:nil)
   (right_flag
    :reader right_flag
    :initarg :right_flag
    :type cl:boolean
    :initform cl:nil)
   (down_right_flag
    :reader down_right_flag
    :initarg :down_right_flag
    :type cl:boolean
    :initform cl:nil)
   (down_flag
    :reader down_flag
    :initarg :down_flag
    :type cl:boolean
    :initform cl:nil)
   (down_left_flag
    :reader down_left_flag
    :initarg :down_left_flag
    :type cl:boolean
    :initform cl:nil)
   (left_flag
    :reader left_flag
    :initarg :left_flag
    :type cl:boolean
    :initform cl:nil)
   (up_left_flag
    :reader up_left_flag
    :initarg :up_left_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JoystickReport (<JoystickReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<JoystickReport> is deprecated: use twinny_msgs-msg:JoystickReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ON_flag-val :lambda-list '(m))
(cl:defmethod ON_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ON_flag-val is deprecated.  Use twinny_msgs-msg:ON_flag instead.")
  (ON_flag m))

(cl:ensure-generic-function 'up_flag-val :lambda-list '(m))
(cl:defmethod up_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:up_flag-val is deprecated.  Use twinny_msgs-msg:up_flag instead.")
  (up_flag m))

(cl:ensure-generic-function 'up_right_flag-val :lambda-list '(m))
(cl:defmethod up_right_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:up_right_flag-val is deprecated.  Use twinny_msgs-msg:up_right_flag instead.")
  (up_right_flag m))

(cl:ensure-generic-function 'right_flag-val :lambda-list '(m))
(cl:defmethod right_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_flag-val is deprecated.  Use twinny_msgs-msg:right_flag instead.")
  (right_flag m))

(cl:ensure-generic-function 'down_right_flag-val :lambda-list '(m))
(cl:defmethod down_right_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:down_right_flag-val is deprecated.  Use twinny_msgs-msg:down_right_flag instead.")
  (down_right_flag m))

(cl:ensure-generic-function 'down_flag-val :lambda-list '(m))
(cl:defmethod down_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:down_flag-val is deprecated.  Use twinny_msgs-msg:down_flag instead.")
  (down_flag m))

(cl:ensure-generic-function 'down_left_flag-val :lambda-list '(m))
(cl:defmethod down_left_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:down_left_flag-val is deprecated.  Use twinny_msgs-msg:down_left_flag instead.")
  (down_left_flag m))

(cl:ensure-generic-function 'left_flag-val :lambda-list '(m))
(cl:defmethod left_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_flag-val is deprecated.  Use twinny_msgs-msg:left_flag instead.")
  (left_flag m))

(cl:ensure-generic-function 'up_left_flag-val :lambda-list '(m))
(cl:defmethod up_left_flag-val ((m <JoystickReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:up_left_flag-val is deprecated.  Use twinny_msgs-msg:up_left_flag instead.")
  (up_left_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickReport>) ostream)
  "Serializes a message object of type '<JoystickReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ON_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'up_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'up_right_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'down_right_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'down_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'down_left_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'up_left_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickReport>) istream)
  "Deserializes a message object of type '<JoystickReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'ON_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'up_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'up_right_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'down_right_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'down_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'down_left_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'up_left_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickReport>)))
  "Returns string type for a message object of type '<JoystickReport>"
  "twinny_msgs/JoystickReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickReport)))
  "Returns string type for a message object of type 'JoystickReport"
  "twinny_msgs/JoystickReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickReport>)))
  "Returns md5sum for a message object of type '<JoystickReport>"
  "7f4a780f53de1b487d4c703611a6ecdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickReport)))
  "Returns md5sum for a message object of type 'JoystickReport"
  "7f4a780f53de1b487d4c703611a6ecdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickReport>)))
  "Returns full string definition for message of type '<JoystickReport>"
  (cl:format cl:nil "Header header~%~%bool ON_flag~%~%bool up_flag~%bool up_right_flag~%bool right_flag~%bool down_right_flag~%bool down_flag~%bool down_left_flag~%bool left_flag~%bool up_left_flag~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickReport)))
  "Returns full string definition for message of type 'JoystickReport"
  (cl:format cl:nil "Header header~%~%bool ON_flag~%~%bool up_flag~%bool up_right_flag~%bool right_flag~%bool down_right_flag~%bool down_flag~%bool down_left_flag~%bool left_flag~%bool up_left_flag~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickReport>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickReport
    (cl:cons ':header (header msg))
    (cl:cons ':ON_flag (ON_flag msg))
    (cl:cons ':up_flag (up_flag msg))
    (cl:cons ':up_right_flag (up_right_flag msg))
    (cl:cons ':right_flag (right_flag msg))
    (cl:cons ':down_right_flag (down_right_flag msg))
    (cl:cons ':down_flag (down_flag msg))
    (cl:cons ':down_left_flag (down_left_flag msg))
    (cl:cons ':left_flag (left_flag msg))
    (cl:cons ':up_left_flag (up_left_flag msg))
))
