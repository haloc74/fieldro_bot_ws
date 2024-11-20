; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PalletMoveReport.msg.html

(cl:defclass <PalletMoveReport> (roslisp-msg-protocol:ros-message)
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
   (lift_id
    :reader lift_id
    :initarg :lift_id
    :type cl:integer
    :initform 0)
   (lift_state
    :reader lift_state
    :initarg :lift_state
    :type cl:integer
    :initform 0)
   (fork_left_state
    :reader fork_left_state
    :initarg :fork_left_state
    :type cl:boolean
    :initform cl:nil)
   (fork_right_state
    :reader fork_right_state
    :initarg :fork_right_state
    :type cl:boolean
    :initform cl:nil)
   (is_loaded
    :reader is_loaded
    :initarg :is_loaded
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass PalletMoveReport (<PalletMoveReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PalletMoveReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PalletMoveReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PalletMoveReport> is deprecated: use twinny_msgs-msg:PalletMoveReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'lift_id-val :lambda-list '(m))
(cl:defmethod lift_id-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lift_id-val is deprecated.  Use twinny_msgs-msg:lift_id instead.")
  (lift_id m))

(cl:ensure-generic-function 'lift_state-val :lambda-list '(m))
(cl:defmethod lift_state-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:lift_state-val is deprecated.  Use twinny_msgs-msg:lift_state instead.")
  (lift_state m))

(cl:ensure-generic-function 'fork_left_state-val :lambda-list '(m))
(cl:defmethod fork_left_state-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fork_left_state-val is deprecated.  Use twinny_msgs-msg:fork_left_state instead.")
  (fork_left_state m))

(cl:ensure-generic-function 'fork_right_state-val :lambda-list '(m))
(cl:defmethod fork_right_state-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:fork_right_state-val is deprecated.  Use twinny_msgs-msg:fork_right_state instead.")
  (fork_right_state m))

(cl:ensure-generic-function 'is_loaded-val :lambda-list '(m))
(cl:defmethod is_loaded-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_loaded-val is deprecated.  Use twinny_msgs-msg:is_loaded instead.")
  (is_loaded m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <PalletMoveReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:error_code-val is deprecated.  Use twinny_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PalletMoveReport>) ostream)
  "Serializes a message object of type '<PalletMoveReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lift_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lift_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lift_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lift_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lift_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fork_left_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fork_right_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_loaded) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'error_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PalletMoveReport>) istream)
  "Deserializes a message object of type '<PalletMoveReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lift_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lift_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lift_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lift_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lift_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'fork_left_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fork_right_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_loaded) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_code) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_code)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PalletMoveReport>)))
  "Returns string type for a message object of type '<PalletMoveReport>"
  "twinny_msgs/PalletMoveReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PalletMoveReport)))
  "Returns string type for a message object of type 'PalletMoveReport"
  "twinny_msgs/PalletMoveReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PalletMoveReport>)))
  "Returns md5sum for a message object of type '<PalletMoveReport>"
  "7a9fb6eb718a9c5a979b0cd80bea2835")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PalletMoveReport)))
  "Returns md5sum for a message object of type 'PalletMoveReport"
  "7a9fb6eb718a9c5a979b0cd80bea2835")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PalletMoveReport>)))
  "Returns full string definition for message of type '<PalletMoveReport>"
  (cl:format cl:nil "Header header~%string type~%~%uint32 lift_id~%int32 lift_state~%bool fork_left_state~%bool fork_right_state~%bool is_loaded~%int32[] error_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PalletMoveReport)))
  "Returns full string definition for message of type 'PalletMoveReport"
  (cl:format cl:nil "Header header~%string type~%~%uint32 lift_id~%int32 lift_state~%bool fork_left_state~%bool fork_right_state~%bool is_loaded~%int32[] error_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PalletMoveReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     4
     4
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_code) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PalletMoveReport>))
  "Converts a ROS message object to a list"
  (cl:list 'PalletMoveReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':lift_id (lift_id msg))
    (cl:cons ':lift_state (lift_state msg))
    (cl:cons ':fork_left_state (fork_left_state msg))
    (cl:cons ':fork_right_state (fork_right_state msg))
    (cl:cons ':is_loaded (is_loaded msg))
    (cl:cons ':error_code (error_code msg))
))
