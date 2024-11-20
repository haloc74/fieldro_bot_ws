;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::BarcodeReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'BarcodeReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::BARCODEREPORT")
  (make-package "TWINNY_MSGS::BARCODEREPORT"))

(in-package "ROS")
;;//! \htmlinclude BarcodeReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::BarcodeReport
  :super ros::object
  :slots (_header _type _barcode_data ))

(defmethod twinny_msgs::BarcodeReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:barcode_data __barcode_data) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _barcode_data (string __barcode_data))
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
  (:barcode_data
   (&optional __barcode_data)
   (if __barcode_data (setq _barcode_data __barcode_data)) _barcode_data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; string _barcode_data
    4 (length _barcode_data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _barcode_data
       (write-long (length _barcode_data) s) (princ _barcode_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _barcode_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _barcode_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get twinny_msgs::BarcodeReport :md5sum-) "1bb6ec0fa9b16c7357a519e3a2a01392")
(setf (get twinny_msgs::BarcodeReport :datatype-) "twinny_msgs/BarcodeReport")
(setf (get twinny_msgs::BarcodeReport :definition-)
      "Header header

string type
string barcode_data
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



(provide :twinny_msgs/BarcodeReport "1bb6ec0fa9b16c7357a519e3a2a01392")


