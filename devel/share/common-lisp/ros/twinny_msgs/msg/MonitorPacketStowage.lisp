; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorPacketStowage.msg.html

(cl:defclass <MonitorPacketStowage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (can1_rx
    :reader can1_rx
    :initarg :can1_rx
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (can1_tx
    :reader can1_tx
    :initarg :can1_tx
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (mcu_rx_adc
    :reader mcu_rx_adc
    :initarg :mcu_rx_adc
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (mcu_tx_adc
    :reader mcu_tx_adc
    :initarg :mcu_tx_adc
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MonitorPacketStowage (<MonitorPacketStowage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorPacketStowage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorPacketStowage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorPacketStowage> is deprecated: use twinny_msgs-msg:MonitorPacketStowage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorPacketStowage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MonitorPacketStowage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:id-val is deprecated.  Use twinny_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'can1_rx-val :lambda-list '(m))
(cl:defmethod can1_rx-val ((m <MonitorPacketStowage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:can1_rx-val is deprecated.  Use twinny_msgs-msg:can1_rx instead.")
  (can1_rx m))

(cl:ensure-generic-function 'can1_tx-val :lambda-list '(m))
(cl:defmethod can1_tx-val ((m <MonitorPacketStowage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:can1_tx-val is deprecated.  Use twinny_msgs-msg:can1_tx instead.")
  (can1_tx m))

(cl:ensure-generic-function 'mcu_rx_adc-val :lambda-list '(m))
(cl:defmethod mcu_rx_adc-val ((m <MonitorPacketStowage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mcu_rx_adc-val is deprecated.  Use twinny_msgs-msg:mcu_rx_adc instead.")
  (mcu_rx_adc m))

(cl:ensure-generic-function 'mcu_tx_adc-val :lambda-list '(m))
(cl:defmethod mcu_tx_adc-val ((m <MonitorPacketStowage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mcu_tx_adc-val is deprecated.  Use twinny_msgs-msg:mcu_tx_adc instead.")
  (mcu_tx_adc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorPacketStowage>) ostream)
  "Serializes a message object of type '<MonitorPacketStowage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'can1_rx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'can1_rx))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'can1_tx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'can1_tx))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mcu_rx_adc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'mcu_rx_adc))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mcu_tx_adc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'mcu_tx_adc))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorPacketStowage>) istream)
  "Deserializes a message object of type '<MonitorPacketStowage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'can1_rx) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'can1_rx)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'can1_tx) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'can1_tx)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mcu_rx_adc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mcu_rx_adc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mcu_tx_adc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mcu_tx_adc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorPacketStowage>)))
  "Returns string type for a message object of type '<MonitorPacketStowage>"
  "twinny_msgs/MonitorPacketStowage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorPacketStowage)))
  "Returns string type for a message object of type 'MonitorPacketStowage"
  "twinny_msgs/MonitorPacketStowage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorPacketStowage>)))
  "Returns md5sum for a message object of type '<MonitorPacketStowage>"
  "4a7045a31936c524fdd5bbd3fb3ce238")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorPacketStowage)))
  "Returns md5sum for a message object of type 'MonitorPacketStowage"
  "4a7045a31936c524fdd5bbd3fb3ce238")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorPacketStowage>)))
  "Returns full string definition for message of type '<MonitorPacketStowage>"
  (cl:format cl:nil "Header header  ~%~%uint8[] id                            ~%~%uint8[] can1_rx                       ~%uint8[] can1_tx                       ~%~%uint8[] mcu_rx_adc                  ~%uint8[] mcu_tx_adc                  ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorPacketStowage)))
  "Returns full string definition for message of type 'MonitorPacketStowage"
  (cl:format cl:nil "Header header  ~%~%uint8[] id                            ~%~%uint8[] can1_rx                       ~%uint8[] can1_tx                       ~%~%uint8[] mcu_rx_adc                  ~%uint8[] mcu_tx_adc                  ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorPacketStowage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'can1_rx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'can1_tx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mcu_rx_adc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mcu_tx_adc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorPacketStowage>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorPacketStowage
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':can1_rx (can1_rx msg))
    (cl:cons ':can1_tx (can1_tx msg))
    (cl:cons ':mcu_rx_adc (mcu_rx_adc msg))
    (cl:cons ':mcu_tx_adc (mcu_tx_adc msg))
))
