;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::TurnSignalCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'TurnSignalCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND")
  (make-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TurnSignalCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OFF*" (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(shadow '*OFF* (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(defconstant twinny_msgs::TurnSignalCommand::*OFF* 0)
(intern "*TURN_LEFT*" (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(shadow '*TURN_LEFT* (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(defconstant twinny_msgs::TurnSignalCommand::*TURN_LEFT* 1)
(intern "*TURN_RIGHT*" (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(shadow '*TURN_RIGHT* (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(defconstant twinny_msgs::TurnSignalCommand::*TURN_RIGHT* 2)
(intern "*ALL*" (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(shadow '*ALL* (find-package "TWINNY_MSGS::TURNSIGNALCOMMAND"))
(defconstant twinny_msgs::TurnSignalCommand::*ALL* 3)
(defclass twinny_msgs::TurnSignalCommand
  :super ros::object
  :slots (_header _Command ))

(defmethod twinny_msgs::TurnSignalCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Command __Command) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Command (round __Command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Command
   (&optional __Command)
   (if __Command (setq _Command __Command)) _Command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _Command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _Command
       (write-byte _Command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _Command
     (setq _Command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::TurnSignalCommand :md5sum-) "7a90b548f2d6c123772559249a5f53f5")
(setf (get twinny_msgs::TurnSignalCommand :datatype-) "twinny_msgs/TurnSignalCommand")
(setf (get twinny_msgs::TurnSignalCommand :definition-)
      "Header header  

uint8 Command

uint8 OFF=0
uint8 TURN_LEFT=1
uint8 TURN_RIGHT=2
uint8 ALL=3
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



(provide :twinny_msgs/TurnSignalCommand "7a90b548f2d6c123772559249a5f53f5")


