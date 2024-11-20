; Auto-generated. Do not edit!


(cl:in-package trash_bot-msg)


;//! \htmlinclude UnitStateMsg.msg.html

(cl:defclass <UnitStateMsg> (roslisp-msg-protocol:ros-message)
  ((alive
    :reader alive
    :initarg :alive
    :type cl:integer
    :initform 0)
   (states
    :reader states
    :initarg :states
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass UnitStateMsg (<UnitStateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UnitStateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UnitStateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trash_bot-msg:<UnitStateMsg> is deprecated: use trash_bot-msg:UnitStateMsg instead.")))

(cl:ensure-generic-function 'alive-val :lambda-list '(m))
(cl:defmethod alive-val ((m <UnitStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:alive-val is deprecated.  Use trash_bot-msg:alive instead.")
  (alive m))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <UnitStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trash_bot-msg:states-val is deprecated.  Use trash_bot-msg:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UnitStateMsg>) ostream)
  "Serializes a message object of type '<UnitStateMsg>"
  (cl:let* ((signed (cl:slot-value msg 'alive)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
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
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UnitStateMsg>) istream)
  "Deserializes a message object of type '<UnitStateMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alive) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
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
  "090390084faae6402e136d50389ae081")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UnitStateMsg)))
  "Returns md5sum for a message object of type 'UnitStateMsg"
  "090390084faae6402e136d50389ae081")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UnitStateMsg>)))
  "Returns full string definition for message of type '<UnitStateMsg>"
  (cl:format cl:nil "# UnitStateMsg.msg~%~%# bit flag를 통해 각 unit index와 1:1 매칭된다.~%# 0:alive , 1:dead or timeout~%int32 alive~%~%# Array for unit states~%int32[] states~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UnitStateMsg)))
  "Returns full string definition for message of type 'UnitStateMsg"
  (cl:format cl:nil "# UnitStateMsg.msg~%~%# bit flag를 통해 각 unit index와 1:1 매칭된다.~%# 0:alive , 1:dead or timeout~%int32 alive~%~%# Array for unit states~%int32[] states~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UnitStateMsg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UnitStateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'UnitStateMsg
    (cl:cons ':alive (alive msg))
    (cl:cons ':states (states msg))
))
