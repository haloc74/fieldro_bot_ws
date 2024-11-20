;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::HardwareReportErrorCode)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'HardwareReportErrorCode (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::HARDWAREREPORTERRORCODE")
  (make-package "TWINNY_MSGS::HARDWAREREPORTERRORCODE"))

(in-package "ROS")
;;//! \htmlinclude HardwareReportErrorCode.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::HardwareReportErrorCode
  :super ros::object
  :slots (_header _error_code ))

(defmethod twinny_msgs::HardwareReportErrorCode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:error_code __error_code) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _error_code __error_code)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _error_code
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _error_code)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _error_code
     (write-long (length _error_code) s)
     (dolist (elem _error_code)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _error_code
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_code (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _error_code i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get twinny_msgs::HardwareReportErrorCode :md5sum-) "9e3246a15446c45a8dc94de6053284c2")
(setf (get twinny_msgs::HardwareReportErrorCode :datatype-) "twinny_msgs/HardwareReportErrorCode")
(setf (get twinny_msgs::HardwareReportErrorCode :definition-)
      "Header header

string[] error_code
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



(provide :twinny_msgs/HardwareReportErrorCode "9e3246a15446c45a8dc94de6053284c2")


