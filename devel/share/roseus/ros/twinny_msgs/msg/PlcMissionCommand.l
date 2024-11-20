;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PlcMissionCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PlcMissionCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND")
  (make-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude PlcMissionCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NO_COMMAND*" (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(shadow '*NO_COMMAND* (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(defconstant twinny_msgs::PlcMissionCommand::*NO_COMMAND* 0)
(intern "*LOAD*" (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(shadow '*LOAD* (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(defconstant twinny_msgs::PlcMissionCommand::*LOAD* 1)
(intern "*UNLOAD*" (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(shadow '*UNLOAD* (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(defconstant twinny_msgs::PlcMissionCommand::*UNLOAD* 2)
(intern "*BATTERY_CHANGE*" (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(shadow '*BATTERY_CHANGE* (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(defconstant twinny_msgs::PlcMissionCommand::*BATTERY_CHANGE* 3)
(intern "*PLC_RESET*" (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(shadow '*PLC_RESET* (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(defconstant twinny_msgs::PlcMissionCommand::*PLC_RESET* 4)
(intern "*LEFT*" (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(shadow '*LEFT* (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(defconstant twinny_msgs::PlcMissionCommand::*LEFT* 1)
(intern "*RIGHT*" (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(shadow '*RIGHT* (find-package "TWINNY_MSGS::PLCMISSIONCOMMAND"))
(defconstant twinny_msgs::PlcMissionCommand::*RIGHT* 2)
(defclass twinny_msgs::PlcMissionCommand
  :super ros::object
  :slots (_header _mission_mode _workspace _magazine_id _workspace_direction _in_out_num _arm_move_flag ))

(defmethod twinny_msgs::PlcMissionCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mission_mode __mission_mode) 0)
    ((:workspace __workspace) "")
    ((:magazine_id __magazine_id) "")
    ((:workspace_direction __workspace_direction) 0)
    ((:in_out_num __in_out_num) 0)
    ((:arm_move_flag __arm_move_flag) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mission_mode (round __mission_mode))
   (setq _workspace (string __workspace))
   (setq _magazine_id (string __magazine_id))
   (setq _workspace_direction (round __workspace_direction))
   (setq _in_out_num (round __in_out_num))
   (setq _arm_move_flag __arm_move_flag)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mission_mode
   (&optional __mission_mode)
   (if __mission_mode (setq _mission_mode __mission_mode)) _mission_mode)
  (:workspace
   (&optional __workspace)
   (if __workspace (setq _workspace __workspace)) _workspace)
  (:magazine_id
   (&optional __magazine_id)
   (if __magazine_id (setq _magazine_id __magazine_id)) _magazine_id)
  (:workspace_direction
   (&optional __workspace_direction)
   (if __workspace_direction (setq _workspace_direction __workspace_direction)) _workspace_direction)
  (:in_out_num
   (&optional __in_out_num)
   (if __in_out_num (setq _in_out_num __in_out_num)) _in_out_num)
  (:arm_move_flag
   (&optional __arm_move_flag)
   (if __arm_move_flag (setq _arm_move_flag __arm_move_flag)) _arm_move_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mission_mode
    1
    ;; string _workspace
    4 (length _workspace)
    ;; string _magazine_id
    4 (length _magazine_id)
    ;; uint8 _workspace_direction
    1
    ;; uint16 _in_out_num
    2
    ;; bool _arm_move_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mission_mode
       (write-byte _mission_mode s)
     ;; string _workspace
       (write-long (length _workspace) s) (princ _workspace s)
     ;; string _magazine_id
       (write-long (length _magazine_id) s) (princ _magazine_id s)
     ;; uint8 _workspace_direction
       (write-byte _workspace_direction s)
     ;; uint16 _in_out_num
       (write-word _in_out_num s)
     ;; bool _arm_move_flag
       (if _arm_move_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mission_mode
     (setq _mission_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _workspace
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _workspace (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _magazine_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _magazine_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _workspace_direction
     (setq _workspace_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _in_out_num
     (setq _in_out_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _arm_move_flag
     (setq _arm_move_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::PlcMissionCommand :md5sum-) "ae536fdf7906e3e3d378a48156bbe28d")
(setf (get twinny_msgs::PlcMissionCommand :datatype-) "twinny_msgs/PlcMissionCommand")
(setf (get twinny_msgs::PlcMissionCommand :definition-)
      "Header header

uint8 mission_mode

uint8 NO_COMMAND = 0
uint8 LOAD = 1
uint8 UNLOAD = 2
uint8 BATTERY_CHANGE = 3
uint8 PLC_RESET = 4

string workspace
string magazine_id

uint8 workspace_direction

uint8 LEFT = 1
uint8 RIGHT = 2

uint16 in_out_num

bool arm_move_flag
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



(provide :twinny_msgs/PlcMissionCommand "ae536fdf7906e3e3d378a48156bbe28d")


