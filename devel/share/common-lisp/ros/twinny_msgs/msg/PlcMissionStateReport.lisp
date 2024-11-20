; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PlcMissionStateReport.msg.html

(cl:defclass <PlcMissionStateReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (is_manual
    :reader is_manual
    :initarg :is_manual
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (magazine_slot
    :reader magazine_slot
    :initarg :magazine_slot
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0))
)

(cl:defclass PlcMissionStateReport (<PlcMissionStateReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlcMissionStateReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlcMissionStateReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PlcMissionStateReport> is deprecated: use twinny_msgs-msg:PlcMissionStateReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlcMissionStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PlcMissionStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:type-val is deprecated.  Use twinny_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'is_manual-val :lambda-list '(m))
(cl:defmethod is_manual-val ((m <PlcMissionStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:is_manual-val is deprecated.  Use twinny_msgs-msg:is_manual instead.")
  (is_manual m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PlcMissionStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:status-val is deprecated.  Use twinny_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'magazine_slot-val :lambda-list '(m))
(cl:defmethod magazine_slot-val ((m <PlcMissionStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:magazine_slot-val is deprecated.  Use twinny_msgs-msg:magazine_slot instead.")
  (magazine_slot m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <PlcMissionStateReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:error-val is deprecated.  Use twinny_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlcMissionStateReport>)))
    "Constants for message type '<PlcMissionStateReport>"
  '((:READY . 0)
    (:WORKING . 1)
    (:COMPLETE . 2)
    (:FAIL . 3)
    (:NO_ALARM . 0)
    (:ALARM_DRIVE_DISABLE . 1)
    (:ALARM_LOAD_VISION_NG . 11)
    (:ALARM_LOAD_WORKSPACE_NG . 12)
    (:ALARM_UNLOAD_BAN . 13)
    (:ALARM_LOAD_RFID_READ_NG . 14)
    (:ALARM_LOAD_RFID_CHECK . 15)
    (:ALARM_UNLOAD_VISION_NG . 21)
    (:ALARM_UNLOAD_WORKSPACE_NG . 22)
    (:ALARM_UNLOAD_RFID_CHECK . 23)
    (:ALARM_BATTERY_VISION_NG . 31)
    (:ALARM_BATTERY_WORKSPACE_NG . 32)
    (:ALARM_PIO_READY_DELAY . 33)
    (:ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY . 34)
    (:ALARM_PIO_BATTERY_COMPLETE_DELAY . 35)
    (:ALARM_PIO_IF_COMPLETE_DELAY . 36))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlcMissionStateReport)))
    "Constants for message type 'PlcMissionStateReport"
  '((:READY . 0)
    (:WORKING . 1)
    (:COMPLETE . 2)
    (:FAIL . 3)
    (:NO_ALARM . 0)
    (:ALARM_DRIVE_DISABLE . 1)
    (:ALARM_LOAD_VISION_NG . 11)
    (:ALARM_LOAD_WORKSPACE_NG . 12)
    (:ALARM_UNLOAD_BAN . 13)
    (:ALARM_LOAD_RFID_READ_NG . 14)
    (:ALARM_LOAD_RFID_CHECK . 15)
    (:ALARM_UNLOAD_VISION_NG . 21)
    (:ALARM_UNLOAD_WORKSPACE_NG . 22)
    (:ALARM_UNLOAD_RFID_CHECK . 23)
    (:ALARM_BATTERY_VISION_NG . 31)
    (:ALARM_BATTERY_WORKSPACE_NG . 32)
    (:ALARM_PIO_READY_DELAY . 33)
    (:ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY . 34)
    (:ALARM_PIO_BATTERY_COMPLETE_DELAY . 35)
    (:ALARM_PIO_IF_COMPLETE_DELAY . 36))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlcMissionStateReport>) ostream)
  "Serializes a message object of type '<PlcMissionStateReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_manual) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'magazine_slot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'magazine_slot))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlcMissionStateReport>) istream)
  "Deserializes a message object of type '<PlcMissionStateReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_manual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'magazine_slot) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'magazine_slot)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlcMissionStateReport>)))
  "Returns string type for a message object of type '<PlcMissionStateReport>"
  "twinny_msgs/PlcMissionStateReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlcMissionStateReport)))
  "Returns string type for a message object of type 'PlcMissionStateReport"
  "twinny_msgs/PlcMissionStateReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlcMissionStateReport>)))
  "Returns md5sum for a message object of type '<PlcMissionStateReport>"
  "f2b9c2a3491b99084010a4db4b12614d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlcMissionStateReport)))
  "Returns md5sum for a message object of type 'PlcMissionStateReport"
  "f2b9c2a3491b99084010a4db4b12614d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlcMissionStateReport>)))
  "Returns full string definition for message of type '<PlcMissionStateReport>"
  (cl:format cl:nil "Header header~%string type~%~%bool is_manual~%~%uint8 READY = 0~%uint8 WORKING = 1~%uint8 COMPLETE = 2~%uint8 FAIL = 3~%uint8 status~%~%uint32 NO_ALARM = 0~%uint32 ALARM_DRIVE_DISABLE = 1~%~%uint32 ALARM_LOAD_VISION_NG = 11~%uint32 ALARM_LOAD_WORKSPACE_NG = 12~%uint32 ALARM_UNLOAD_BAN = 13~%uint32 ALARM_LOAD_RFID_READ_NG = 14~%uint32 ALARM_LOAD_RFID_CHECK = 15~%~%uint32 ALARM_UNLOAD_VISION_NG = 21~%uint32 ALARM_UNLOAD_WORKSPACE_NG = 22~%uint32 ALARM_UNLOAD_RFID_CHECK = 23~%~%uint32 ALARM_BATTERY_VISION_NG = 31~%uint32 ALARM_BATTERY_WORKSPACE_NG = 32~%uint32 ALARM_PIO_READY_DELAY = 33~%uint32 ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY = 34~%uint32 ALARM_PIO_BATTERY_COMPLETE_DELAY =35~%uint32 ALARM_PIO_IF_COMPLETE_DELAY = 36~%~%string[] magazine_slot~%uint32 error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlcMissionStateReport)))
  "Returns full string definition for message of type 'PlcMissionStateReport"
  (cl:format cl:nil "Header header~%string type~%~%bool is_manual~%~%uint8 READY = 0~%uint8 WORKING = 1~%uint8 COMPLETE = 2~%uint8 FAIL = 3~%uint8 status~%~%uint32 NO_ALARM = 0~%uint32 ALARM_DRIVE_DISABLE = 1~%~%uint32 ALARM_LOAD_VISION_NG = 11~%uint32 ALARM_LOAD_WORKSPACE_NG = 12~%uint32 ALARM_UNLOAD_BAN = 13~%uint32 ALARM_LOAD_RFID_READ_NG = 14~%uint32 ALARM_LOAD_RFID_CHECK = 15~%~%uint32 ALARM_UNLOAD_VISION_NG = 21~%uint32 ALARM_UNLOAD_WORKSPACE_NG = 22~%uint32 ALARM_UNLOAD_RFID_CHECK = 23~%~%uint32 ALARM_BATTERY_VISION_NG = 31~%uint32 ALARM_BATTERY_WORKSPACE_NG = 32~%uint32 ALARM_PIO_READY_DELAY = 33~%uint32 ALARM_PIO_BATTERY_REQUEST_RESPONSE_DELAY = 34~%uint32 ALARM_PIO_BATTERY_COMPLETE_DELAY =35~%uint32 ALARM_PIO_IF_COMPLETE_DELAY = 36~%~%string[] magazine_slot~%uint32 error~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlcMissionStateReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'magazine_slot) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlcMissionStateReport>))
  "Converts a ROS message object to a list"
  (cl:list 'PlcMissionStateReport
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':is_manual (is_manual msg))
    (cl:cons ':status (status msg))
    (cl:cons ':magazine_slot (magazine_slot msg))
    (cl:cons ':error (error msg))
))
