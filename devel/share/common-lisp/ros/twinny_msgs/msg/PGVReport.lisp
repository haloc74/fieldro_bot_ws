; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PGVReport.msg.html

(cl:defclass <PGVReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (TagDetected
    :reader TagDetected
    :initarg :TagDetected
    :type cl:boolean
    :initform cl:nil)
   (TagID
    :reader TagID
    :initarg :TagID
    :type cl:integer
    :initform 0)
   (LineDetected
    :reader LineDetected
    :initarg :LineDetected
    :type cl:fixnum
    :initform 0)
   (LineID
    :reader LineID
    :initarg :LineID
    :type cl:integer
    :initform 0)
   (ControlDetected
    :reader ControlDetected
    :initarg :ControlDetected
    :type cl:boolean
    :initform cl:nil)
   (ControlID
    :reader ControlID
    :initarg :ControlID
    :type cl:integer
    :initform 0)
   (Fault
    :reader Fault
    :initarg :Fault
    :type cl:fixnum
    :initform 0)
   (Warning
    :reader Warning
    :initarg :Warning
    :type cl:fixnum
    :initform 0)
   (X
    :reader X
    :initarg :X
    :type cl:float
    :initform 0.0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (test_cmd
    :reader test_cmd
    :initarg :test_cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PGVReport (<PGVReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PGVReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PGVReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PGVReport> is deprecated: use twinny_msgs-msg:PGVReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TagDetected-val :lambda-list '(m))
(cl:defmethod TagDetected-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:TagDetected-val is deprecated.  Use twinny_msgs-msg:TagDetected instead.")
  (TagDetected m))

(cl:ensure-generic-function 'TagID-val :lambda-list '(m))
(cl:defmethod TagID-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:TagID-val is deprecated.  Use twinny_msgs-msg:TagID instead.")
  (TagID m))

(cl:ensure-generic-function 'LineDetected-val :lambda-list '(m))
(cl:defmethod LineDetected-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LineDetected-val is deprecated.  Use twinny_msgs-msg:LineDetected instead.")
  (LineDetected m))

(cl:ensure-generic-function 'LineID-val :lambda-list '(m))
(cl:defmethod LineID-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LineID-val is deprecated.  Use twinny_msgs-msg:LineID instead.")
  (LineID m))

(cl:ensure-generic-function 'ControlDetected-val :lambda-list '(m))
(cl:defmethod ControlDetected-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ControlDetected-val is deprecated.  Use twinny_msgs-msg:ControlDetected instead.")
  (ControlDetected m))

(cl:ensure-generic-function 'ControlID-val :lambda-list '(m))
(cl:defmethod ControlID-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:ControlID-val is deprecated.  Use twinny_msgs-msg:ControlID instead.")
  (ControlID m))

(cl:ensure-generic-function 'Fault-val :lambda-list '(m))
(cl:defmethod Fault-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Fault-val is deprecated.  Use twinny_msgs-msg:Fault instead.")
  (Fault m))

(cl:ensure-generic-function 'Warning-val :lambda-list '(m))
(cl:defmethod Warning-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Warning-val is deprecated.  Use twinny_msgs-msg:Warning instead.")
  (Warning m))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:X-val is deprecated.  Use twinny_msgs-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Y-val is deprecated.  Use twinny_msgs-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:theta-val is deprecated.  Use twinny_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'test_cmd-val :lambda-list '(m))
(cl:defmethod test_cmd-val ((m <PGVReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:test_cmd-val is deprecated.  Use twinny_msgs-msg:test_cmd instead.")
  (test_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PGVReport>) ostream)
  "Serializes a message object of type '<PGVReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TagDetected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TagID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TagID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'TagID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'TagID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LineDetected)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LineID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LineID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LineID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LineID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ControlDetected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ControlID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ControlID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ControlID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ControlID)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Fault)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Warning)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'test_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PGVReport>) istream)
  "Deserializes a message object of type '<PGVReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'TagDetected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TagID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TagID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'TagID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'TagID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LineDetected)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LineID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LineID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LineID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LineID)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ControlDetected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ControlID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ControlID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ControlID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ControlID)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Fault) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Warning) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'test_cmd) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PGVReport>)))
  "Returns string type for a message object of type '<PGVReport>"
  "twinny_msgs/PGVReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PGVReport)))
  "Returns string type for a message object of type 'PGVReport"
  "twinny_msgs/PGVReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PGVReport>)))
  "Returns md5sum for a message object of type '<PGVReport>"
  "34222d408912e06515bf5962c05f1613")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PGVReport)))
  "Returns md5sum for a message object of type 'PGVReport"
  "34222d408912e06515bf5962c05f1613")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PGVReport>)))
  "Returns full string definition for message of type '<PGVReport>"
  (cl:format cl:nil "Header header~%~%bool TagDetected~%uint32 TagID~%~%uint8 LineDetected~%uint32 LineID~%~%bool ControlDetected~%uint32 ControlID~%~%int8 Fault~%int8 Warning~%~%float32 X~%float32 Y~%float32 theta~%~%int8 test_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PGVReport)))
  "Returns full string definition for message of type 'PGVReport"
  (cl:format cl:nil "Header header~%~%bool TagDetected~%uint32 TagID~%~%uint8 LineDetected~%uint32 LineID~%~%bool ControlDetected~%uint32 ControlID~%~%int8 Fault~%int8 Warning~%~%float32 X~%float32 Y~%float32 theta~%~%int8 test_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PGVReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     4
     1
     4
     1
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PGVReport>))
  "Converts a ROS message object to a list"
  (cl:list 'PGVReport
    (cl:cons ':header (header msg))
    (cl:cons ':TagDetected (TagDetected msg))
    (cl:cons ':TagID (TagID msg))
    (cl:cons ':LineDetected (LineDetected msg))
    (cl:cons ':LineID (LineID msg))
    (cl:cons ':ControlDetected (ControlDetected msg))
    (cl:cons ':ControlID (ControlID msg))
    (cl:cons ':Fault (Fault msg))
    (cl:cons ':Warning (Warning msg))
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':test_cmd (test_cmd msg))
))
