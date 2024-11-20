;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::DoorLockReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'DoorLockReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::DOORLOCKREPORT")
  (make-package "TWINNY_MSGS::DOORLOCKREPORT"))

(in-package "ROS")
;;//! \htmlinclude DoorLockReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DOOR_REPORT_STOP*" (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(shadow '*DOOR_REPORT_STOP* (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(defconstant twinny_msgs::DoorLockReport::*DOOR_REPORT_STOP* 0)
(intern "*DOOR_REPORT_LOCK*" (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(shadow '*DOOR_REPORT_LOCK* (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(defconstant twinny_msgs::DoorLockReport::*DOOR_REPORT_LOCK* 1)
(intern "*DOOR_REPORT_LOCKING*" (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(shadow '*DOOR_REPORT_LOCKING* (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(defconstant twinny_msgs::DoorLockReport::*DOOR_REPORT_LOCKING* 2)
(intern "*DOOR_REPORT_UNLOCK*" (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(shadow '*DOOR_REPORT_UNLOCK* (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(defconstant twinny_msgs::DoorLockReport::*DOOR_REPORT_UNLOCK* 3)
(intern "*DOOR_REPORT_UNLOCKING*" (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(shadow '*DOOR_REPORT_UNLOCKING* (find-package "TWINNY_MSGS::DOORLOCKREPORT"))
(defconstant twinny_msgs::DoorLockReport::*DOOR_REPORT_UNLOCKING* 4)
(defclass twinny_msgs::DoorLockReport
  :super ros::object
  :slots (_header _type _door_lock_id _door_lock_state _door_open_state ))

(defmethod twinny_msgs::DoorLockReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:door_lock_id __door_lock_id) 0)
    ((:door_lock_state __door_lock_state) 0)
    ((:door_open_state __door_open_state) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _door_lock_id (round __door_lock_id))
   (setq _door_lock_state (round __door_lock_state))
   (setq _door_open_state __door_open_state)
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
  (:door_lock_state
   (&optional __door_lock_state)
   (if __door_lock_state (setq _door_lock_state __door_lock_state)) _door_lock_state)
  (:door_open_state
   (&optional __door_open_state)
   (if __door_open_state (setq _door_open_state __door_open_state)) _door_open_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint32 _door_lock_id
    4
    ;; int32 _door_lock_state
    4
    ;; bool _door_open_state
    1
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
     ;; int32 _door_lock_state
       (write-long _door_lock_state s)
     ;; bool _door_open_state
       (if _door_open_state (write-byte -1 s) (write-byte 0 s))
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
   ;; int32 _door_lock_state
     (setq _door_lock_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _door_open_state
     (setq _door_open_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::DoorLockReport :md5sum-) "de2acf7851fcb667067d0326218a4ca1")
(setf (get twinny_msgs::DoorLockReport :datatype-) "twinny_msgs/DoorLockReport")
(setf (get twinny_msgs::DoorLockReport :definition-)
      "Header header
string type

uint32 door_lock_id

int32 DOOR_REPORT_STOP=0
int32 DOOR_REPORT_LOCK=1
int32 DOOR_REPORT_LOCKING=2
int32 DOOR_REPORT_UNLOCK=3
int32 DOOR_REPORT_UNLOCKING=4

int32 door_lock_state
bool door_open_state

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



(provide :twinny_msgs/DoorLockReport "de2acf7851fcb667067d0326218a4ca1")


