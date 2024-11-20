;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorPacketStowage)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorPacketStowage (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORPACKETSTOWAGE")
  (make-package "TWINNY_MSGS::MONITORPACKETSTOWAGE"))

(in-package "ROS")
;;//! \htmlinclude MonitorPacketStowage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MonitorPacketStowage
  :super ros::object
  :slots (_header _id _can1_rx _can1_tx _mcu_rx_adc _mcu_tx_adc ))

(defmethod twinny_msgs::MonitorPacketStowage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) (make-array 0 :initial-element 0 :element-type :char))
    ((:can1_rx __can1_rx) (make-array 0 :initial-element 0 :element-type :char))
    ((:can1_tx __can1_tx) (make-array 0 :initial-element 0 :element-type :char))
    ((:mcu_rx_adc __mcu_rx_adc) (make-array 0 :initial-element 0 :element-type :char))
    ((:mcu_tx_adc __mcu_tx_adc) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id __id)
   (setq _can1_rx __can1_rx)
   (setq _can1_tx __can1_tx)
   (setq _mcu_rx_adc __mcu_rx_adc)
   (setq _mcu_tx_adc __mcu_tx_adc)
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
  (:can1_rx
   (&optional __can1_rx)
   (if __can1_rx (setq _can1_rx __can1_rx)) _can1_rx)
  (:can1_tx
   (&optional __can1_tx)
   (if __can1_tx (setq _can1_tx __can1_tx)) _can1_tx)
  (:mcu_rx_adc
   (&optional __mcu_rx_adc)
   (if __mcu_rx_adc (setq _mcu_rx_adc __mcu_rx_adc)) _mcu_rx_adc)
  (:mcu_tx_adc
   (&optional __mcu_tx_adc)
   (if __mcu_tx_adc (setq _mcu_tx_adc __mcu_tx_adc)) _mcu_tx_adc)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _id
    (* 1    (length _id)) 4
    ;; uint8[] _can1_rx
    (* 1    (length _can1_rx)) 4
    ;; uint8[] _can1_tx
    (* 1    (length _can1_tx)) 4
    ;; uint8[] _mcu_rx_adc
    (* 1    (length _mcu_rx_adc)) 4
    ;; uint8[] _mcu_tx_adc
    (* 1    (length _mcu_tx_adc)) 4
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
     ;; uint8[] _can1_rx
     (write-long (length _can1_rx) s)
     (princ _can1_rx s)
     ;; uint8[] _can1_tx
     (write-long (length _can1_tx) s)
     (princ _can1_tx s)
     ;; uint8[] _mcu_rx_adc
     (write-long (length _mcu_rx_adc) s)
     (princ _mcu_rx_adc s)
     ;; uint8[] _mcu_tx_adc
     (write-long (length _mcu_tx_adc) s)
     (princ _mcu_tx_adc s)
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
   ;; uint8[] _can1_rx
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _can1_rx (make-array n :element-type :char))
     (replace _can1_rx buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _can1_tx
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _can1_tx (make-array n :element-type :char))
     (replace _can1_tx buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _mcu_rx_adc
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _mcu_rx_adc (make-array n :element-type :char))
     (replace _mcu_rx_adc buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _mcu_tx_adc
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _mcu_tx_adc (make-array n :element-type :char))
     (replace _mcu_tx_adc buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorPacketStowage :md5sum-) "4a7045a31936c524fdd5bbd3fb3ce238")
(setf (get twinny_msgs::MonitorPacketStowage :datatype-) "twinny_msgs/MonitorPacketStowage")
(setf (get twinny_msgs::MonitorPacketStowage :definition-)
      "Header header  

uint8[] id                            

uint8[] can1_rx                       
uint8[] can1_tx                       

uint8[] mcu_rx_adc                  
uint8[] mcu_tx_adc                  
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



(provide :twinny_msgs/MonitorPacketStowage "4a7045a31936c524fdd5bbd3fb3ce238")


