; Auto-generated. Do not edit!


(cl:in-package trash_bot-msg)


;//! \htmlinclude UnitControl.msg.html

(cl:defclass <UnitControl> (roslisp-msg-protocol:ros-message)
  ((time_stamp
    :reader time_stamp
    :initarg :time_stamp
    :type cl:real
    :initform 0)
   (target_object
    :reader target_object
    :initarg :target_object
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass UnitControl (<UnitControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnitControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnitControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trash_bot-msg:<UnitControl> is deprecated: use trash_bot-msg:UnitControl instead.")))

(cl:ensure-generic-function 'time_stamp-val :lambda-list '(m))
(cl:defmethod time_stamp-val ((m <UnitControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:time_stamp-val is deprecated.  Use trash_bot-msg:time_stamp instead.")
  (time_stamp m))

(cl:ensure-generic-function 'target_object-val :lambda-list '(m))
(cl:defmethod target_object-val ((m <UnitControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:target_object-val is deprecated.  Use trash_bot-msg:target_object instead.")
  (target_object m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <UnitControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:action-val is deprecated.  Use trash_bot-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <UnitControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:command-val is deprecated.  Use trash_bot-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnitControl>) ostream)
  "Serializes a message object of type '<UnitControl>"
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
  (cl:let* ((signed (cl:slot-value msg 'target_object)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnitControl>) istream)
  "Deserializes a message object of type '<UnitControl>"
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
      (cl:setf (cl:slot-value msg 'target_object) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UnitControl>)))
  "Returns string type for a message object of type '<UnitControl>"
  "trash_bot/UnitControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UnitControl)))
  "Returns string type for a message object of type 'UnitControl"
  "trash_bot/UnitControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UnitControl>)))
  "Returns md5sum for a message object of type '<UnitControl>"
  "cb3cb3b598c0c81e52aabe15081f3bd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnitControl)))
  "Returns md5sum for a message object of type 'UnitControl"
  "cb3cb3b598c0c81e52aabe15081f3bd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnitControl>)))
  "Returns full string definition for message of type '<UnitControl>"
  (cl:format cl:nil "~%~%# 각 Unit에게 동작 요청하는 메세지 ~%~%time  time_stamp        # 발행 시간 ~%int32 target_object     # 대상 객체 (H/W Index Enum, unit_index.h)~%int32 action            # 명령 동작 Action Index , unit_action_index.h~%string command          # 명령 문자열 (ex. \"start\", \"stop\", \"reset\", \"pause\", \"resume\")~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnitControl)))
  "Returns full string definition for message of type 'UnitControl"
  (cl:format cl:nil "~%~%# 각 Unit에게 동작 요청하는 메세지 ~%~%time  time_stamp        # 발행 시간 ~%int32 target_object     # 대상 객체 (H/W Index Enum, unit_index.h)~%int32 action            # 명령 동작 Action Index , unit_action_index.h~%string command          # 명령 문자열 (ex. \"start\", \"stop\", \"reset\", \"pause\", \"resume\")~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnitControl>))
  (cl:+ 0
     8
     4
     4
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnitControl>))
  "Converts a ROS message object to a list"
  (cl:list 'UnitControl
    (cl:cons ':time_stamp (time_stamp msg))
    (cl:cons ':target_object (target_object msg))
    (cl:cons ':action (action msg))
    (cl:cons ':command (command msg))
))
