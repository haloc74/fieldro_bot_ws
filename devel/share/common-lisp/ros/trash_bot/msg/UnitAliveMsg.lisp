; Auto-generated. Do not edit!


(cl:in-package trash_bot-msg)


;//! \htmlinclude UnitAliveMsg.msg.html

(cl:defclass <UnitAliveMsg> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass UnitAliveMsg (<UnitAliveMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnitAliveMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnitAliveMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trash_bot-msg:<UnitAliveMsg> is deprecated: use trash_bot-msg:UnitAliveMsg instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <UnitAliveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:index-val is deprecated.  Use trash_bot-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <UnitAliveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:state-val is deprecated.  Use trash_bot-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnitAliveMsg>) ostream)
  "Serializes a message object of type '<UnitAliveMsg>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnitAliveMsg>) istream)
  "Deserializes a message object of type '<UnitAliveMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnitAliveMsg>)))
  "Returns string type for a message object of type '<UnitAliveMsg>"
  "trash_bot/UnitAliveMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnitAliveMsg)))
  "Returns string type for a message object of type 'UnitAliveMsg"
  "trash_bot/UnitAliveMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnitAliveMsg>)))
  "Returns md5sum for a message object of type '<UnitAliveMsg>"
  "3580be06e9860f4561cd6b311dfacef3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnitAliveMsg)))
  "Returns md5sum for a message object of type 'UnitAliveMsg"
  "3580be06e9860f4561cd6b311dfacef3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnitAliveMsg>)))
  "Returns full string definition for message of type '<UnitAliveMsg>"
  (cl:format cl:nil "~%# UnitAliveMsg.msg~%~%# Unit index~%int32 index~%~%# unit states~%int32 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnitAliveMsg)))
  "Returns full string definition for message of type 'UnitAliveMsg"
  (cl:format cl:nil "~%# UnitAliveMsg.msg~%~%# Unit index~%int32 index~%~%# unit states~%int32 state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnitAliveMsg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnitAliveMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UnitAliveMsg
    (cl:cons ':index (index msg))
    (cl:cons ':state (state msg))
))
