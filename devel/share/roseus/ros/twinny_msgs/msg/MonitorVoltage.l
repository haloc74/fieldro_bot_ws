;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorVoltage)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorVoltage (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORVOLTAGE")
  (make-package "TWINNY_MSGS::MONITORVOLTAGE"))

(in-package "ROS")
;;//! \htmlinclude MonitorVoltage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MonitorVoltage
  :super ros::object
  :slots (_header _Power_Actual_3_3V_monitoring _Power_Actual_5V_monitoring _Power_Actual_12V_monitoring _Power_Actual_24V_monitoring _Robot_Actual_3_3V_monitoring _Robot_Actual_5V_monitoring _Robot_Actual_12V_monitoring _Robot_Actual_24V_monitoring ))

(defmethod twinny_msgs::MonitorVoltage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Power_Actual_3_3V_monitoring __Power_Actual_3_3V_monitoring) 0.0)
    ((:Power_Actual_5V_monitoring __Power_Actual_5V_monitoring) 0.0)
    ((:Power_Actual_12V_monitoring __Power_Actual_12V_monitoring) 0.0)
    ((:Power_Actual_24V_monitoring __Power_Actual_24V_monitoring) 0.0)
    ((:Robot_Actual_3_3V_monitoring __Robot_Actual_3_3V_monitoring) 0.0)
    ((:Robot_Actual_5V_monitoring __Robot_Actual_5V_monitoring) 0.0)
    ((:Robot_Actual_12V_monitoring __Robot_Actual_12V_monitoring) 0.0)
    ((:Robot_Actual_24V_monitoring __Robot_Actual_24V_monitoring) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Power_Actual_3_3V_monitoring (float __Power_Actual_3_3V_monitoring))
   (setq _Power_Actual_5V_monitoring (float __Power_Actual_5V_monitoring))
   (setq _Power_Actual_12V_monitoring (float __Power_Actual_12V_monitoring))
   (setq _Power_Actual_24V_monitoring (float __Power_Actual_24V_monitoring))
   (setq _Robot_Actual_3_3V_monitoring (float __Robot_Actual_3_3V_monitoring))
   (setq _Robot_Actual_5V_monitoring (float __Robot_Actual_5V_monitoring))
   (setq _Robot_Actual_12V_monitoring (float __Robot_Actual_12V_monitoring))
   (setq _Robot_Actual_24V_monitoring (float __Robot_Actual_24V_monitoring))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Power_Actual_3_3V_monitoring
   (&optional __Power_Actual_3_3V_monitoring)
   (if __Power_Actual_3_3V_monitoring (setq _Power_Actual_3_3V_monitoring __Power_Actual_3_3V_monitoring)) _Power_Actual_3_3V_monitoring)
  (:Power_Actual_5V_monitoring
   (&optional __Power_Actual_5V_monitoring)
   (if __Power_Actual_5V_monitoring (setq _Power_Actual_5V_monitoring __Power_Actual_5V_monitoring)) _Power_Actual_5V_monitoring)
  (:Power_Actual_12V_monitoring
   (&optional __Power_Actual_12V_monitoring)
   (if __Power_Actual_12V_monitoring (setq _Power_Actual_12V_monitoring __Power_Actual_12V_monitoring)) _Power_Actual_12V_monitoring)
  (:Power_Actual_24V_monitoring
   (&optional __Power_Actual_24V_monitoring)
   (if __Power_Actual_24V_monitoring (setq _Power_Actual_24V_monitoring __Power_Actual_24V_monitoring)) _Power_Actual_24V_monitoring)
  (:Robot_Actual_3_3V_monitoring
   (&optional __Robot_Actual_3_3V_monitoring)
   (if __Robot_Actual_3_3V_monitoring (setq _Robot_Actual_3_3V_monitoring __Robot_Actual_3_3V_monitoring)) _Robot_Actual_3_3V_monitoring)
  (:Robot_Actual_5V_monitoring
   (&optional __Robot_Actual_5V_monitoring)
   (if __Robot_Actual_5V_monitoring (setq _Robot_Actual_5V_monitoring __Robot_Actual_5V_monitoring)) _Robot_Actual_5V_monitoring)
  (:Robot_Actual_12V_monitoring
   (&optional __Robot_Actual_12V_monitoring)
   (if __Robot_Actual_12V_monitoring (setq _Robot_Actual_12V_monitoring __Robot_Actual_12V_monitoring)) _Robot_Actual_12V_monitoring)
  (:Robot_Actual_24V_monitoring
   (&optional __Robot_Actual_24V_monitoring)
   (if __Robot_Actual_24V_monitoring (setq _Robot_Actual_24V_monitoring __Robot_Actual_24V_monitoring)) _Robot_Actual_24V_monitoring)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _Power_Actual_3_3V_monitoring
    8
    ;; float64 _Power_Actual_5V_monitoring
    8
    ;; float64 _Power_Actual_12V_monitoring
    8
    ;; float64 _Power_Actual_24V_monitoring
    8
    ;; float64 _Robot_Actual_3_3V_monitoring
    8
    ;; float64 _Robot_Actual_5V_monitoring
    8
    ;; float64 _Robot_Actual_12V_monitoring
    8
    ;; float64 _Robot_Actual_24V_monitoring
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _Power_Actual_3_3V_monitoring
       (sys::poke _Power_Actual_3_3V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Power_Actual_5V_monitoring
       (sys::poke _Power_Actual_5V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Power_Actual_12V_monitoring
       (sys::poke _Power_Actual_12V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Power_Actual_24V_monitoring
       (sys::poke _Power_Actual_24V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Robot_Actual_3_3V_monitoring
       (sys::poke _Robot_Actual_3_3V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Robot_Actual_5V_monitoring
       (sys::poke _Robot_Actual_5V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Robot_Actual_12V_monitoring
       (sys::poke _Robot_Actual_12V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Robot_Actual_24V_monitoring
       (sys::poke _Robot_Actual_24V_monitoring (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _Power_Actual_3_3V_monitoring
     (setq _Power_Actual_3_3V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Power_Actual_5V_monitoring
     (setq _Power_Actual_5V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Power_Actual_12V_monitoring
     (setq _Power_Actual_12V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Power_Actual_24V_monitoring
     (setq _Power_Actual_24V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Robot_Actual_3_3V_monitoring
     (setq _Robot_Actual_3_3V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Robot_Actual_5V_monitoring
     (setq _Robot_Actual_5V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Robot_Actual_12V_monitoring
     (setq _Robot_Actual_12V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Robot_Actual_24V_monitoring
     (setq _Robot_Actual_24V_monitoring (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorVoltage :md5sum-) "ded95860164e9591253c797ff59d9a16")
(setf (get twinny_msgs::MonitorVoltage :datatype-) "twinny_msgs/MonitorVoltage")
(setf (get twinny_msgs::MonitorVoltage :definition-)
      "Header header 

float64 Power_Actual_3_3V_monitoring
float64 Power_Actual_5V_monitoring
float64 Power_Actual_12V_monitoring
float64 Power_Actual_24V_monitoring

float64 Robot_Actual_3_3V_monitoring
float64 Robot_Actual_5V_monitoring
float64 Robot_Actual_12V_monitoring
float64 Robot_Actual_24V_monitoring
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



(provide :twinny_msgs/MonitorVoltage "ded95860164e9591253c797ff59d9a16")


