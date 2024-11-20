;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PowerSavingMode)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PowerSavingMode (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::POWERSAVINGMODE")
  (make-package "TWINNY_MSGS::POWERSAVINGMODE"))

(in-package "ROS")
;;//! \htmlinclude PowerSavingMode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*POWER_SAVING_OFF*" (find-package "TWINNY_MSGS::POWERSAVINGMODE"))
(shadow '*POWER_SAVING_OFF* (find-package "TWINNY_MSGS::POWERSAVINGMODE"))
(defconstant twinny_msgs::PowerSavingMode::*POWER_SAVING_OFF* 0)
(intern "*POWER_SAVING_ON*" (find-package "TWINNY_MSGS::POWERSAVINGMODE"))
(shadow '*POWER_SAVING_ON* (find-package "TWINNY_MSGS::POWERSAVINGMODE"))
(defconstant twinny_msgs::PowerSavingMode::*POWER_SAVING_ON* 1)
(defclass twinny_msgs::PowerSavingMode
  :super ros::object
  :slots (_header _Power_saving_mode_command ))

(defmethod twinny_msgs::PowerSavingMode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Power_saving_mode_command __Power_saving_mode_command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Power_saving_mode_command (round __Power_saving_mode_command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Power_saving_mode_command
   (&optional __Power_saving_mode_command)
   (if __Power_saving_mode_command (setq _Power_saving_mode_command __Power_saving_mode_command)) _Power_saving_mode_command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _Power_saving_mode_command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _Power_saving_mode_command
       (write-byte _Power_saving_mode_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _Power_saving_mode_command
     (setq _Power_saving_mode_command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::PowerSavingMode :md5sum-) "f0af11356e58cb52bb82c9160d6eec4c")
(setf (get twinny_msgs::PowerSavingMode :datatype-) "twinny_msgs/PowerSavingMode")
(setf (get twinny_msgs::PowerSavingMode :definition-)
      "Header header

uint8 POWER_SAVING_OFF = 0
uint8 POWER_SAVING_ON = 1
uint8 Power_saving_mode_command
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



(provide :twinny_msgs/PowerSavingMode "f0af11356e58cb52bb82c9160d6eec4c")


