;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::ConveyorCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'ConveyorCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::CONVEYORCOMMAND")
  (make-package "TWINNY_MSGS::CONVEYORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ConveyorCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CONVEYOR_CTRL_REVERSE*" (find-package "TWINNY_MSGS::CONVEYORCOMMAND"))
(shadow '*CONVEYOR_CTRL_REVERSE* (find-package "TWINNY_MSGS::CONVEYORCOMMAND"))
(defconstant twinny_msgs::ConveyorCommand::*CONVEYOR_CTRL_REVERSE* -1)
(intern "*CONVEYOR_CTRL_STOP*" (find-package "TWINNY_MSGS::CONVEYORCOMMAND"))
(shadow '*CONVEYOR_CTRL_STOP* (find-package "TWINNY_MSGS::CONVEYORCOMMAND"))
(defconstant twinny_msgs::ConveyorCommand::*CONVEYOR_CTRL_STOP* 0)
(intern "*CONVEYOR_CTRL_FORWARD*" (find-package "TWINNY_MSGS::CONVEYORCOMMAND"))
(shadow '*CONVEYOR_CTRL_FORWARD* (find-package "TWINNY_MSGS::CONVEYORCOMMAND"))
(defconstant twinny_msgs::ConveyorCommand::*CONVEYOR_CTRL_FORWARD* 1)
(defclass twinny_msgs::ConveyorCommand
  :super ros::object
  :slots (_header _type _conveyor1_control _conveyor2_control _door_open_control _fall_prevention_device_control ))

(defmethod twinny_msgs::ConveyorCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:conveyor1_control __conveyor1_control) 0)
    ((:conveyor2_control __conveyor2_control) 0)
    ((:door_open_control __door_open_control) nil)
    ((:fall_prevention_device_control __fall_prevention_device_control) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _conveyor1_control (round __conveyor1_control))
   (setq _conveyor2_control (round __conveyor2_control))
   (setq _door_open_control __door_open_control)
   (setq _fall_prevention_device_control __fall_prevention_device_control)
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
  (:conveyor1_control
   (&optional __conveyor1_control)
   (if __conveyor1_control (setq _conveyor1_control __conveyor1_control)) _conveyor1_control)
  (:conveyor2_control
   (&optional __conveyor2_control)
   (if __conveyor2_control (setq _conveyor2_control __conveyor2_control)) _conveyor2_control)
  (:door_open_control
   (&optional __door_open_control)
   (if __door_open_control (setq _door_open_control __door_open_control)) _door_open_control)
  (:fall_prevention_device_control
   (&optional __fall_prevention_device_control)
   (if __fall_prevention_device_control (setq _fall_prevention_device_control __fall_prevention_device_control)) _fall_prevention_device_control)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; int8 _conveyor1_control
    1
    ;; int8 _conveyor2_control
    1
    ;; bool _door_open_control
    1
    ;; bool _fall_prevention_device_control
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
     ;; int8 _conveyor1_control
       (write-byte _conveyor1_control s)
     ;; int8 _conveyor2_control
       (write-byte _conveyor2_control s)
     ;; bool _door_open_control
       (if _door_open_control (write-byte -1 s) (write-byte 0 s))
     ;; bool _fall_prevention_device_control
       (if _fall_prevention_device_control (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _conveyor1_control
     (setq _conveyor1_control (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _conveyor1_control 127) (setq _conveyor1_control (- _conveyor1_control 256)))
   ;; int8 _conveyor2_control
     (setq _conveyor2_control (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _conveyor2_control 127) (setq _conveyor2_control (- _conveyor2_control 256)))
   ;; bool _door_open_control
     (setq _door_open_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fall_prevention_device_control
     (setq _fall_prevention_device_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::ConveyorCommand :md5sum-) "0a14a0f1bac068f9cdcfcbcb626cbfca")
(setf (get twinny_msgs::ConveyorCommand :datatype-) "twinny_msgs/ConveyorCommand")
(setf (get twinny_msgs::ConveyorCommand :definition-)
      "Header header
string type

int8 CONVEYOR_CTRL_REVERSE = -1
int8 CONVEYOR_CTRL_STOP    = 0
int8 CONVEYOR_CTRL_FORWARD = 1

int8 conveyor1_control
int8 conveyor2_control

bool door_open_control

bool fall_prevention_device_control

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



(provide :twinny_msgs/ConveyorCommand "0a14a0f1bac068f9cdcfcbcb626cbfca")


