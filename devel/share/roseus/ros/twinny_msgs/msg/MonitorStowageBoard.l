;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorStowageBoard)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorStowageBoard (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORSTOWAGEBOARD")
  (make-package "TWINNY_MSGS::MONITORSTOWAGEBOARD"))

(in-package "ROS")
;;//! \htmlinclude MonitorStowageBoard.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MonitorStowageBoard
  :super ros::object
  :slots (_header _id _pc_to_mcu_heartbeat_error _mcu_to_pc_heartbeat_hz _adc_ic_error _eeprom_error ))

(defmethod twinny_msgs::MonitorStowageBoard
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) (make-array 0 :initial-element 0 :element-type :char))
    ((:pc_to_mcu_heartbeat_error __pc_to_mcu_heartbeat_error) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:mcu_to_pc_heartbeat_hz __mcu_to_pc_heartbeat_hz) (make-array 0 :initial-element 0 :element-type :char))
    ((:adc_ic_error __adc_ic_error) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:eeprom_error __eeprom_error) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id __id)
   (setq _pc_to_mcu_heartbeat_error __pc_to_mcu_heartbeat_error)
   (setq _mcu_to_pc_heartbeat_hz __mcu_to_pc_heartbeat_hz)
   (setq _adc_ic_error __adc_ic_error)
   (setq _eeprom_error __eeprom_error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pc_to_mcu_heartbeat_error
   (&optional __pc_to_mcu_heartbeat_error)
   (if __pc_to_mcu_heartbeat_error (setq _pc_to_mcu_heartbeat_error __pc_to_mcu_heartbeat_error)) _pc_to_mcu_heartbeat_error)
  (:mcu_to_pc_heartbeat_hz
   (&optional __mcu_to_pc_heartbeat_hz)
   (if __mcu_to_pc_heartbeat_hz (setq _mcu_to_pc_heartbeat_hz __mcu_to_pc_heartbeat_hz)) _mcu_to_pc_heartbeat_hz)
  (:adc_ic_error
   (&optional __adc_ic_error)
   (if __adc_ic_error (setq _adc_ic_error __adc_ic_error)) _adc_ic_error)
  (:eeprom_error
   (&optional __eeprom_error)
   (if __eeprom_error (setq _eeprom_error __eeprom_error)) _eeprom_error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _id
    (* 1    (length _id)) 4
    ;; bool[] _pc_to_mcu_heartbeat_error
    (* 1    (length _pc_to_mcu_heartbeat_error)) 4
    ;; uint8[] _mcu_to_pc_heartbeat_hz
    (* 1    (length _mcu_to_pc_heartbeat_hz)) 4
    ;; bool[] _adc_ic_error
    (* 1    (length _adc_ic_error)) 4
    ;; bool[] _eeprom_error
    (* 1    (length _eeprom_error)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _id
     (write-long (length _id) s)
     (princ _id s)
     ;; bool[] _pc_to_mcu_heartbeat_error
     (write-long (length _pc_to_mcu_heartbeat_error) s)
     (dotimes (i (length _pc_to_mcu_heartbeat_error))
       (if (elt _pc_to_mcu_heartbeat_error i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint8[] _mcu_to_pc_heartbeat_hz
     (write-long (length _mcu_to_pc_heartbeat_hz) s)
     (princ _mcu_to_pc_heartbeat_hz s)
     ;; bool[] _adc_ic_error
     (write-long (length _adc_ic_error) s)
     (dotimes (i (length _adc_ic_error))
       (if (elt _adc_ic_error i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _eeprom_error
     (write-long (length _eeprom_error) s)
     (dotimes (i (length _eeprom_error))
       (if (elt _eeprom_error i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _id (make-array n :element-type :char))
     (replace _id buf :start2 ptr-) (incf ptr- n))
   ;; bool[] _pc_to_mcu_heartbeat_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pc_to_mcu_heartbeat_error (make-list n))
     (dotimes (i n)
     (setf (elt _pc_to_mcu_heartbeat_error i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint8[] _mcu_to_pc_heartbeat_hz
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _mcu_to_pc_heartbeat_hz (make-array n :element-type :char))
     (replace _mcu_to_pc_heartbeat_hz buf :start2 ptr-) (incf ptr- n))
   ;; bool[] _adc_ic_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _adc_ic_error (make-list n))
     (dotimes (i n)
     (setf (elt _adc_ic_error i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _eeprom_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _eeprom_error (make-list n))
     (dotimes (i n)
     (setf (elt _eeprom_error i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorStowageBoard :md5sum-) "6ae2271e02d73334e1713180840e83b0")
(setf (get twinny_msgs::MonitorStowageBoard :datatype-) "twinny_msgs/MonitorStowageBoard")
(setf (get twinny_msgs::MonitorStowageBoard :definition-)
      "Header header 

uint8[] id
bool[] pc_to_mcu_heartbeat_error
uint8[] mcu_to_pc_heartbeat_hz
bool[] adc_ic_error
bool[] eeprom_error
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



(provide :twinny_msgs/MonitorStowageBoard "6ae2271e02d73334e1713180840e83b0")


