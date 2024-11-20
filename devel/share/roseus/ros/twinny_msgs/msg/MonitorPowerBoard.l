;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorPowerBoard)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorPowerBoard (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORPOWERBOARD")
  (make-package "TWINNY_MSGS::MONITORPOWERBOARD"))

(in-package "ROS")
;;//! \htmlinclude MonitorPowerBoard.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MonitorPowerBoard
  :super ros::object
  :slots (_header _Mode _voltage_flag _charge_current_flag _robot_power_on_mode _motor_relay_error _robot_power_relay_error _pc_switch_error _pc_boot_up_error _pc_boot_off_error _pc_down_error _charge_relay_error ))

(defmethod twinny_msgs::MonitorPowerBoard
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Mode __Mode) "")
    ((:voltage_flag __voltage_flag) "")
    ((:charge_current_flag __charge_current_flag) "")
    ((:robot_power_on_mode __robot_power_on_mode) "")
    ((:motor_relay_error __motor_relay_error) nil)
    ((:robot_power_relay_error __robot_power_relay_error) nil)
    ((:pc_switch_error __pc_switch_error) nil)
    ((:pc_boot_up_error __pc_boot_up_error) nil)
    ((:pc_boot_off_error __pc_boot_off_error) nil)
    ((:pc_down_error __pc_down_error) nil)
    ((:charge_relay_error __charge_relay_error) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Mode (string __Mode))
   (setq _voltage_flag (string __voltage_flag))
   (setq _charge_current_flag (string __charge_current_flag))
   (setq _robot_power_on_mode (string __robot_power_on_mode))
   (setq _motor_relay_error __motor_relay_error)
   (setq _robot_power_relay_error __robot_power_relay_error)
   (setq _pc_switch_error __pc_switch_error)
   (setq _pc_boot_up_error __pc_boot_up_error)
   (setq _pc_boot_off_error __pc_boot_off_error)
   (setq _pc_down_error __pc_down_error)
   (setq _charge_relay_error __charge_relay_error)
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
  (:voltage_flag
   (&optional __voltage_flag)
   (if __voltage_flag (setq _voltage_flag __voltage_flag)) _voltage_flag)
  (:charge_current_flag
   (&optional __charge_current_flag)
   (if __charge_current_flag (setq _charge_current_flag __charge_current_flag)) _charge_current_flag)
  (:robot_power_on_mode
   (&optional __robot_power_on_mode)
   (if __robot_power_on_mode (setq _robot_power_on_mode __robot_power_on_mode)) _robot_power_on_mode)
  (:motor_relay_error
   (&optional __motor_relay_error)
   (if __motor_relay_error (setq _motor_relay_error __motor_relay_error)) _motor_relay_error)
  (:robot_power_relay_error
   (&optional __robot_power_relay_error)
   (if __robot_power_relay_error (setq _robot_power_relay_error __robot_power_relay_error)) _robot_power_relay_error)
  (:pc_switch_error
   (&optional __pc_switch_error)
   (if __pc_switch_error (setq _pc_switch_error __pc_switch_error)) _pc_switch_error)
  (:pc_boot_up_error
   (&optional __pc_boot_up_error)
   (if __pc_boot_up_error (setq _pc_boot_up_error __pc_boot_up_error)) _pc_boot_up_error)
  (:pc_boot_off_error
   (&optional __pc_boot_off_error)
   (if __pc_boot_off_error (setq _pc_boot_off_error __pc_boot_off_error)) _pc_boot_off_error)
  (:pc_down_error
   (&optional __pc_down_error)
   (if __pc_down_error (setq _pc_down_error __pc_down_error)) _pc_down_error)
  (:charge_relay_error
   (&optional __charge_relay_error)
   (if __charge_relay_error (setq _charge_relay_error __charge_relay_error)) _charge_relay_error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _Mode
    4 (length _Mode)
    ;; string _voltage_flag
    4 (length _voltage_flag)
    ;; string _charge_current_flag
    4 (length _charge_current_flag)
    ;; string _robot_power_on_mode
    4 (length _robot_power_on_mode)
    ;; bool _motor_relay_error
    1
    ;; bool _robot_power_relay_error
    1
    ;; bool _pc_switch_error
    1
    ;; bool _pc_boot_up_error
    1
    ;; bool _pc_boot_off_error
    1
    ;; bool _pc_down_error
    1
    ;; bool _charge_relay_error
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
     ;; string _voltage_flag
       (write-long (length _voltage_flag) s) (princ _voltage_flag s)
     ;; string _charge_current_flag
       (write-long (length _charge_current_flag) s) (princ _charge_current_flag s)
     ;; string _robot_power_on_mode
       (write-long (length _robot_power_on_mode) s) (princ _robot_power_on_mode s)
     ;; bool _motor_relay_error
       (if _motor_relay_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _robot_power_relay_error
       (if _robot_power_relay_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _pc_switch_error
       (if _pc_switch_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _pc_boot_up_error
       (if _pc_boot_up_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _pc_boot_off_error
       (if _pc_boot_off_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _pc_down_error
       (if _pc_down_error (write-byte -1 s) (write-byte 0 s))
     ;; bool _charge_relay_error
       (if _charge_relay_error (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _Mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _voltage_flag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _voltage_flag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _charge_current_flag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _charge_current_flag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_power_on_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_power_on_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _motor_relay_error
     (setq _motor_relay_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _robot_power_relay_error
     (setq _robot_power_relay_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pc_switch_error
     (setq _pc_switch_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pc_boot_up_error
     (setq _pc_boot_up_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pc_boot_off_error
     (setq _pc_boot_off_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pc_down_error
     (setq _pc_down_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charge_relay_error
     (setq _charge_relay_error (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorPowerBoard :md5sum-) "d786489e7a443dba4376961f64ea7161")
(setf (get twinny_msgs::MonitorPowerBoard :datatype-) "twinny_msgs/MonitorPowerBoard")
(setf (get twinny_msgs::MonitorPowerBoard :definition-)
      "Header header 

string Mode

string voltage_flag
string charge_current_flag

string robot_power_on_mode

bool motor_relay_error
bool robot_power_relay_error
bool pc_switch_error
bool pc_boot_up_error
bool pc_boot_off_error
bool pc_down_error
bool charge_relay_error
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



(provide :twinny_msgs/MonitorPowerBoard "d786489e7a443dba4376961f64ea7161")


