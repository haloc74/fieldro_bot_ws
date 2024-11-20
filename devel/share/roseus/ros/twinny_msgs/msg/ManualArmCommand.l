;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::ManualArmCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'ManualArmCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MANUALARMCOMMAND")
  (make-package "TWINNY_MSGS::MANUALARMCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ManualArmCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NO_COMMAND*" (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(shadow '*NO_COMMAND* (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(defconstant twinny_msgs::ManualArmCommand::*NO_COMMAND* 0)
(intern "*FORWARD*" (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(shadow '*FORWARD* (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(defconstant twinny_msgs::ManualArmCommand::*FORWARD* 1)
(intern "*BACKWARD*" (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(shadow '*BACKWARD* (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(defconstant twinny_msgs::ManualArmCommand::*BACKWARD* 2)
(intern "*MAGAZINE_UNLOCK*" (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(shadow '*MAGAZINE_UNLOCK* (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(defconstant twinny_msgs::ManualArmCommand::*MAGAZINE_UNLOCK* 1)
(intern "*MAGAZINE_LOCK*" (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(shadow '*MAGAZINE_LOCK* (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(defconstant twinny_msgs::ManualArmCommand::*MAGAZINE_LOCK* 2)
(intern "*CYLINDER_UP*" (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(shadow '*CYLINDER_UP* (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(defconstant twinny_msgs::ManualArmCommand::*CYLINDER_UP* 1)
(intern "*CYLINDER_DOWN*" (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(shadow '*CYLINDER_DOWN* (find-package "TWINNY_MSGS::MANUALARMCOMMAND"))
(defconstant twinny_msgs::ManualArmCommand::*CYLINDER_DOWN* 2)
(defclass twinny_msgs::ManualArmCommand
  :super ros::object
  :slots (_header _hand_grip_forward_backward _cylinder_forward_backward _battery_cylinder_forward_backward _magazine01_lock _magazine02_lock _cylinder_up_down ))

(defmethod twinny_msgs::ManualArmCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hand_grip_forward_backward __hand_grip_forward_backward) 0)
    ((:cylinder_forward_backward __cylinder_forward_backward) 0)
    ((:battery_cylinder_forward_backward __battery_cylinder_forward_backward) 0)
    ((:magazine01_lock __magazine01_lock) 0)
    ((:magazine02_lock __magazine02_lock) 0)
    ((:cylinder_up_down __cylinder_up_down) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _hand_grip_forward_backward (round __hand_grip_forward_backward))
   (setq _cylinder_forward_backward (round __cylinder_forward_backward))
   (setq _battery_cylinder_forward_backward (round __battery_cylinder_forward_backward))
   (setq _magazine01_lock (round __magazine01_lock))
   (setq _magazine02_lock (round __magazine02_lock))
   (setq _cylinder_up_down (round __cylinder_up_down))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hand_grip_forward_backward
   (&optional __hand_grip_forward_backward)
   (if __hand_grip_forward_backward (setq _hand_grip_forward_backward __hand_grip_forward_backward)) _hand_grip_forward_backward)
  (:cylinder_forward_backward
   (&optional __cylinder_forward_backward)
   (if __cylinder_forward_backward (setq _cylinder_forward_backward __cylinder_forward_backward)) _cylinder_forward_backward)
  (:battery_cylinder_forward_backward
   (&optional __battery_cylinder_forward_backward)
   (if __battery_cylinder_forward_backward (setq _battery_cylinder_forward_backward __battery_cylinder_forward_backward)) _battery_cylinder_forward_backward)
  (:magazine01_lock
   (&optional __magazine01_lock)
   (if __magazine01_lock (setq _magazine01_lock __magazine01_lock)) _magazine01_lock)
  (:magazine02_lock
   (&optional __magazine02_lock)
   (if __magazine02_lock (setq _magazine02_lock __magazine02_lock)) _magazine02_lock)
  (:cylinder_up_down
   (&optional __cylinder_up_down)
   (if __cylinder_up_down (setq _cylinder_up_down __cylinder_up_down)) _cylinder_up_down)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _hand_grip_forward_backward
    1
    ;; uint8 _cylinder_forward_backward
    1
    ;; uint8 _battery_cylinder_forward_backward
    1
    ;; uint8 _magazine01_lock
    1
    ;; uint8 _magazine02_lock
    1
    ;; uint8 _cylinder_up_down
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _hand_grip_forward_backward
       (write-byte _hand_grip_forward_backward s)
     ;; uint8 _cylinder_forward_backward
       (write-byte _cylinder_forward_backward s)
     ;; uint8 _battery_cylinder_forward_backward
       (write-byte _battery_cylinder_forward_backward s)
     ;; uint8 _magazine01_lock
       (write-byte _magazine01_lock s)
     ;; uint8 _magazine02_lock
       (write-byte _magazine02_lock s)
     ;; uint8 _cylinder_up_down
       (write-byte _cylinder_up_down s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _hand_grip_forward_backward
     (setq _hand_grip_forward_backward (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cylinder_forward_backward
     (setq _cylinder_forward_backward (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _battery_cylinder_forward_backward
     (setq _battery_cylinder_forward_backward (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magazine01_lock
     (setq _magazine01_lock (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magazine02_lock
     (setq _magazine02_lock (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cylinder_up_down
     (setq _cylinder_up_down (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::ManualArmCommand :md5sum-) "8da8f6f4c09538ece1a14440b85a65a2")
(setf (get twinny_msgs::ManualArmCommand :datatype-) "twinny_msgs/ManualArmCommand")
(setf (get twinny_msgs::ManualArmCommand :definition-)
      "Header header

uint8 NO_COMMAND = 0

uint8 FORWARD = 1
uint8 BACKWARD = 2

uint8 hand_grip_forward_backward
uint8 cylinder_forward_backward
uint8 battery_cylinder_forward_backward

uint8 MAGAZINE_UNLOCK = 1
uint8 MAGAZINE_LOCK = 2

uint8 magazine01_lock
uint8 magazine02_lock

uint8 CYLINDER_UP = 1
uint8 CYLINDER_DOWN = 2

uint8 cylinder_up_down
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



(provide :twinny_msgs/ManualArmCommand "8da8f6f4c09538ece1a14440b85a65a2")


