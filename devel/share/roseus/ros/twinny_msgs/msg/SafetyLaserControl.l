;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SafetyLaserControl)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SafetyLaserControl (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SAFETYLASERCONTROL")
  (make-package "TWINNY_MSGS::SAFETYLASERCONTROL"))

(in-package "ROS")
;;//! \htmlinclude SafetyLaserControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::SafetyLaserControl
  :super ros::object
  :slots (_header _type _laser_control ))

(defmethod twinny_msgs::SafetyLaserControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:laser_control __laser_control) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _laser_control __laser_control)
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
  (:laser_control
   (&optional __laser_control)
   (if __laser_control (setq _laser_control __laser_control)) _laser_control)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; bool _laser_control
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
     ;; bool _laser_control
       (if _laser_control (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _laser_control
     (setq _laser_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::SafetyLaserControl :md5sum-) "39e93282a82d8d72ccc056afe60e1ae5")
(setf (get twinny_msgs::SafetyLaserControl :datatype-) "twinny_msgs/SafetyLaserControl")
(setf (get twinny_msgs::SafetyLaserControl :definition-)
      "Header header
string type

bool laser_control
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



(provide :twinny_msgs/SafetyLaserControl "39e93282a82d8d72ccc056afe60e1ae5")


