;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::TorqueOffModeReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'TorqueOffModeReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::TORQUEOFFMODEREPORT")
  (make-package "TWINNY_MSGS::TORQUEOFFMODEREPORT"))

(in-package "ROS")
;;//! \htmlinclude TorqueOffModeReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::TorqueOffModeReport
  :super ros::object
  :slots (_header _type _torque_off_mode ))

(defmethod twinny_msgs::TorqueOffModeReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:torque_off_mode __torque_off_mode) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _torque_off_mode __torque_off_mode)
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
  (:torque_off_mode
   (&optional __torque_off_mode)
   (if __torque_off_mode (setq _torque_off_mode __torque_off_mode)) _torque_off_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; bool _torque_off_mode
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
     ;; bool _torque_off_mode
       (if _torque_off_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _torque_off_mode
     (setq _torque_off_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::TorqueOffModeReport :md5sum-) "a12cbb721753edc02866f655483573a4")
(setf (get twinny_msgs::TorqueOffModeReport :datatype-) "twinny_msgs/TorqueOffModeReport")
(setf (get twinny_msgs::TorqueOffModeReport :definition-)
      "Header header
string type

bool torque_off_mode
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



(provide :twinny_msgs/TorqueOffModeReport "a12cbb721753edc02866f655483573a4")


