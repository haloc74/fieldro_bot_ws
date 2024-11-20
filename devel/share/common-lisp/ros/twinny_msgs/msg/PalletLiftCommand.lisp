; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PalletLiftCommand.msg.html

(cl:defclass <PalletLiftCommand> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass PalletLiftCommand (<PalletLiftCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PalletLiftCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PalletLiftCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PalletLiftCommand> is deprecated: use twinny_msgs-msg:PalletLiftCommand instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <PalletLiftCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:command-val is deprecated.  Use twinny_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PalletLiftCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PalletLiftCommand>)))
    "Constants for message type '<PalletLiftCommand>"
  '((:SETTLE . settle)
    (:READY_TO_LOAD . ready_to_load)
    (:LOAD . load)
    (:READY_TO_UNLOAD . ready_to_unload)
    (:UNLOAD . unload))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PalletLiftCommand)))
    "Constants for message type 'PalletLiftCommand"
  '((:SETTLE . settle)
    (:READY_TO_LOAD . ready_to_load)
    (:LOAD . load)
    (:READY_TO_UNLOAD . ready_to_unload)
    (:UNLOAD . unload))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PalletLiftCommand>) ostream)
  "Serializes a message object of type '<PalletLiftCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PalletLiftCommand>) istream)
  "Deserializes a message object of type '<PalletLiftCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PalletLiftCommand>)))
  "Returns string type for a message object of type '<PalletLiftCommand>"
  "twinny_msgs/PalletLiftCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PalletLiftCommand)))
  "Returns string type for a message object of type 'PalletLiftCommand"
  "twinny_msgs/PalletLiftCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PalletLiftCommand>)))
  "Returns md5sum for a message object of type '<PalletLiftCommand>"
  "26fb3be129c5aec0fc705f9631d5551c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PalletLiftCommand)))
  "Returns md5sum for a message object of type 'PalletLiftCommand"
  "26fb3be129c5aec0fc705f9631d5551c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PalletLiftCommand>)))
  "Returns full string definition for message of type '<PalletLiftCommand>"
  (cl:format cl:nil "string SETTLE=settle~%string READY_TO_LOAD=ready_to_load~%string LOAD=load~%string READY_TO_UNLOAD=ready_to_unload~%string UNLOAD=unload~%~%string command~%string type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PalletLiftCommand)))
  "Returns full string definition for message of type 'PalletLiftCommand"
  (cl:format cl:nil "string SETTLE=settle~%string READY_TO_LOAD=ready_to_load~%string LOAD=load~%string READY_TO_UNLOAD=ready_to_unload~%string UNLOAD=unload~%~%string command~%string type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PalletLiftCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PalletLiftCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PalletLiftCommand
    (cl:cons ':command (command msg))
    (cl:cons ':type (type msg))
))
