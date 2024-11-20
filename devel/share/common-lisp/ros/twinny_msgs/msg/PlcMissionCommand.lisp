; Auto-generated. Do not edit!


(cl:in-package twinny_msgs-msg)


;//! \htmlinclude PlcMissionCommand.msg.html

(cl:defclass <PlcMissionCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mission_mode
    :reader mission_mode
    :initarg :mission_mode
    :type cl:fixnum
    :initform 0)
   (workspace
    :reader workspace
    :initarg :workspace
    :type cl:string
    :initform "")
   (magazine_id
    :reader magazine_id
    :initarg :magazine_id
    :type cl:string
    :initform "")
   (workspace_direction
    :reader workspace_direction
    :initarg :workspace_direction
    :type cl:fixnum
    :initform 0)
   (in_out_num
    :reader in_out_num
    :initarg :in_out_num
    :type cl:fixnum
    :initform 0)
   (arm_move_flag
    :reader arm_move_flag
    :initarg :arm_move_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlcMissionCommand (<PlcMissionCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlcMissionCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlcMissionCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name twinny_msgs-msg:<PlcMissionCommand> is deprecated: use twinny_msgs-msg:PlcMissionCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlcMissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:header-val is deprecated.  Use twinny_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mission_mode-val :lambda-list '(m))
(cl:defmethod mission_mode-val ((m <PlcMissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:mission_mode-val is deprecated.  Use twinny_msgs-msg:mission_mode instead.")
  (mission_mode m))

(cl:ensure-generic-function 'workspace-val :lambda-list '(m))
(cl:defmethod workspace-val ((m <PlcMissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:workspace-val is deprecated.  Use twinny_msgs-msg:workspace instead.")
  (workspace m))

(cl:ensure-generic-function 'magazine_id-val :lambda-list '(m))
(cl:defmethod magazine_id-val ((m <PlcMissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:magazine_id-val is deprecated.  Use twinny_msgs-msg:magazine_id instead.")
  (magazine_id m))

(cl:ensure-generic-function 'workspace_direction-val :lambda-list '(m))
(cl:defmethod workspace_direction-val ((m <PlcMissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:workspace_direction-val is deprecated.  Use twinny_msgs-msg:workspace_direction instead.")
  (workspace_direction m))

(cl:ensure-generic-function 'in_out_num-val :lambda-list '(m))
(cl:defmethod in_out_num-val ((m <PlcMissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:in_out_num-val is deprecated.  Use twinny_msgs-msg:in_out_num instead.")
  (in_out_num m))

(cl:ensure-generic-function 'arm_move_flag-val :lambda-list '(m))
(cl:defmethod arm_move_flag-val ((m <PlcMissionCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader twinny_msgs-msg:arm_move_flag-val is deprecated.  Use twinny_msgs-msg:arm_move_flag instead.")
  (arm_move_flag m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlcMissionCommand>)))
    "Constants for message type '<PlcMissionCommand>"
  '((:NO_COMMAND . 0)
    (:LOAD . 1)
    (:UNLOAD . 2)
    (:BATTERY_CHANGE . 3)
    (:PLC_RESET . 4)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlcMissionCommand)))
    "Constants for message type 'PlcMissionCommand"
  '((:NO_COMMAND . 0)
    (:LOAD . 1)
    (:UNLOAD . 2)
    (:BATTERY_CHANGE . 3)
    (:PLC_RESET . 4)
    (:LEFT . 1)
    (:RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlcMissionCommand>) ostream)
  "Serializes a message object of type '<PlcMissionCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'workspace))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'workspace))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'magazine_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'magazine_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'workspace_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'in_out_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'in_out_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'arm_move_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlcMissionCommand>) istream)
  "Deserializes a message object of type '<PlcMissionCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'workspace) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'workspace) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'magazine_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'magazine_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'workspace_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'in_out_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'in_out_num)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'arm_move_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlcMissionCommand>)))
  "Returns string type for a message object of type '<PlcMissionCommand>"
  "twinny_msgs/PlcMissionCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlcMissionCommand)))
  "Returns string type for a message object of type 'PlcMissionCommand"
  "twinny_msgs/PlcMissionCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlcMissionCommand>)))
  "Returns md5sum for a message object of type '<PlcMissionCommand>"
  "ae536fdf7906e3e3d378a48156bbe28d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlcMissionCommand)))
  "Returns md5sum for a message object of type 'PlcMissionCommand"
  "ae536fdf7906e3e3d378a48156bbe28d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlcMissionCommand>)))
  "Returns full string definition for message of type '<PlcMissionCommand>"
  (cl:format cl:nil "Header header~%~%uint8 mission_mode~%~%uint8 NO_COMMAND = 0~%uint8 LOAD = 1~%uint8 UNLOAD = 2~%uint8 BATTERY_CHANGE = 3~%uint8 PLC_RESET = 4~%~%string workspace~%string magazine_id~%~%uint8 workspace_direction~%~%uint8 LEFT = 1~%uint8 RIGHT = 2~%~%uint16 in_out_num~%~%bool arm_move_flag~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlcMissionCommand)))
  "Returns full string definition for message of type 'PlcMissionCommand"
  (cl:format cl:nil "Header header~%~%uint8 mission_mode~%~%uint8 NO_COMMAND = 0~%uint8 LOAD = 1~%uint8 UNLOAD = 2~%uint8 BATTERY_CHANGE = 3~%uint8 PLC_RESET = 4~%~%string workspace~%string magazine_id~%~%uint8 workspace_direction~%~%uint8 LEFT = 1~%uint8 RIGHT = 2~%~%uint16 in_out_num~%~%bool arm_move_flag~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlcMissionCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'workspace))
     4 (cl:length (cl:slot-value msg 'magazine_id))
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlcMissionCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'PlcMissionCommand
    (cl:cons ':header (header msg))
    (cl:cons ':mission_mode (mission_mode msg))
    (cl:cons ':workspace (workspace msg))
    (cl:cons ':magazine_id (magazine_id msg))
    (cl:cons ':workspace_direction (workspace_direction msg))
    (cl:cons ':in_out_num (in_out_num msg))
    (cl:cons ':arm_move_flag (arm_move_flag msg))
))
