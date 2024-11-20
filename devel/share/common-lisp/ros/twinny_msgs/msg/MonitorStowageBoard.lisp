; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorStowageBoard.msg.html

(cl:defclass <MonitorStowageBoard> (roslisp-msg-protocol:ros-message)
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
   (pc_to_mcu_heartbeat_error
    :reader pc_to_mcu_heartbeat_error
    :initarg :pc_to_mcu_heartbeat_error
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (mcu_to_pc_heartbeat_hz
    :reader mcu_to_pc_heartbeat_hz
    :initarg :mcu_to_pc_heartbeat_hz
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (adc_ic_error
    :reader adc_ic_error
    :initarg :adc_ic_error
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (eeprom_error
    :reader eeprom_error
    :initarg :eeprom_error
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass MonitorStowageBoard (<MonitorStowageBoard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorStowageBoard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorStowageBoard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorStowageBoard> is deprecated: use twinny_msgs-msg:MonitorStowageBoard instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorStowageBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MonitorStowageBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:id-val is deprecated.  Use twinny_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pc_to_mcu_heartbeat_error-val :lambda-list '(m))
(cl:defmethod pc_to_mcu_heartbeat_error-val ((m <MonitorStowageBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:pc_to_mcu_heartbeat_error-val is deprecated.  Use twinny_msgs-msg:pc_to_mcu_heartbeat_error instead.")
  (pc_to_mcu_heartbeat_error m))

(cl:ensure-generic-function 'mcu_to_pc_heartbeat_hz-val :lambda-list '(m))
(cl:defmethod mcu_to_pc_heartbeat_hz-val ((m <MonitorStowageBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mcu_to_pc_heartbeat_hz-val is deprecated.  Use twinny_msgs-msg:mcu_to_pc_heartbeat_hz instead.")
  (mcu_to_pc_heartbeat_hz m))

(cl:ensure-generic-function 'adc_ic_error-val :lambda-list '(m))
(cl:defmethod adc_ic_error-val ((m <MonitorStowageBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:adc_ic_error-val is deprecated.  Use twinny_msgs-msg:adc_ic_error instead.")
  (adc_ic_error m))

(cl:ensure-generic-function 'eeprom_error-val :lambda-list '(m))
(cl:defmethod eeprom_error-val ((m <MonitorStowageBoard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:eeprom_error-val is deprecated.  Use twinny_msgs-msg:eeprom_error instead.")
  (eeprom_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorStowageBoard>) ostream)
  "Serializes a message object of type '<MonitorStowageBoard>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pc_to_mcu_heartbeat_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'pc_to_mcu_heartbeat_error))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mcu_to_pc_heartbeat_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'mcu_to_pc_heartbeat_hz))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'adc_ic_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'adc_ic_error))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'eeprom_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'eeprom_error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorStowageBoard>) istream)
  "Deserializes a message object of type '<MonitorStowageBoard>"
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
  (cl:setf (cl:slot-value msg 'pc_to_mcu_heartbeat_error) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pc_to_mcu_heartbeat_error)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mcu_to_pc_heartbeat_hz) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mcu_to_pc_heartbeat_hz)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'adc_ic_error) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'adc_ic_error)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'eeprom_error) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'eeprom_error)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorStowageBoard>)))
  "Returns string type for a message object of type '<MonitorStowageBoard>"
  "twinny_msgs/MonitorStowageBoard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorStowageBoard)))
  "Returns string type for a message object of type 'MonitorStowageBoard"
  "twinny_msgs/MonitorStowageBoard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorStowageBoard>)))
  "Returns md5sum for a message object of type '<MonitorStowageBoard>"
  "6ae2271e02d73334e1713180840e83b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorStowageBoard)))
  "Returns md5sum for a message object of type 'MonitorStowageBoard"
  "6ae2271e02d73334e1713180840e83b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorStowageBoard>)))
  "Returns full string definition for message of type '<MonitorStowageBoard>"
  (cl:format cl:nil "Header header ~%~%uint8[] id~%bool[] pc_to_mcu_heartbeat_error~%uint8[] mcu_to_pc_heartbeat_hz~%bool[] adc_ic_error~%bool[] eeprom_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorStowageBoard)))
  "Returns full string definition for message of type 'MonitorStowageBoard"
  (cl:format cl:nil "Header header ~%~%uint8[] id~%bool[] pc_to_mcu_heartbeat_error~%uint8[] mcu_to_pc_heartbeat_hz~%bool[] adc_ic_error~%bool[] eeprom_error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorStowageBoard>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pc_to_mcu_heartbeat_error) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mcu_to_pc_heartbeat_hz) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'adc_ic_error) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'eeprom_error) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorStowageBoard>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorStowageBoard
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':pc_to_mcu_heartbeat_error (pc_to_mcu_heartbeat_error msg))
    (cl:cons ':mcu_to_pc_heartbeat_hz (mcu_to_pc_heartbeat_hz msg))
    (cl:cons ':adc_ic_error (adc_ic_error msg))
    (cl:cons ':eeprom_error (eeprom_error msg))
))
