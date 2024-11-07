; Auto-generated. Do not edit!


(cl:in-package trash_bot-msg)


;//! \htmlinclude UnitStateMsg.msg.html

(cl:defclass <UnitStateMsg> (roslisp-msg-protocol:ros-message)
  ((unit_id
    :reader unit_id
    :initarg :unit_id
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass UnitStateMsg (<UnitStateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnitStateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnitStateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trash_bot-msg:<UnitStateMsg> is deprecated: use trash_bot-msg:UnitStateMsg instead.")))

(cl:ensure-generic-function 'unit_id-val :lambda-list '(m))
(cl:defmethod unit_id-val ((m <UnitStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:unit_id-val is deprecated.  Use trash_bot-msg:unit_id instead.")
  (unit_id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <UnitStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:state-val is deprecated.  Use trash_bot-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnitStateMsg>) ostream)
  "Serializes a message object of type '<UnitStateMsg>"
  (cl:let* ((signed (cl:slot-value msg 'unit_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnitStateMsg>) istream)
  "Deserializes a message object of type '<UnitStateMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnitStateMsg>)))
  "Returns string type for a message object of type '<UnitStateMsg>"
  "trash_bot/UnitStateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnitStateMsg)))
  "Returns string type for a message object of type 'UnitStateMsg"
  "trash_bot/UnitStateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnitStateMsg>)))
  "Returns md5sum for a message object of type '<UnitStateMsg>"
  "7cd06622fe3c1b94199887fecbe639f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnitStateMsg)))
  "Returns md5sum for a message object of type 'UnitStateMsg"
  "7cd06622fe3c1b94199887fecbe639f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnitStateMsg>)))
  "Returns full string definition for message of type '<UnitStateMsg>"
  (cl:format cl:nil "~%# 각 Unit이 현재의 상태를 보고 하는 Message~%int32 unit_id           # Unit ID~%int32 state             # 현재 상태 (UnitState index, unit_define.h)~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnitStateMsg)))
  "Returns full string definition for message of type 'UnitStateMsg"
  (cl:format cl:nil "~%# 각 Unit이 현재의 상태를 보고 하는 Message~%int32 unit_id           # Unit ID~%int32 state             # 현재 상태 (UnitState index, unit_define.h)~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnitStateMsg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnitStateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UnitStateMsg
    (cl:cons ':unit_id (unit_id msg))
    (cl:cons ':state (state msg))
))
