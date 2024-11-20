; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude MonitorPacket.msg.html

(cl:defclass <MonitorPacket> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (CAN1_MCU_Rx_Packet
    :reader CAN1_MCU_Rx_Packet
    :initarg :CAN1_MCU_Rx_Packet
    :type cl:fixnum
    :initform 0)
   (CAN1_MCU_Tx_Packet
    :reader CAN1_MCU_Tx_Packet
    :initarg :CAN1_MCU_Tx_Packet
    :type cl:fixnum
    :initform 0)
   (CAN2_MCU_Rx_Packet
    :reader CAN2_MCU_Rx_Packet
    :initarg :CAN2_MCU_Rx_Packet
    :type cl:fixnum
    :initform 0)
   (CAN2_MCU_Tx_Packet
    :reader CAN2_MCU_Tx_Packet
    :initarg :CAN2_MCU_Tx_Packet
    :type cl:fixnum
    :initform 0)
   (LIN1_MCU_Rx
    :reader LIN1_MCU_Rx
    :initarg :LIN1_MCU_Rx
    :type cl:fixnum
    :initform 0)
   (LIN1_MCU_Tx
    :reader LIN1_MCU_Tx
    :initarg :LIN1_MCU_Tx
    :type cl:fixnum
    :initform 0)
   (LIN2_MCU_Rx
    :reader LIN2_MCU_Rx
    :initarg :LIN2_MCU_Rx
    :type cl:fixnum
    :initform 0)
   (LIN2_MCU_Tx
    :reader LIN2_MCU_Tx
    :initarg :LIN2_MCU_Tx
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MonitorPacket (<MonitorPacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorPacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorPacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<MonitorPacket> is deprecated: use twinny_msgs-msg:MonitorPacket instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'CAN1_MCU_Rx_Packet-val :lambda-list '(m))
(cl:defmethod CAN1_MCU_Rx_Packet-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:CAN1_MCU_Rx_Packet-val is deprecated.  Use twinny_msgs-msg:CAN1_MCU_Rx_Packet instead.")
  (CAN1_MCU_Rx_Packet m))

(cl:ensure-generic-function 'CAN1_MCU_Tx_Packet-val :lambda-list '(m))
(cl:defmethod CAN1_MCU_Tx_Packet-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:CAN1_MCU_Tx_Packet-val is deprecated.  Use twinny_msgs-msg:CAN1_MCU_Tx_Packet instead.")
  (CAN1_MCU_Tx_Packet m))

(cl:ensure-generic-function 'CAN2_MCU_Rx_Packet-val :lambda-list '(m))
(cl:defmethod CAN2_MCU_Rx_Packet-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:CAN2_MCU_Rx_Packet-val is deprecated.  Use twinny_msgs-msg:CAN2_MCU_Rx_Packet instead.")
  (CAN2_MCU_Rx_Packet m))

(cl:ensure-generic-function 'CAN2_MCU_Tx_Packet-val :lambda-list '(m))
(cl:defmethod CAN2_MCU_Tx_Packet-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:CAN2_MCU_Tx_Packet-val is deprecated.  Use twinny_msgs-msg:CAN2_MCU_Tx_Packet instead.")
  (CAN2_MCU_Tx_Packet m))

(cl:ensure-generic-function 'LIN1_MCU_Rx-val :lambda-list '(m))
(cl:defmethod LIN1_MCU_Rx-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LIN1_MCU_Rx-val is deprecated.  Use twinny_msgs-msg:LIN1_MCU_Rx instead.")
  (LIN1_MCU_Rx m))

(cl:ensure-generic-function 'LIN1_MCU_Tx-val :lambda-list '(m))
(cl:defmethod LIN1_MCU_Tx-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LIN1_MCU_Tx-val is deprecated.  Use twinny_msgs-msg:LIN1_MCU_Tx instead.")
  (LIN1_MCU_Tx m))

(cl:ensure-generic-function 'LIN2_MCU_Rx-val :lambda-list '(m))
(cl:defmethod LIN2_MCU_Rx-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LIN2_MCU_Rx-val is deprecated.  Use twinny_msgs-msg:LIN2_MCU_Rx instead.")
  (LIN2_MCU_Rx m))

(cl:ensure-generic-function 'LIN2_MCU_Tx-val :lambda-list '(m))
(cl:defmethod LIN2_MCU_Tx-val ((m <MonitorPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:LIN2_MCU_Tx-val is deprecated.  Use twinny_msgs-msg:LIN2_MCU_Tx instead.")
  (LIN2_MCU_Tx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorPacket>) ostream)
  "Serializes a message object of type '<MonitorPacket>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN1_MCU_Rx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN1_MCU_Rx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN1_MCU_Tx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN1_MCU_Tx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN2_MCU_Rx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN2_MCU_Rx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN2_MCU_Tx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN2_MCU_Tx_Packet)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN1_MCU_Rx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN1_MCU_Rx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN1_MCU_Tx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN1_MCU_Tx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN2_MCU_Rx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN2_MCU_Rx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN2_MCU_Tx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN2_MCU_Tx)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorPacket>) istream)
  "Deserializes a message object of type '<MonitorPacket>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN1_MCU_Rx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN1_MCU_Rx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN1_MCU_Tx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN1_MCU_Tx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN2_MCU_Rx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN2_MCU_Rx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CAN2_MCU_Tx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CAN2_MCU_Tx_Packet)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN1_MCU_Rx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN1_MCU_Rx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN1_MCU_Tx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN1_MCU_Tx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN2_MCU_Rx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN2_MCU_Rx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LIN2_MCU_Tx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LIN2_MCU_Tx)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorPacket>)))
  "Returns string type for a message object of type '<MonitorPacket>"
  "twinny_msgs/MonitorPacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorPacket)))
  "Returns string type for a message object of type 'MonitorPacket"
  "twinny_msgs/MonitorPacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorPacket>)))
  "Returns md5sum for a message object of type '<MonitorPacket>"
  "66e58c86df0235b897d5abd8cc8e9f6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorPacket)))
  "Returns md5sum for a message object of type 'MonitorPacket"
  "66e58c86df0235b897d5abd8cc8e9f6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorPacket>)))
  "Returns full string definition for message of type '<MonitorPacket>"
  (cl:format cl:nil "Header header ~%~%uint16 CAN1_MCU_Rx_Packet~%uint16 CAN1_MCU_Tx_Packet~%uint16 CAN2_MCU_Rx_Packet~%uint16 CAN2_MCU_Tx_Packet~%~%uint16 LIN1_MCU_Rx~%uint16 LIN1_MCU_Tx~%uint16 LIN2_MCU_Rx~%uint16 LIN2_MCU_Tx~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorPacket)))
  "Returns full string definition for message of type 'MonitorPacket"
  (cl:format cl:nil "Header header ~%~%uint16 CAN1_MCU_Rx_Packet~%uint16 CAN1_MCU_Tx_Packet~%uint16 CAN2_MCU_Rx_Packet~%uint16 CAN2_MCU_Tx_Packet~%~%uint16 LIN1_MCU_Rx~%uint16 LIN1_MCU_Tx~%uint16 LIN2_MCU_Rx~%uint16 LIN2_MCU_Tx~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorPacket>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorPacket>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorPacket
    (cl:cons ':header (header msg))
    (cl:cons ':CAN1_MCU_Rx_Packet (CAN1_MCU_Rx_Packet msg))
    (cl:cons ':CAN1_MCU_Tx_Packet (CAN1_MCU_Tx_Packet msg))
    (cl:cons ':CAN2_MCU_Rx_Packet (CAN2_MCU_Rx_Packet msg))
    (cl:cons ':CAN2_MCU_Tx_Packet (CAN2_MCU_Tx_Packet msg))
    (cl:cons ':LIN1_MCU_Rx (LIN1_MCU_Rx msg))
    (cl:cons ':LIN1_MCU_Tx (LIN1_MCU_Tx msg))
    (cl:cons ':LIN2_MCU_Rx (LIN2_MCU_Rx msg))
    (cl:cons ':LIN2_MCU_Tx (LIN2_MCU_Tx msg))
))
