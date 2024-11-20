;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SafetyBoardReset)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SafetyBoardReset (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SAFETYBOARDRESET")
  (make-package "TWINNY_MSGS::SAFETYBOARDRESET"))

(in-package "ROS")
;;//! \htmlinclude SafetyBoardReset.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*RESET_COMMAND_NO*" (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(shadow '*RESET_COMMAND_NO* (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(defconstant twinny_msgs::SafetyBoardReset::*RESET_COMMAND_NO* 0)
(intern "*RESET_COMMAND_MASTER_MCU*" (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(shadow '*RESET_COMMAND_MASTER_MCU* (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(defconstant twinny_msgs::SafetyBoardReset::*RESET_COMMAND_MASTER_MCU* 1)
(intern "*RESET_COMMAND_SLAVE_MCU*" (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(shadow '*RESET_COMMAND_SLAVE_MCU* (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(defconstant twinny_msgs::SafetyBoardReset::*RESET_COMMAND_SLAVE_MCU* 2)
(intern "*RESET_COMMAND_ALL_MCU*" (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(shadow '*RESET_COMMAND_ALL_MCU* (find-package "TWINNY_MSGS::SAFETYBOARDRESET"))
(defconstant twinny_msgs::SafetyBoardReset::*RESET_COMMAND_ALL_MCU* 3)
(defclass twinny_msgs::SafetyBoardReset
  :super ros::object
  :slots (_header _command ))

(defmethod twinny_msgs::SafetyBoardReset
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _command (round __command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::SafetyBoardReset :md5sum-) "921eefced639d2eca074a0905654b7c4")
(setf (get twinny_msgs::SafetyBoardReset :datatype-) "twinny_msgs/SafetyBoardReset")
(setf (get twinny_msgs::SafetyBoardReset :definition-)
      "Header header

uint8 RESET_COMMAND_NO=0
uint8 RESET_COMMAND_MASTER_MCU=1
uint8 RESET_COMMAND_SLAVE_MCU=2
uint8 RESET_COMMAND_ALL_MCU=3

uint8 command
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



(provide :twinny_msgs/SafetyBoardReset "921eefced639d2eca074a0905654b7c4")


