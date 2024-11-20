;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::MonitorHeartBeatHz)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'MonitorHeartBeatHz (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::MONITORHEARTBEATHZ")
  (make-package "TWINNY_MSGS::MONITORHEARTBEATHZ"))

(in-package "ROS")
;;//! \htmlinclude MonitorHeartBeatHz.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::MonitorHeartBeatHz
  :super ros::object
  :slots (_header _Motor_DriverA_Hz _Motor_DriverB_Hz _Motor_DriverC_Hz _Motor_DriverD_Hz _Motor_DriverE_Hz _Motor_DriverF_Hz _Motor_DriverG_Hz _Motor_DriverH_Hz ))

(defmethod twinny_msgs::MonitorHeartBeatHz
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Motor_DriverA_Hz __Motor_DriverA_Hz) 0)
    ((:Motor_DriverB_Hz __Motor_DriverB_Hz) 0)
    ((:Motor_DriverC_Hz __Motor_DriverC_Hz) 0)
    ((:Motor_DriverD_Hz __Motor_DriverD_Hz) 0)
    ((:Motor_DriverE_Hz __Motor_DriverE_Hz) 0)
    ((:Motor_DriverF_Hz __Motor_DriverF_Hz) 0)
    ((:Motor_DriverG_Hz __Motor_DriverG_Hz) 0)
    ((:Motor_DriverH_Hz __Motor_DriverH_Hz) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Motor_DriverA_Hz (round __Motor_DriverA_Hz))
   (setq _Motor_DriverB_Hz (round __Motor_DriverB_Hz))
   (setq _Motor_DriverC_Hz (round __Motor_DriverC_Hz))
   (setq _Motor_DriverD_Hz (round __Motor_DriverD_Hz))
   (setq _Motor_DriverE_Hz (round __Motor_DriverE_Hz))
   (setq _Motor_DriverF_Hz (round __Motor_DriverF_Hz))
   (setq _Motor_DriverG_Hz (round __Motor_DriverG_Hz))
   (setq _Motor_DriverH_Hz (round __Motor_DriverH_Hz))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Motor_DriverA_Hz
   (&optional __Motor_DriverA_Hz)
   (if __Motor_DriverA_Hz (setq _Motor_DriverA_Hz __Motor_DriverA_Hz)) _Motor_DriverA_Hz)
  (:Motor_DriverB_Hz
   (&optional __Motor_DriverB_Hz)
   (if __Motor_DriverB_Hz (setq _Motor_DriverB_Hz __Motor_DriverB_Hz)) _Motor_DriverB_Hz)
  (:Motor_DriverC_Hz
   (&optional __Motor_DriverC_Hz)
   (if __Motor_DriverC_Hz (setq _Motor_DriverC_Hz __Motor_DriverC_Hz)) _Motor_DriverC_Hz)
  (:Motor_DriverD_Hz
   (&optional __Motor_DriverD_Hz)
   (if __Motor_DriverD_Hz (setq _Motor_DriverD_Hz __Motor_DriverD_Hz)) _Motor_DriverD_Hz)
  (:Motor_DriverE_Hz
   (&optional __Motor_DriverE_Hz)
   (if __Motor_DriverE_Hz (setq _Motor_DriverE_Hz __Motor_DriverE_Hz)) _Motor_DriverE_Hz)
  (:Motor_DriverF_Hz
   (&optional __Motor_DriverF_Hz)
   (if __Motor_DriverF_Hz (setq _Motor_DriverF_Hz __Motor_DriverF_Hz)) _Motor_DriverF_Hz)
  (:Motor_DriverG_Hz
   (&optional __Motor_DriverG_Hz)
   (if __Motor_DriverG_Hz (setq _Motor_DriverG_Hz __Motor_DriverG_Hz)) _Motor_DriverG_Hz)
  (:Motor_DriverH_Hz
   (&optional __Motor_DriverH_Hz)
   (if __Motor_DriverH_Hz (setq _Motor_DriverH_Hz __Motor_DriverH_Hz)) _Motor_DriverH_Hz)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _Motor_DriverA_Hz
    1
    ;; uint8 _Motor_DriverB_Hz
    1
    ;; uint8 _Motor_DriverC_Hz
    1
    ;; uint8 _Motor_DriverD_Hz
    1
    ;; uint8 _Motor_DriverE_Hz
    1
    ;; uint8 _Motor_DriverF_Hz
    1
    ;; uint8 _Motor_DriverG_Hz
    1
    ;; uint8 _Motor_DriverH_Hz
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _Motor_DriverA_Hz
       (write-byte _Motor_DriverA_Hz s)
     ;; uint8 _Motor_DriverB_Hz
       (write-byte _Motor_DriverB_Hz s)
     ;; uint8 _Motor_DriverC_Hz
       (write-byte _Motor_DriverC_Hz s)
     ;; uint8 _Motor_DriverD_Hz
       (write-byte _Motor_DriverD_Hz s)
     ;; uint8 _Motor_DriverE_Hz
       (write-byte _Motor_DriverE_Hz s)
     ;; uint8 _Motor_DriverF_Hz
       (write-byte _Motor_DriverF_Hz s)
     ;; uint8 _Motor_DriverG_Hz
       (write-byte _Motor_DriverG_Hz s)
     ;; uint8 _Motor_DriverH_Hz
       (write-byte _Motor_DriverH_Hz s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _Motor_DriverA_Hz
     (setq _Motor_DriverA_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Motor_DriverB_Hz
     (setq _Motor_DriverB_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Motor_DriverC_Hz
     (setq _Motor_DriverC_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Motor_DriverD_Hz
     (setq _Motor_DriverD_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Motor_DriverE_Hz
     (setq _Motor_DriverE_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Motor_DriverF_Hz
     (setq _Motor_DriverF_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Motor_DriverG_Hz
     (setq _Motor_DriverG_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Motor_DriverH_Hz
     (setq _Motor_DriverH_Hz (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::MonitorHeartBeatHz :md5sum-) "6e75bac3d8efef67e052259a96f13d33")
(setf (get twinny_msgs::MonitorHeartBeatHz :datatype-) "twinny_msgs/MonitorHeartBeatHz")
(setf (get twinny_msgs::MonitorHeartBeatHz :definition-)
      "Header header 

uint8 Motor_DriverA_Hz
uint8 Motor_DriverB_Hz
uint8 Motor_DriverC_Hz
uint8 Motor_DriverD_Hz
uint8 Motor_DriverE_Hz
uint8 Motor_DriverF_Hz
uint8 Motor_DriverG_Hz
uint8 Motor_DriverH_Hz
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



(provide :twinny_msgs/MonitorHeartBeatHz "6e75bac3d8efef67e052259a96f13d33")


