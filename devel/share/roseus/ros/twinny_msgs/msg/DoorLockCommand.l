;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::DoorLockCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'DoorLockCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::DOORLOCKCOMMAND")
  (make-package "TWINNY_MSGS::DOORLOCKCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DoorLockCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DOOR_CMD_STOP*" (find-package "TWINNY_MSGS::DOORLOCKCOMMAND"))
(shadow '*DOOR_CMD_STOP* (find-package "TWINNY_MSGS::DOORLOCKCOMMAND"))
(defconstant twinny_msgs::DoorLockCommand::*DOOR_CMD_STOP* 0)
(intern "*DOOR_CMD_LOCK*" (find-package "TWINNY_MSGS::DOORLOCKCOMMAND"))
(shadow '*DOOR_CMD_LOCK* (find-package "TWINNY_MSGS::DOORLOCKCOMMAND"))
(defconstant twinny_msgs::DoorLockCommand::*DOOR_CMD_LOCK* 1)
(intern "*DOOR_CMD_UNLOCK*" (find-package "TWINNY_MSGS::DOORLOCKCOMMAND"))
(shadow '*DOOR_CMD_UNLOCK* (find-package "TWINNY_MSGS::DOORLOCKCOMMAND"))
(defconstant twinny_msgs::DoorLockCommand::*DOOR_CMD_UNLOCK* 2)
(defclass twinny_msgs::DoorLockCommand
  :super ros::object
  :slots (_header _type _door_lock_id _command ))

(defmethod twinny_msgs::DoorLockCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:door_lock_id __door_lock_id) 0)
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _door_lock_id (round __door_lock_id))
   (setq _command (round __command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:door_lock_id
   (&optional __door_lock_id)
   (if __door_lock_id (setq _door_lock_id __door_lock_id)) _door_lock_id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint32 _door_lock_id
    4
    ;; int32 _command
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint32 _door_lock_id
       (write-long _door_lock_id s)
     ;; int32 _command
       (write-long _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _door_lock_id
     (setq _door_lock_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get twinny_msgs::DoorLockCommand :md5sum-) "0249947cc5df2af2748f832bc2c85cba")
(setf (get twinny_msgs::DoorLockCommand :datatype-) "twinny_msgs/DoorLockCommand")
(setf (get twinny_msgs::DoorLockCommand :definition-)
      "Header header
string type

uint32 door_lock_id

int32 DOOR_CMD_STOP=0
int32 DOOR_CMD_LOCK=1
int32 DOOR_CMD_UNLOCK=2

int32 command

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :twinny_msgs/DoorLockCommand "0249947cc5df2af2748f832bc2c85cba")


