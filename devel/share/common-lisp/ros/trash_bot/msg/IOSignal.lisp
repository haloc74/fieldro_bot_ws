; Auto-generated. Do not edit!


(cl:in-package trash_bot-msg)


;//! \htmlinclude IOSignal.msg.html

(cl:defclass <IOSignal> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (signal_bit
    :reader signal_bit
    :initarg :signal_bit
    :type cl:integer
    :initform 0))
)

(cl:defclass IOSignal (<IOSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trash_bot-msg:<IOSignal> is deprecated: use trash_bot-msg:IOSignal instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <IOSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:time_stamp-val is deprecated.  Use trash_bot-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'signal_bit-val :lambda-list '(m))
(cl:defmethod signal_bit-val ((m <IOSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:signal_bit-val is deprecated.  Use trash_bot-msg:signal_bit instead.")
  (signal_bit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOSignal>) ostream)
  "Serializes a message object of type '<IOSignal>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_stamp) (cl:floor (cl:slot-value msg 'time_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'signal_bit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOSignal>) istream)
  "Deserializes a message object of type '<IOSignal>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_bit) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOSignal>)))
  "Returns string type for a message object of type '<IOSignal>"
  "trash_bot/IOSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOSignal)))
  "Returns string type for a message object of type 'IOSignal"
  "trash_bot/IOSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOSignal>)))
  "Returns md5sum for a message object of type '<IOSignal>"
  "4b2bc2f69e0aff659bc5c2a1a7f822b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOSignal)))
  "Returns md5sum for a message object of type 'IOSignal"
  "4b2bc2f69e0aff659bc5c2a1a7f822b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOSignal>)))
  "Returns full string definition for message of type '<IOSignal>"
  (cl:format cl:nil "~%time time_stamp     # Message 발행 시간 (ros::Time)~%int64 signal_bit    # Total Signal Value (bit operation)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOSignal)))
  "Returns full string definition for message of type 'IOSignal"
  (cl:format cl:nil "~%time time_stamp     # Message 발행 시간 (ros::Time)~%int64 signal_bit    # Total Signal Value (bit operation)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOSignal>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'IOSignal
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':signal_bit (signal_bit msg))
))
