;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::RefrigeStateReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'RefrigeStateReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::REFRIGESTATEREPORT")
  (make-package "TWINNY_MSGS::REFRIGESTATEREPORT"))

(in-package "ROS")
;;//! \htmlinclude RefrigeStateReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::RefrigeStateReport
  :super ros::object
  :slots (_header _refrige_sale_flag _error_flag ))

(defmethod twinny_msgs::RefrigeStateReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:refrige_sale_flag __refrige_sale_flag) nil)
    ((:error_flag __error_flag) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _refrige_sale_flag __refrige_sale_flag)
   (setq _error_flag __error_flag)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:refrige_sale_flag
   (&optional __refrige_sale_flag)
   (if __refrige_sale_flag (setq _refrige_sale_flag __refrige_sale_flag)) _refrige_sale_flag)
  (:error_flag
   (&optional __error_flag)
   (if __error_flag (setq _error_flag __error_flag)) _error_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _refrige_sale_flag
    1
    ;; bool _error_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _refrige_sale_flag
       (if _refrige_sale_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _error_flag
       (if _error_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _refrige_sale_flag
     (setq _refrige_sale_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _error_flag
     (setq _error_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::RefrigeStateReport :md5sum-) "6ded1056d57c98937a68f85a05ad5210")
(setf (get twinny_msgs::RefrigeStateReport :datatype-) "twinny_msgs/RefrigeStateReport")
(setf (get twinny_msgs::RefrigeStateReport :definition-)
      "Header header
bool refrige_sale_flag
bool error_flag

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



(provide :twinny_msgs/RefrigeStateReport "6ded1056d57c98937a68f85a05ad5210")


