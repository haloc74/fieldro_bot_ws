;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PingStatusReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PingStatusReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::PINGSTATUSREPORT")
  (make-package "TWINNY_MSGS::PINGSTATUSREPORT"))

(in-package "ROS")
;;//! \htmlinclude PingStatusReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::PingStatusReport
  :super ros::object
  :slots (_header _device_name _device_ip _ping_status ))

(defmethod twinny_msgs::PingStatusReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:device_name __device_name) "")
    ((:device_ip __device_ip) "")
    ((:ping_status __ping_status) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _device_name (string __device_name))
   (setq _device_ip (string __device_ip))
   (setq _ping_status __ping_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:device_ip
   (&optional __device_ip)
   (if __device_ip (setq _device_ip __device_ip)) _device_ip)
  (:ping_status
   (&optional __ping_status)
   (if __ping_status (setq _ping_status __ping_status)) _ping_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _device_name
    4 (length _device_name)
    ;; string _device_ip
    4 (length _device_ip)
    ;; bool _ping_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; string _device_ip
       (write-long (length _device_ip) s) (princ _device_ip s)
     ;; bool _ping_status
       (if _ping_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _device_ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _ping_status
     (setq _ping_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::PingStatusReport :md5sum-) "b7dc823ed209aaeabcd0a55272cee0bf")
(setf (get twinny_msgs::PingStatusReport :datatype-) "twinny_msgs/PingStatusReport")
(setf (get twinny_msgs::PingStatusReport :definition-)
      "Header header

string device_name
string device_ip
bool ping_status
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



(provide :twinny_msgs/PingStatusReport "b7dc823ed209aaeabcd0a55272cee0bf")


