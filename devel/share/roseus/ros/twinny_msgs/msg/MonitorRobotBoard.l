;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorRobotBoard)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorRobotBoard (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORROBOTBOARD")
  (make-package "TWINNY_MSGS::MONITORROBOTBOARD"))

(in-package "ROS")
;;//! \htmlinclude MonitorRobotBoard.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MonitorRobotBoard
  :super ros::object
  :slots (_header _Mode _motorErrorIndex _pc_to_mcu_heartbeat_hz _pc_to_mcu_heartbeat_error _motor_to_mcu_heartbeat_error _can_error _lin_error ))

(defmethod twinny_msgs::MonitorRobotBoard
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Mode __Mode) "")
    ((:motorErrorIndex __motorErrorIndex) 0)
    ((:pc_to_mcu_heartbeat_hz __pc_to_mcu_heartbeat_hz) 0)
    ((:pc_to_mcu_heartbeat_error __pc_to_mcu_heartbeat_error) nil)
    ((:motor_to_mcu_heartbeat_error __motor_to_mcu_heartbeat_error) nil)
    ((:can_error __can_error) nil)
    ((:lin_error __lin_error) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Mode (string __Mode))
   (setq _motorErrorIndex (round __motorErrorIndex))
   (setq _pc_to_mcu_heartbeat_hz (round __pc_to_mcu_heartbeat_hz))
   (setq _pc_to_mcu_heartbeat_error __pc_to_mcu_heartbeat_error)
   (setq _motor_to_mcu_heartbeat_error __motor_to_mcu_heartbeat_error)
   (setq _can_error __can_error)
   (setq _lin_error __lin_error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Mode
   (&optional __Mode)
   (if __Mode (setq _Mode __Mode)) _Mode)
  (:motorErrorIndex
   (&optional __motorErrorIndex)
   (if __motorErrorIndex (setq _motorErrorIndex __motorErrorIndex)) _motorErrorIndex)
  (:pc_to_mcu_heartbeat_hz
   (&optional __pc_to_mcu_heartbeat_hz)
   (if __pc_to_mcu_heartbeat_hz (setq _pc_to_mcu_heartbeat_hz __pc_to_mcu_heartbeat_hz)) _pc_to_mcu_heartbeat_hz)
  (:pc_to_mcu_heartbeat_error
   (&optional __pc_to_mcu_heartbeat_error)
   (if __pc_to_mcu_heartbeat_error (setq _pc_to_mcu_heartbeat_error __pc_to_mcu_heartbeat_error)) _pc_to_mcu_heartbeat_error)
  (:motor_to_mcu_heartbeat_error
   (&optional __motor_to_mcu_heartbeat_error)
   (if __motor_to_mcu_heartbeat_error (setq _motor_to_mcu_heartbeat_error __motor_to_mcu_heartbeat_error)) _motor_to_mcu_heartbeat_error)
  (:can_error
   (&optional __can_error)
   (if __can_error (setq _can_error __can_error)) _can_error)
  (:lin_error
   (&optional __lin_error)
   (if __lin_error (setq _lin_error __lin_error)) _lin_error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _Mode
    4 (length _Mode)
    ;; uint8 _motorErrorIndex
    1
    ;; uint8 _pc_to_mcu_heartbeat_hz
    1
    ;; bool _pc_to_mcu_heartbeat_error
    1
    ;; bool _motor_to_mcu_heartbeat_error
    1
    ;; bool _can_error
    1
    ;; bool _lin_error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _Mode
       (write-long (length _Mode) s) (princ _Mode s)
     ;; uint8 _motorErrorIndex
       (write-byte _motorErrorIndex s)
     ;; uint8 _pc_to_mcu_heartbeat_hz
       (write-byte _pc_to_mcu_heartbeat_hz s)
     ;; bool _pc_to_mcu_heartbeat_error
       (if _pc_to_mcu_heartbeat_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_to_mcu_heartbeat_error
       (if _motor_to_mcu_heartbeat_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_error
       (if _can_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _lin_error
       (if _lin_error (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _Mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _motorErrorIndex
     (setq _motorErrorIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pc_to_mcu_heartbeat_hz
     (setq _pc_to_mcu_heartbeat_hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _pc_to_mcu_heartbeat_error
     (setq _pc_to_mcu_heartbeat_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_to_mcu_heartbeat_error
     (setq _motor_to_mcu_heartbeat_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_error
     (setq _can_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lin_error
     (setq _lin_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorRobotBoard :md5sum-) "feeef21295281612a29bf518f366cb43")
(setf (get twinny_msgs::MonitorRobotBoard :datatype-) "twinny_msgs/MonitorRobotBoard")
(setf (get twinny_msgs::MonitorRobotBoard :definition-)
      "Header header 

string Mode 
uint8 motorErrorIndex
uint8 pc_to_mcu_heartbeat_hz
bool pc_to_mcu_heartbeat_error
bool motor_to_mcu_heartbeat_error
bool can_error
bool lin_error



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



(provide :twinny_msgs/MonitorRobotBoard "feeef21295281612a29bf518f366cb43")


