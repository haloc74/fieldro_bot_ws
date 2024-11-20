;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::ObstacleReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'ObstacleReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::OBSTACLEREPORT")
  (make-package "TWINNY_MSGS::OBSTACLEREPORT"))

(in-package "ROS")
;;//! \htmlinclude ObstacleReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::ObstacleReport
  :super ros::object
  :slots (_header _Sensor_number _Distance ))

(defmethod twinny_msgs::ObstacleReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Sensor_number __Sensor_number) 0)
    ((:Distance __Distance) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Sensor_number (round __Sensor_number))
   (setq _Distance __Distance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Sensor_number
   (&optional __Sensor_number)
   (if __Sensor_number (setq _Sensor_number __Sensor_number)) _Sensor_number)
  (:Distance
   (&optional __Distance)
   (if __Distance (setq _Distance __Distance)) _Distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _Sensor_number
    1
    ;; uint8[] _Distance
    (* 1    (length _Distance)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _Sensor_number
       (write-byte _Sensor_number s)
     ;; uint8[] _Distance
     (write-long (length _Distance) s)
     (princ _Distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _Sensor_number
     (setq _Sensor_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _Distance
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _Distance (make-array n :element-type :char))
     (replace _Distance buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get twinny_msgs::ObstacleReport :md5sum-) "e97cdc4a6c06095094927910baeaaf10")
(setf (get twinny_msgs::ObstacleReport :datatype-) "twinny_msgs/ObstacleReport")
(setf (get twinny_msgs::ObstacleReport :definition-)
      "Header header 

uint8 Sensor_number
uint8[] Distance
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



(provide :twinny_msgs/ObstacleReport "e97cdc4a6c06095094927910baeaaf10")


