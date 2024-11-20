; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PlcAdditionalCommand.msg.html

(cl:defclass <PlcAdditionalCommand> (roslisp-msg-protocol:ros-message)
  ((additional_command
    :reader additional_command
    :initarg :additional_command
    :type cl:integer
    :initform 0))
)

(cl:defclass PlcAdditionalCommand (<PlcAdditionalCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlcAdditionalCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlcAdditionalCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PlcAdditionalCommand> is deprecated: use twinny_msgs-msg:PlcAdditionalCommand instead.")))

(cl:ensure-generic-function 'additional_command-val :lambda-list '(m))
(cl:defmethod additional_command-val ((m <PlcAdditionalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:additional_command-val is deprecated.  Use twinny_msgs-msg:additional_command instead.")
  (additional_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlcAdditionalCommand>) ostream)
  "Serializes a message object of type '<PlcAdditionalCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'additional_command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'additional_command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'additional_command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'additional_command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlcAdditionalCommand>) istream)
  "Deserializes a message object of type '<PlcAdditionalCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'additional_command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'additional_command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'additional_command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'additional_command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlcAdditionalCommand>)))
  "Returns string type for a message object of type '<PlcAdditionalCommand>"
  "twinny_msgs/PlcAdditionalCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlcAdditionalCommand)))
  "Returns string type for a message object of type 'PlcAdditionalCommand"
  "twinny_msgs/PlcAdditionalCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlcAdditionalCommand>)))
  "Returns md5sum for a message object of type '<PlcAdditionalCommand>"
  "e5c07594b5c15ce708f5c56e70ab299e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlcAdditionalCommand)))
  "Returns md5sum for a message object of type 'PlcAdditionalCommand"
  "e5c07594b5c15ce708f5c56e70ab299e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlcAdditionalCommand>)))
  "Returns full string definition for message of type '<PlcAdditionalCommand>"
  (cl:format cl:nil "uint32 additional_command~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlcAdditionalCommand)))
  "Returns full string definition for message of type 'PlcAdditionalCommand"
  (cl:format cl:nil "uint32 additional_command~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlcAdditionalCommand>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlcAdditionalCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PlcAdditionalCommand
    (cl:cons ':additional_command (additional_command msg))
))
