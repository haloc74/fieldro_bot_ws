;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorPacket)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorPacket (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORPACKET")
  (make-package "TWINNY_MSGS::MONITORPACKET"))

(in-package "ROS")
;;//! \htmlinclude MonitorPacket.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MonitorPacket
  :super ros::object
  :slots (_header _CAN1_MCU_Rx_Packet _CAN1_MCU_Tx_Packet _CAN2_MCU_Rx_Packet _CAN2_MCU_Tx_Packet _LIN1_MCU_Rx _LIN1_MCU_Tx _LIN2_MCU_Rx _LIN2_MCU_Tx ))

(defmethod twinny_msgs::MonitorPacket
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:CAN1_MCU_Rx_Packet __CAN1_MCU_Rx_Packet) 0)
    ((:CAN1_MCU_Tx_Packet __CAN1_MCU_Tx_Packet) 0)
    ((:CAN2_MCU_Rx_Packet __CAN2_MCU_Rx_Packet) 0)
    ((:CAN2_MCU_Tx_Packet __CAN2_MCU_Tx_Packet) 0)
    ((:LIN1_MCU_Rx __LIN1_MCU_Rx) 0)
    ((:LIN1_MCU_Tx __LIN1_MCU_Tx) 0)
    ((:LIN2_MCU_Rx __LIN2_MCU_Rx) 0)
    ((:LIN2_MCU_Tx __LIN2_MCU_Tx) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _CAN1_MCU_Rx_Packet (round __CAN1_MCU_Rx_Packet))
   (setq _CAN1_MCU_Tx_Packet (round __CAN1_MCU_Tx_Packet))
   (setq _CAN2_MCU_Rx_Packet (round __CAN2_MCU_Rx_Packet))
   (setq _CAN2_MCU_Tx_Packet (round __CAN2_MCU_Tx_Packet))
   (setq _LIN1_MCU_Rx (round __LIN1_MCU_Rx))
   (setq _LIN1_MCU_Tx (round __LIN1_MCU_Tx))
   (setq _LIN2_MCU_Rx (round __LIN2_MCU_Rx))
   (setq _LIN2_MCU_Tx (round __LIN2_MCU_Tx))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:CAN1_MCU_Rx_Packet
   (&optional __CAN1_MCU_Rx_Packet)
   (if __CAN1_MCU_Rx_Packet (setq _CAN1_MCU_Rx_Packet __CAN1_MCU_Rx_Packet)) _CAN1_MCU_Rx_Packet)
  (:CAN1_MCU_Tx_Packet
   (&optional __CAN1_MCU_Tx_Packet)
   (if __CAN1_MCU_Tx_Packet (setq _CAN1_MCU_Tx_Packet __CAN1_MCU_Tx_Packet)) _CAN1_MCU_Tx_Packet)
  (:CAN2_MCU_Rx_Packet
   (&optional __CAN2_MCU_Rx_Packet)
   (if __CAN2_MCU_Rx_Packet (setq _CAN2_MCU_Rx_Packet __CAN2_MCU_Rx_Packet)) _CAN2_MCU_Rx_Packet)
  (:CAN2_MCU_Tx_Packet
   (&optional __CAN2_MCU_Tx_Packet)
   (if __CAN2_MCU_Tx_Packet (setq _CAN2_MCU_Tx_Packet __CAN2_MCU_Tx_Packet)) _CAN2_MCU_Tx_Packet)
  (:LIN1_MCU_Rx
   (&optional __LIN1_MCU_Rx)
   (if __LIN1_MCU_Rx (setq _LIN1_MCU_Rx __LIN1_MCU_Rx)) _LIN1_MCU_Rx)
  (:LIN1_MCU_Tx
   (&optional __LIN1_MCU_Tx)
   (if __LIN1_MCU_Tx (setq _LIN1_MCU_Tx __LIN1_MCU_Tx)) _LIN1_MCU_Tx)
  (:LIN2_MCU_Rx
   (&optional __LIN2_MCU_Rx)
   (if __LIN2_MCU_Rx (setq _LIN2_MCU_Rx __LIN2_MCU_Rx)) _LIN2_MCU_Rx)
  (:LIN2_MCU_Tx
   (&optional __LIN2_MCU_Tx)
   (if __LIN2_MCU_Tx (setq _LIN2_MCU_Tx __LIN2_MCU_Tx)) _LIN2_MCU_Tx)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _CAN1_MCU_Rx_Packet
    2
    ;; uint16 _CAN1_MCU_Tx_Packet
    2
    ;; uint16 _CAN2_MCU_Rx_Packet
    2
    ;; uint16 _CAN2_MCU_Tx_Packet
    2
    ;; uint16 _LIN1_MCU_Rx
    2
    ;; uint16 _LIN1_MCU_Tx
    2
    ;; uint16 _LIN2_MCU_Rx
    2
    ;; uint16 _LIN2_MCU_Tx
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _CAN1_MCU_Rx_Packet
       (write-word _CAN1_MCU_Rx_Packet s)
     ;; uint16 _CAN1_MCU_Tx_Packet
       (write-word _CAN1_MCU_Tx_Packet s)
     ;; uint16 _CAN2_MCU_Rx_Packet
       (write-word _CAN2_MCU_Rx_Packet s)
     ;; uint16 _CAN2_MCU_Tx_Packet
       (write-word _CAN2_MCU_Tx_Packet s)
     ;; uint16 _LIN1_MCU_Rx
       (write-word _LIN1_MCU_Rx s)
     ;; uint16 _LIN1_MCU_Tx
       (write-word _LIN1_MCU_Tx s)
     ;; uint16 _LIN2_MCU_Rx
       (write-word _LIN2_MCU_Rx s)
     ;; uint16 _LIN2_MCU_Tx
       (write-word _LIN2_MCU_Tx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _CAN1_MCU_Rx_Packet
     (setq _CAN1_MCU_Rx_Packet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _CAN1_MCU_Tx_Packet
     (setq _CAN1_MCU_Tx_Packet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _CAN2_MCU_Rx_Packet
     (setq _CAN2_MCU_Rx_Packet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _CAN2_MCU_Tx_Packet
     (setq _CAN2_MCU_Tx_Packet (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LIN1_MCU_Rx
     (setq _LIN1_MCU_Rx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LIN1_MCU_Tx
     (setq _LIN1_MCU_Tx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LIN2_MCU_Rx
     (setq _LIN2_MCU_Rx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LIN2_MCU_Tx
     (setq _LIN2_MCU_Tx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorPacket :md5sum-) "66e58c86df0235b897d5abd8cc8e9f6d")
(setf (get twinny_msgs::MonitorPacket :datatype-) "twinny_msgs/MonitorPacket")
(setf (get twinny_msgs::MonitorPacket :definition-)
      "Header header 

uint16 CAN1_MCU_Rx_Packet
uint16 CAN1_MCU_Tx_Packet
uint16 CAN2_MCU_Rx_Packet
uint16 CAN2_MCU_Tx_Packet

uint16 LIN1_MCU_Rx
uint16 LIN1_MCU_Tx
uint16 LIN2_MCU_Rx
uint16 LIN2_MCU_Tx


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



(provide :twinny_msgs/MonitorPacket "66e58c86df0235b897d5abd8cc8e9f6d")


