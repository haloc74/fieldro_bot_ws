; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-srv)


;//! \htmlinclude PositionCompensatorCommand-request.msg.html

(cl:defclass <PositionCompensatorCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (localized_line_A_x
    :reader localized_line_A_x
    :initarg :localized_line_A_x
    :type cl:float
    :initform 0.0)
   (localized_line_A_y
    :reader localized_line_A_y
    :initarg :localized_line_A_y
    :type cl:float
    :initform 0.0)
   (localized_line_B_x
    :reader localized_line_B_x
    :initarg :localized_line_B_x
    :type cl:float
    :initform 0.0)
   (localized_line_B_y
    :reader localized_line_B_y
    :initarg :localized_line_B_y
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (equipment_desired_x
    :reader equipment_desired_x
    :initarg :equipment_desired_x
    :type cl:float
    :initform 0.0)
   (equipment_desired_y
    :reader equipment_desired_y
    :initarg :equipment_desired_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionCompensatorCommand-request (<PositionCompensatorCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCompensatorCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCompensatorCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<PositionCompensatorCommand-request> is deprecated: use twinny_msgs-srv:PositionCompensatorCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:command-val is deprecated.  Use twinny_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:id-val is deprecated.  Use twinny_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'localized_line_A_x-val :lambda-list '(m))
(cl:defmethod localized_line_A_x-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:localized_line_A_x-val is deprecated.  Use twinny_msgs-srv:localized_line_A_x instead.")
  (localized_line_A_x m))

(cl:ensure-generic-function 'localized_line_A_y-val :lambda-list '(m))
(cl:defmethod localized_line_A_y-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:localized_line_A_y-val is deprecated.  Use twinny_msgs-srv:localized_line_A_y instead.")
  (localized_line_A_y m))

(cl:ensure-generic-function 'localized_line_B_x-val :lambda-list '(m))
(cl:defmethod localized_line_B_x-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:localized_line_B_x-val is deprecated.  Use twinny_msgs-srv:localized_line_B_x instead.")
  (localized_line_B_x m))

(cl:ensure-generic-function 'localized_line_B_y-val :lambda-list '(m))
(cl:defmethod localized_line_B_y-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:localized_line_B_y-val is deprecated.  Use twinny_msgs-srv:localized_line_B_y instead.")
  (localized_line_B_y m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:type-val is deprecated.  Use twinny_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'equipment_desired_x-val :lambda-list '(m))
(cl:defmethod equipment_desired_x-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:equipment_desired_x-val is deprecated.  Use twinny_msgs-srv:equipment_desired_x instead.")
  (equipment_desired_x m))

(cl:ensure-generic-function 'equipment_desired_y-val :lambda-list '(m))
(cl:defmethod equipment_desired_y-val ((m <PositionCompensatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:equipment_desired_y-val is deprecated.  Use twinny_msgs-srv:equipment_desired_y instead.")
  (equipment_desired_y m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionCompensatorCommand-request>)))
    "Constants for message type '<PositionCompensatorCommand-request>"
  '((:START . 0)
    (:STOP . 1)
    (:HANA_MACHINE_LONG . 1)
    (:HANA_MACHINE_SHORT_SINGLE_EDGE . 2)
    (:HANA_STOCKER . 3)
    (:HANA_MACHINE_SHORT_DOUBLE_EDGE . 4)
    (:NEPESARK_SHELF . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionCompensatorCommand-request)))
    "Constants for message type 'PositionCompensatorCommand-request"
  '((:START . 0)
    (:STOP . 1)
    (:HANA_MACHINE_LONG . 1)
    (:HANA_MACHINE_SHORT_SINGLE_EDGE . 2)
    (:HANA_STOCKER . 3)
    (:HANA_MACHINE_SHORT_DOUBLE_EDGE . 4)
    (:NEPESARK_SHELF . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCompensatorCommand-request>) ostream)
  "Serializes a message object of type '<PositionCompensatorCommand-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'localized_line_A_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'localized_line_A_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'localized_line_B_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'localized_line_B_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'equipment_desired_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'equipment_desired_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCompensatorCommand-request>) istream)
  "Deserializes a message object of type '<PositionCompensatorCommand-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'localized_line_A_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'localized_line_A_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'localized_line_B_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'localized_line_B_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'equipment_desired_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'equipment_desired_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCompensatorCommand-request>)))
  "Returns string type for a service object of type '<PositionCompensatorCommand-request>"
  "twinny_msgs/PositionCompensatorCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCompensatorCommand-request)))
  "Returns string type for a service object of type 'PositionCompensatorCommand-request"
  "twinny_msgs/PositionCompensatorCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCompensatorCommand-request>)))
  "Returns md5sum for a message object of type '<PositionCompensatorCommand-request>"
  "64c066ac648eab7e36cd5c86a14aa3c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCompensatorCommand-request)))
  "Returns md5sum for a message object of type 'PositionCompensatorCommand-request"
  "64c066ac648eab7e36cd5c86a14aa3c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCompensatorCommand-request>)))
  "Returns full string definition for message of type '<PositionCompensatorCommand-request>"
  (cl:format cl:nil "int32 START = 0~%int32 STOP = 1~%int32 command~%~%int32 id~%~%float64 localized_line_A_x~%float64 localized_line_A_y~%float64 localized_line_B_x~%float64 localized_line_B_y~%~%int32 HANA_MACHINE_LONG = 1~%int32 HANA_MACHINE_SHORT_SINGLE_EDGE = 2~%int32 HANA_STOCKER = 3~%int32 HANA_MACHINE_SHORT_DOUBLE_EDGE = 4~%int32 NEPESARK_SHELF = 5~%int32 type~%~%float64 equipment_desired_x~%float64 equipment_desired_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCompensatorCommand-request)))
  "Returns full string definition for message of type 'PositionCompensatorCommand-request"
  (cl:format cl:nil "int32 START = 0~%int32 STOP = 1~%int32 command~%~%int32 id~%~%float64 localized_line_A_x~%float64 localized_line_A_y~%float64 localized_line_B_x~%float64 localized_line_B_y~%~%int32 HANA_MACHINE_LONG = 1~%int32 HANA_MACHINE_SHORT_SINGLE_EDGE = 2~%int32 HANA_STOCKER = 3~%int32 HANA_MACHINE_SHORT_DOUBLE_EDGE = 4~%int32 NEPESARK_SHELF = 5~%int32 type~%~%float64 equipment_desired_x~%float64 equipment_desired_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCompensatorCommand-request>))
  (cl:+ 0
     4
     4
     8
     8
     8
     8
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCompensatorCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCompensatorCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':id (id msg))
    (cl:cons ':localized_line_A_x (localized_line_A_x msg))
    (cl:cons ':localized_line_A_y (localized_line_A_y msg))
    (cl:cons ':localized_line_B_x (localized_line_B_x msg))
    (cl:cons ':localized_line_B_y (localized_line_B_y msg))
    (cl:cons ':type (type msg))
    (cl:cons ':equipment_desired_x (equipment_desired_x msg))
    (cl:cons ':equipment_desired_y (equipment_desired_y msg))
))
;//! \htmlinclude PositionCompensatorCommand-response.msg.html

(cl:defclass <PositionCompensatorCommand-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass PositionCompensatorCommand-response (<PositionCompensatorCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionCompensatorCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionCompensatorCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-srv:<PositionCompensatorCommand-response> is deprecated: use twinny_msgs-srv:PositionCompensatorCommand-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PositionCompensatorCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-srv:result-val is deprecated.  Use twinny_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionCompensatorCommand-response>)))
    "Constants for message type '<PositionCompensatorCommand-response>"
  '((:SUCCESS . 1)
    (:NOT_READY . -1)
    (:WRONG_COMMAND . -99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionCompensatorCommand-response)))
    "Constants for message type 'PositionCompensatorCommand-response"
  '((:SUCCESS . 1)
    (:NOT_READY . -1)
    (:WRONG_COMMAND . -99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionCompensatorCommand-response>) ostream)
  "Serializes a message object of type '<PositionCompensatorCommand-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionCompensatorCommand-response>) istream)
  "Deserializes a message object of type '<PositionCompensatorCommand-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionCompensatorCommand-response>)))
  "Returns string type for a service object of type '<PositionCompensatorCommand-response>"
  "twinny_msgs/PositionCompensatorCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCompensatorCommand-response)))
  "Returns string type for a service object of type 'PositionCompensatorCommand-response"
  "twinny_msgs/PositionCompensatorCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionCompensatorCommand-response>)))
  "Returns md5sum for a message object of type '<PositionCompensatorCommand-response>"
  "64c066ac648eab7e36cd5c86a14aa3c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionCompensatorCommand-response)))
  "Returns md5sum for a message object of type 'PositionCompensatorCommand-response"
  "64c066ac648eab7e36cd5c86a14aa3c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionCompensatorCommand-response>)))
  "Returns full string definition for message of type '<PositionCompensatorCommand-response>"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 NOT_READY = -1~%int32 WRONG_COMMAND = -99~%~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionCompensatorCommand-response)))
  "Returns full string definition for message of type 'PositionCompensatorCommand-response"
  (cl:format cl:nil "int32 SUCCESS = 1~%int32 NOT_READY = -1~%int32 WRONG_COMMAND = -99~%~%int32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionCompensatorCommand-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionCompensatorCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionCompensatorCommand-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PositionCompensatorCommand)))
  'PositionCompensatorCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PositionCompensatorCommand)))
  'PositionCompensatorCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionCompensatorCommand)))
  "Returns string type for a service object of type '<PositionCompensatorCommand>"
  "twinny_msgs/PositionCompensatorCommand")