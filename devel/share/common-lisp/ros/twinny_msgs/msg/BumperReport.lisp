; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude BumperReport.msg.html

(cl:defclass <BumperReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bumper_flag
    :reader bumper_flag
    :initarg :bumper_flag
    :type cl:boolean
    :initform cl:nil)
   (left_bumper
    :reader left_bumper
    :initarg :left_bumper
    :type cl:boolean
    :initform cl:nil)
   (mid_bumper
    :reader mid_bumper
    :initarg :mid_bumper
    :type cl:boolean
    :initform cl:nil)
   (right_bumper
    :reader right_bumper
    :initarg :right_bumper
    :type cl:boolean
    :initform cl:nil)
   (back_bumper
    :reader back_bumper
    :initarg :back_bumper
    :type cl:boolean
    :initform cl:nil)
   (sub1_bumper
    :reader sub1_bumper
    :initarg :sub1_bumper
    :type cl:boolean
    :initform cl:nil)
   (sub2_bumper
    :reader sub2_bumper
    :initarg :sub2_bumper
    :type cl:boolean
    :initform cl:nil)
   (sub3_bumper
    :reader sub3_bumper
    :initarg :sub3_bumper
    :type cl:boolean
    :initform cl:nil)
   (sub4_bumper
    :reader sub4_bumper
    :initarg :sub4_bumper
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BumperReport (<BumperReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<BumperReport> is deprecated: use twinny_msgs-msg:BumperReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bumper_flag-val :lambda-list '(m))
(cl:defmethod bumper_flag-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:bumper_flag-val is deprecated.  Use twinny_msgs-msg:bumper_flag instead.")
  (bumper_flag m))

(cl:ensure-generic-function 'left_bumper-val :lambda-list '(m))
(cl:defmethod left_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:left_bumper-val is deprecated.  Use twinny_msgs-msg:left_bumper instead.")
  (left_bumper m))

(cl:ensure-generic-function 'mid_bumper-val :lambda-list '(m))
(cl:defmethod mid_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mid_bumper-val is deprecated.  Use twinny_msgs-msg:mid_bumper instead.")
  (mid_bumper m))

(cl:ensure-generic-function 'right_bumper-val :lambda-list '(m))
(cl:defmethod right_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:right_bumper-val is deprecated.  Use twinny_msgs-msg:right_bumper instead.")
  (right_bumper m))

(cl:ensure-generic-function 'back_bumper-val :lambda-list '(m))
(cl:defmethod back_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:back_bumper-val is deprecated.  Use twinny_msgs-msg:back_bumper instead.")
  (back_bumper m))

(cl:ensure-generic-function 'sub1_bumper-val :lambda-list '(m))
(cl:defmethod sub1_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sub1_bumper-val is deprecated.  Use twinny_msgs-msg:sub1_bumper instead.")
  (sub1_bumper m))

(cl:ensure-generic-function 'sub2_bumper-val :lambda-list '(m))
(cl:defmethod sub2_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sub2_bumper-val is deprecated.  Use twinny_msgs-msg:sub2_bumper instead.")
  (sub2_bumper m))

(cl:ensure-generic-function 'sub3_bumper-val :lambda-list '(m))
(cl:defmethod sub3_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sub3_bumper-val is deprecated.  Use twinny_msgs-msg:sub3_bumper instead.")
  (sub3_bumper m))

(cl:ensure-generic-function 'sub4_bumper-val :lambda-list '(m))
(cl:defmethod sub4_bumper-val ((m <BumperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:sub4_bumper-val is deprecated.  Use twinny_msgs-msg:sub4_bumper instead.")
  (sub4_bumper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperReport>) ostream)
  "Serializes a message object of type '<BumperReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bumper_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mid_bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'back_bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sub1_bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sub2_bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sub3_bumper) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sub4_bumper) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperReport>) istream)
  "Deserializes a message object of type '<BumperReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'bumper_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mid_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'back_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sub1_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sub2_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sub3_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sub4_bumper) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperReport>)))
  "Returns string type for a message object of type '<BumperReport>"
  "twinny_msgs/BumperReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperReport)))
  "Returns string type for a message object of type 'BumperReport"
  "twinny_msgs/BumperReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperReport>)))
  "Returns md5sum for a message object of type '<BumperReport>"
  "2405e56ac30b979aef601f898841758f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperReport)))
  "Returns md5sum for a message object of type 'BumperReport"
  "2405e56ac30b979aef601f898841758f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperReport>)))
  "Returns full string definition for message of type '<BumperReport>"
  (cl:format cl:nil "Header header~%~%bool bumper_flag~%bool left_bumper~%bool mid_bumper~%bool right_bumper~%bool back_bumper~%~%bool sub1_bumper~%bool sub2_bumper~%bool sub3_bumper~%bool sub4_bumper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperReport)))
  "Returns full string definition for message of type 'BumperReport"
  (cl:format cl:nil "Header header~%~%bool bumper_flag~%bool left_bumper~%bool mid_bumper~%bool right_bumper~%bool back_bumper~%~%bool sub1_bumper~%bool sub2_bumper~%bool sub3_bumper~%bool sub4_bumper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperReport>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperReport>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperReport
    (cl:cons ':header (header msg))
    (cl:cons ':bumper_flag (bumper_flag msg))
    (cl:cons ':left_bumper (left_bumper msg))
    (cl:cons ':mid_bumper (mid_bumper msg))
    (cl:cons ':right_bumper (right_bumper msg))
    (cl:cons ':back_bumper (back_bumper msg))
    (cl:cons ':sub1_bumper (sub1_bumper msg))
    (cl:cons ':sub2_bumper (sub2_bumper msg))
    (cl:cons ':sub3_bumper (sub3_bumper msg))
    (cl:cons ':sub4_bumper (sub4_bumper msg))
))
