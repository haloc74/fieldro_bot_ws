; Auto-generated. Do not edit!


(cl:in-package trash_bot-msg)


;//! \htmlinclude UnitActionComplete.msg.html

(cl:defclass <UnitActionComplete> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (receive_object
    :reader receive_object
    :initarg :receive_object
    :type cl:integer
    :initform 0)
   (action_object
    :reader action_object
    :initarg :action_object
    :type cl:integer
    :initform 0)
   (complete_action
    :reader complete_action
    :initarg :complete_action
    :type cl:integer
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0))
)

(cl:defclass UnitActionComplete (<UnitActionComplete>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnitActionComplete>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnitActionComplete)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trash_bot-msg:<UnitActionComplete> is deprecated: use trash_bot-msg:UnitActionComplete instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <UnitActionComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:time_stamp-val is deprecated.  Use trash_bot-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'receive_object-val :lambda-list '(m))
(cl:defmethod receive_object-val ((m <UnitActionComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:receive_object-val is deprecated.  Use trash_bot-msg:receive_object instead.")
  (receive_object m))

(cl:ensure-generic-function 'action_object-val :lambda-list '(m))
(cl:defmethod action_object-val ((m <UnitActionComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:action_object-val is deprecated.  Use trash_bot-msg:action_object instead.")
  (action_object m))

(cl:ensure-generic-function 'complete_action-val :lambda-list '(m))
(cl:defmethod complete_action-val ((m <UnitActionComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:complete_action-val is deprecated.  Use trash_bot-msg:complete_action instead.")
  (complete_action m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <UnitActionComplete>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:error_code-val is deprecated.  Use trash_bot-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnitActionComplete>) ostream)
  "Serializes a message object of type '<UnitActionComplete>"
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
  (cl:let* ((signed (cl:slot-value msg 'receive_object)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action_object)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'complete_action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnitActionComplete>) istream)
  "Deserializes a message object of type '<UnitActionComplete>"
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
      (cl:setf (cl:slot-value msg 'receive_object) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_object) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'complete_action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnitActionComplete>)))
  "Returns string type for a message object of type '<UnitActionComplete>"
  "trash_bot/UnitActionComplete")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnitActionComplete)))
  "Returns string type for a message object of type 'UnitActionComplete"
  "trash_bot/UnitActionComplete")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnitActionComplete>)))
  "Returns md5sum for a message object of type '<UnitActionComplete>"
  "8cfdf36b4b872dd50c9838483632d5fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnitActionComplete)))
  "Returns md5sum for a message object of type 'UnitActionComplete"
  "8cfdf36b4b872dd50c9838483632d5fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnitActionComplete>)))
  "Returns full string definition for message of type '<UnitActionComplete>"
  (cl:format cl:nil "~%## 각 구성 unit이 요청된 동작을 완료 시킨면 발생되는 메세지~%~%time  time_stamp        # 발행시간~%int32 receive_object    # 수신객체    (unit_index.h)~%int32 action_object     # 동작 객체   (unit_index.h)~%int32 complete_action   # 완료 동작   (unit_action_index.h)~%int32 error_code        # Error-Code  (error_code.h) ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnitActionComplete)))
  "Returns full string definition for message of type 'UnitActionComplete"
  (cl:format cl:nil "~%## 각 구성 unit이 요청된 동작을 완료 시킨면 발생되는 메세지~%~%time  time_stamp        # 발행시간~%int32 receive_object    # 수신객체    (unit_index.h)~%int32 action_object     # 동작 객체   (unit_index.h)~%int32 complete_action   # 완료 동작   (unit_action_index.h)~%int32 error_code        # Error-Code  (error_code.h) ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnitActionComplete>))
  (cl:+ 0
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnitActionComplete>))
  "Converts a ROS message object to a list"
  (cl:list 'UnitActionComplete
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':receive_object (receive_object msg))
    (cl:cons ':action_object (action_object msg))
    (cl:cons ':complete_action (complete_action msg))
    (cl:cons ':error_code (error_code msg))
))
