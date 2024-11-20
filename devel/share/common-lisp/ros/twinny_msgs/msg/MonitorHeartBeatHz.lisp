; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorHeartBeatHz.msg.html

(cl:defclass <MonitorHeartBeatHz> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Motor_DriverA_Hz
    :reader Motor_DriverA_Hz
    :initarg :Motor_DriverA_Hz
    :type cl:fixnum
    :initform 0)
   (Motor_DriverB_Hz
    :reader Motor_DriverB_Hz
    :initarg :Motor_DriverB_Hz
    :type cl:fixnum
    :initform 0)
   (Motor_DriverC_Hz
    :reader Motor_DriverC_Hz
    :initarg :Motor_DriverC_Hz
    :type cl:fixnum
    :initform 0)
   (Motor_DriverD_Hz
    :reader Motor_DriverD_Hz
    :initarg :Motor_DriverD_Hz
    :type cl:fixnum
    :initform 0)
   (Motor_DriverE_Hz
    :reader Motor_DriverE_Hz
    :initarg :Motor_DriverE_Hz
    :type cl:fixnum
    :initform 0)
   (Motor_DriverF_Hz
    :reader Motor_DriverF_Hz
    :initarg :Motor_DriverF_Hz
    :type cl:fixnum
    :initform 0)
   (Motor_DriverG_Hz
    :reader Motor_DriverG_Hz
    :initarg :Motor_DriverG_Hz
    :type cl:fixnum
    :initform 0)
   (Motor_DriverH_Hz
    :reader Motor_DriverH_Hz
    :initarg :Motor_DriverH_Hz
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MonitorHeartBeatHz (<MonitorHeartBeatHz>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorHeartBeatHz>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorHeartBeatHz)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorHeartBeatHz> is deprecated: use twinny_msgs-msg:MonitorHeartBeatHz instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Motor_DriverA_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverA_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverA_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverA_Hz instead.")
  (Motor_DriverA_Hz m))

(cl:ensure-generic-function 'Motor_DriverB_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverB_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverB_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverB_Hz instead.")
  (Motor_DriverB_Hz m))

(cl:ensure-generic-function 'Motor_DriverC_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverC_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverC_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverC_Hz instead.")
  (Motor_DriverC_Hz m))

(cl:ensure-generic-function 'Motor_DriverD_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverD_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverD_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverD_Hz instead.")
  (Motor_DriverD_Hz m))

(cl:ensure-generic-function 'Motor_DriverE_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverE_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverE_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverE_Hz instead.")
  (Motor_DriverE_Hz m))

(cl:ensure-generic-function 'Motor_DriverF_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverF_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverF_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverF_Hz instead.")
  (Motor_DriverF_Hz m))

(cl:ensure-generic-function 'Motor_DriverG_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverG_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverG_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverG_Hz instead.")
  (Motor_DriverG_Hz m))

(cl:ensure-generic-function 'Motor_DriverH_Hz-val :lambda-list '(m))
(cl:defmethod Motor_DriverH_Hz-val ((m <MonitorHeartBeatHz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:Motor_DriverH_Hz-val is deprecated.  Use twinny_msgs-msg:Motor_DriverH_Hz instead.")
  (Motor_DriverH_Hz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorHeartBeatHz>) ostream)
  "Serializes a message object of type '<MonitorHeartBeatHz>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverA_Hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverB_Hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverC_Hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverD_Hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverE_Hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverF_Hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverG_Hz)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverH_Hz)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorHeartBeatHz>) istream)
  "Deserializes a message object of type '<MonitorHeartBeatHz>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverA_Hz)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverB_Hz)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverC_Hz)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverD_Hz)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverE_Hz)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverF_Hz)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverG_Hz)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Motor_DriverH_Hz)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorHeartBeatHz>)))
  "Returns string type for a message object of type '<MonitorHeartBeatHz>"
  "twinny_msgs/MonitorHeartBeatHz")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorHeartBeatHz)))
  "Returns string type for a message object of type 'MonitorHeartBeatHz"
  "twinny_msgs/MonitorHeartBeatHz")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorHeartBeatHz>)))
  "Returns md5sum for a message object of type '<MonitorHeartBeatHz>"
  "6e75bac3d8efef67e052259a96f13d33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorHeartBeatHz)))
  "Returns md5sum for a message object of type 'MonitorHeartBeatHz"
  "6e75bac3d8efef67e052259a96f13d33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorHeartBeatHz>)))
  "Returns full string definition for message of type '<MonitorHeartBeatHz>"
  (cl:format cl:nil "Header header ~%~%uint8 Motor_DriverA_Hz~%uint8 Motor_DriverB_Hz~%uint8 Motor_DriverC_Hz~%uint8 Motor_DriverD_Hz~%uint8 Motor_DriverE_Hz~%uint8 Motor_DriverF_Hz~%uint8 Motor_DriverG_Hz~%uint8 Motor_DriverH_Hz~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorHeartBeatHz)))
  "Returns full string definition for message of type 'MonitorHeartBeatHz"
  (cl:format cl:nil "Header header ~%~%uint8 Motor_DriverA_Hz~%uint8 Motor_DriverB_Hz~%uint8 Motor_DriverC_Hz~%uint8 Motor_DriverD_Hz~%uint8 Motor_DriverE_Hz~%uint8 Motor_DriverF_Hz~%uint8 Motor_DriverG_Hz~%uint8 Motor_DriverH_Hz~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorHeartBeatHz>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorHeartBeatHz>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorHeartBeatHz
    (cl:cons ':header (header msg))
    (cl:cons ':Motor_DriverA_Hz (Motor_DriverA_Hz msg))
    (cl:cons ':Motor_DriverB_Hz (Motor_DriverB_Hz msg))
    (cl:cons ':Motor_DriverC_Hz (Motor_DriverC_Hz msg))
    (cl:cons ':Motor_DriverD_Hz (Motor_DriverD_Hz msg))
    (cl:cons ':Motor_DriverE_Hz (Motor_DriverE_Hz msg))
    (cl:cons ':Motor_DriverF_Hz (Motor_DriverF_Hz msg))
    (cl:cons ':Motor_DriverG_Hz (Motor_DriverG_Hz msg))
    (cl:cons ':Motor_DriverH_Hz (Motor_DriverH_Hz msg))
))
