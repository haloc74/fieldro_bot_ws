; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude RefrigeStateReport.msg.html

(cl:defclass <RefrigeStateReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (refrige_sale_flag
    :reader refrige_sale_flag
    :initarg :refrige_sale_flag
    :type cl:boolean
    :initform cl:nil)
   (error_flag
    :reader error_flag
    :initarg :error_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RefrigeStateReport (<RefrigeStateReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefrigeStateReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefrigeStateReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<RefrigeStateReport> is deprecated: use twinny_msgs-msg:RefrigeStateReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RefrigeStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'refrige_sale_flag-val :lambda-list '(m))
(cl:defmethod refrige_sale_flag-val ((m <RefrigeStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:refrige_sale_flag-val is deprecated.  Use twinny_msgs-msg:refrige_sale_flag instead.")
  (refrige_sale_flag m))

(cl:ensure-generic-function 'error_flag-val :lambda-list '(m))
(cl:defmethod error_flag-val ((m <RefrigeStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:error_flag-val is deprecated.  Use twinny_msgs-msg:error_flag instead.")
  (error_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefrigeStateReport>) ostream)
  "Serializes a message object of type '<RefrigeStateReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'refrige_sale_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'error_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefrigeStateReport>) istream)
  "Deserializes a message object of type '<RefrigeStateReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'refrige_sale_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'error_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefrigeStateReport>)))
  "Returns string type for a message object of type '<RefrigeStateReport>"
  "twinny_msgs/RefrigeStateReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefrigeStateReport)))
  "Returns string type for a message object of type 'RefrigeStateReport"
  "twinny_msgs/RefrigeStateReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefrigeStateReport>)))
  "Returns md5sum for a message object of type '<RefrigeStateReport>"
  "6ded1056d57c98937a68f85a05ad5210")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefrigeStateReport)))
  "Returns md5sum for a message object of type 'RefrigeStateReport"
  "6ded1056d57c98937a68f85a05ad5210")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefrigeStateReport>)))
  "Returns full string definition for message of type '<RefrigeStateReport>"
  (cl:format cl:nil "Header header~%bool refrige_sale_flag~%bool error_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefrigeStateReport)))
  "Returns full string definition for message of type 'RefrigeStateReport"
  (cl:format cl:nil "Header header~%bool refrige_sale_flag~%bool error_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefrigeStateReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefrigeStateReport>))
  "Converts a ROS message object to a list"
  (cl:list 'RefrigeStateReport
    (cl:cons ':header (header msg))
    (cl:cons ':refrige_sale_flag (refrige_sale_flag msg))
    (cl:cons ':error_flag (error_flag msg))
))
