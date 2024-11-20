; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude HardwareReportErrorCode.msg.html

(cl:defclass <HardwareReportErrorCode> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (error_code
    :reader error_code
    :initarg :error_code
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass HardwareReportErrorCode (<HardwareReportErrorCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareReportErrorCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareReportErrorCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<HardwareReportErrorCode> is deprecated: use twinny_msgs-msg:HardwareReportErrorCode instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HardwareReportErrorCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <HardwareReportErrorCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:error_code-val is deprecated.  Use twinny_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareReportErrorCode>) ostream)
  "Serializes a message object of type '<HardwareReportErrorCode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'error_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareReportErrorCode>) istream)
  "Deserializes a message object of type '<HardwareReportErrorCode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_code) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_code)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareReportErrorCode>)))
  "Returns string type for a message object of type '<HardwareReportErrorCode>"
  "twinny_msgs/HardwareReportErrorCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareReportErrorCode)))
  "Returns string type for a message object of type 'HardwareReportErrorCode"
  "twinny_msgs/HardwareReportErrorCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareReportErrorCode>)))
  "Returns md5sum for a message object of type '<HardwareReportErrorCode>"
  "9e3246a15446c45a8dc94de6053284c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareReportErrorCode)))
  "Returns md5sum for a message object of type 'HardwareReportErrorCode"
  "9e3246a15446c45a8dc94de6053284c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareReportErrorCode>)))
  "Returns full string definition for message of type '<HardwareReportErrorCode>"
  (cl:format cl:nil "Header header~%~%string[] error_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareReportErrorCode)))
  "Returns full string definition for message of type 'HardwareReportErrorCode"
  (cl:format cl:nil "Header header~%~%string[] error_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareReportErrorCode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_code) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareReportErrorCode>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareReportErrorCode
    (cl:cons ':header (header msg))
    (cl:cons ':error_code (error_code msg))
))
