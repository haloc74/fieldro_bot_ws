;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::ManualArmReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'ManualArmReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MANUALARMREPORT")
  (make-package "TWINNY_MSGS::MANUALARMREPORT"))

(in-package "ROS")
;;//! \htmlinclude ManualArmReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NOT_COMPLETE*" (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(shadow '*NOT_COMPLETE* (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(defconstant twinny_msgs::ManualArmReport::*NOT_COMPLETE* 0)
(intern "*FORWARD_COMPLETE*" (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(shadow '*FORWARD_COMPLETE* (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(defconstant twinny_msgs::ManualArmReport::*FORWARD_COMPLETE* 1)
(intern "*BACKWARD_COMPLETE*" (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(shadow '*BACKWARD_COMPLETE* (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(defconstant twinny_msgs::ManualArmReport::*BACKWARD_COMPLETE* 2)
(intern "*LOCK_COMPLETE*" (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(shadow '*LOCK_COMPLETE* (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(defconstant twinny_msgs::ManualArmReport::*LOCK_COMPLETE* 1)
(intern "*UNLOCK_COMPLETE*" (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(shadow '*UNLOCK_COMPLETE* (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(defconstant twinny_msgs::ManualArmReport::*UNLOCK_COMPLETE* 2)
(intern "*UP_COMPLETE*" (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(shadow '*UP_COMPLETE* (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(defconstant twinny_msgs::ManualArmReport::*UP_COMPLETE* 1)
(intern "*DOWN_COMPLETE*" (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(shadow '*DOWN_COMPLETE* (find-package "TWINNY_MSGS::MANUALARMREPORT"))
(defconstant twinny_msgs::ManualArmReport::*DOWN_COMPLETE* 2)
(defclass twinny_msgs::ManualArmReport
  :super ros::object
  :slots (_header _hand_grip_forward_backward_report _cylinder_forward_backward_report _battery_cylinder_forward_backward_report _magazine01_lock_unlock_report _magazine02_lock_unlock_report _cylinder_up_down_report ))

(defmethod twinny_msgs::ManualArmReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hand_grip_forward_backward_report __hand_grip_forward_backward_report) 0)
    ((:cylinder_forward_backward_report __cylinder_forward_backward_report) 0)
    ((:battery_cylinder_forward_backward_report __battery_cylinder_forward_backward_report) 0)
    ((:magazine01_lock_unlock_report __magazine01_lock_unlock_report) 0)
    ((:magazine02_lock_unlock_report __magazine02_lock_unlock_report) 0)
    ((:cylinder_up_down_report __cylinder_up_down_report) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _hand_grip_forward_backward_report (round __hand_grip_forward_backward_report))
   (setq _cylinder_forward_backward_report (round __cylinder_forward_backward_report))
   (setq _battery_cylinder_forward_backward_report (round __battery_cylinder_forward_backward_report))
   (setq _magazine01_lock_unlock_report (round __magazine01_lock_unlock_report))
   (setq _magazine02_lock_unlock_report (round __magazine02_lock_unlock_report))
   (setq _cylinder_up_down_report (round __cylinder_up_down_report))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hand_grip_forward_backward_report
   (&optional __hand_grip_forward_backward_report)
   (if __hand_grip_forward_backward_report (setq _hand_grip_forward_backward_report __hand_grip_forward_backward_report)) _hand_grip_forward_backward_report)
  (:cylinder_forward_backward_report
   (&optional __cylinder_forward_backward_report)
   (if __cylinder_forward_backward_report (setq _cylinder_forward_backward_report __cylinder_forward_backward_report)) _cylinder_forward_backward_report)
  (:battery_cylinder_forward_backward_report
   (&optional __battery_cylinder_forward_backward_report)
   (if __battery_cylinder_forward_backward_report (setq _battery_cylinder_forward_backward_report __battery_cylinder_forward_backward_report)) _battery_cylinder_forward_backward_report)
  (:magazine01_lock_unlock_report
   (&optional __magazine01_lock_unlock_report)
   (if __magazine01_lock_unlock_report (setq _magazine01_lock_unlock_report __magazine01_lock_unlock_report)) _magazine01_lock_unlock_report)
  (:magazine02_lock_unlock_report
   (&optional __magazine02_lock_unlock_report)
   (if __magazine02_lock_unlock_report (setq _magazine02_lock_unlock_report __magazine02_lock_unlock_report)) _magazine02_lock_unlock_report)
  (:cylinder_up_down_report
   (&optional __cylinder_up_down_report)
   (if __cylinder_up_down_report (setq _cylinder_up_down_report __cylinder_up_down_report)) _cylinder_up_down_report)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _hand_grip_forward_backward_report
    1
    ;; uint8 _cylinder_forward_backward_report
    1
    ;; uint8 _battery_cylinder_forward_backward_report
    1
    ;; uint8 _magazine01_lock_unlock_report
    1
    ;; uint8 _magazine02_lock_unlock_report
    1
    ;; uint8 _cylinder_up_down_report
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _hand_grip_forward_backward_report
       (write-byte _hand_grip_forward_backward_report s)
     ;; uint8 _cylinder_forward_backward_report
       (write-byte _cylinder_forward_backward_report s)
     ;; uint8 _battery_cylinder_forward_backward_report
       (write-byte _battery_cylinder_forward_backward_report s)
     ;; uint8 _magazine01_lock_unlock_report
       (write-byte _magazine01_lock_unlock_report s)
     ;; uint8 _magazine02_lock_unlock_report
       (write-byte _magazine02_lock_unlock_report s)
     ;; uint8 _cylinder_up_down_report
       (write-byte _cylinder_up_down_report s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _hand_grip_forward_backward_report
     (setq _hand_grip_forward_backward_report (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cylinder_forward_backward_report
     (setq _cylinder_forward_backward_report (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _battery_cylinder_forward_backward_report
     (setq _battery_cylinder_forward_backward_report (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magazine01_lock_unlock_report
     (setq _magazine01_lock_unlock_report (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _magazine02_lock_unlock_report
     (setq _magazine02_lock_unlock_report (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cylinder_up_down_report
     (setq _cylinder_up_down_report (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::ManualArmReport :md5sum-) "10bf00d36649a07410532bfaed58534a")
(setf (get twinny_msgs::ManualArmReport :datatype-) "twinny_msgs/ManualArmReport")
(setf (get twinny_msgs::ManualArmReport :definition-)
      "Header header

uint8 NOT_COMPLETE = 0

uint8 FORWARD_COMPLETE = 1
uint8 BACKWARD_COMPLETE = 2

uint8 hand_grip_forward_backward_report
uint8 cylinder_forward_backward_report
uint8 battery_cylinder_forward_backward_report

uint8 LOCK_COMPLETE = 1
uint8 UNLOCK_COMPLETE = 2

uint8 magazine01_lock_unlock_report
uint8 magazine02_lock_unlock_report

uint8 UP_COMPLETE = 1
uint8 DOWN_COMPLETE = 2

uint8 cylinder_up_down_report
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



(provide :twinny_msgs/ManualArmReport "10bf00d36649a07410532bfaed58534a")


