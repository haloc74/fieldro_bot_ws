;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::SwitchReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'SwitchReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SWITCHREPORT")
  (make-package "TWINNY_MSGS::SWITCHREPORT"))

(in-package "ROS")
;;//! \htmlinclude SwitchReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass twinny_msgs::SwitchReport
  :super ros::object
  :slots (_header _E_STOP_button _SW_0_toggle _SW_1_toggle _SW_2_toggle _SW_3_toggle _SW_4_toggle _SW_5_toggle _Sub_SW_0_toggle _Sub_SW_1_toggle _Sub_SW_2_toggle _Sub_SW_3_toggle _Sub_SW_4_toggle _Sub_SW_5_toggle _Docking_hall_sensor _Motor_Brake _Main_Power_State _DockingIR_Power_State ))

(defmethod twinny_msgs::SwitchReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:E_STOP_button __E_STOP_button) nil)
    ((:SW_0_toggle __SW_0_toggle) nil)
    ((:SW_1_toggle __SW_1_toggle) nil)
    ((:SW_2_toggle __SW_2_toggle) nil)
    ((:SW_3_toggle __SW_3_toggle) nil)
    ((:SW_4_toggle __SW_4_toggle) nil)
    ((:SW_5_toggle __SW_5_toggle) nil)
    ((:Sub_SW_0_toggle __Sub_SW_0_toggle) nil)
    ((:Sub_SW_1_toggle __Sub_SW_1_toggle) nil)
    ((:Sub_SW_2_toggle __Sub_SW_2_toggle) nil)
    ((:Sub_SW_3_toggle __Sub_SW_3_toggle) nil)
    ((:Sub_SW_4_toggle __Sub_SW_4_toggle) nil)
    ((:Sub_SW_5_toggle __Sub_SW_5_toggle) nil)
    ((:Docking_hall_sensor __Docking_hall_sensor) nil)
    ((:Motor_Brake __Motor_Brake) nil)
    ((:Main_Power_State __Main_Power_State) nil)
    ((:DockingIR_Power_State __DockingIR_Power_State) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _E_STOP_button __E_STOP_button)
   (setq _SW_0_toggle __SW_0_toggle)
   (setq _SW_1_toggle __SW_1_toggle)
   (setq _SW_2_toggle __SW_2_toggle)
   (setq _SW_3_toggle __SW_3_toggle)
   (setq _SW_4_toggle __SW_4_toggle)
   (setq _SW_5_toggle __SW_5_toggle)
   (setq _Sub_SW_0_toggle __Sub_SW_0_toggle)
   (setq _Sub_SW_1_toggle __Sub_SW_1_toggle)
   (setq _Sub_SW_2_toggle __Sub_SW_2_toggle)
   (setq _Sub_SW_3_toggle __Sub_SW_3_toggle)
   (setq _Sub_SW_4_toggle __Sub_SW_4_toggle)
   (setq _Sub_SW_5_toggle __Sub_SW_5_toggle)
   (setq _Docking_hall_sensor __Docking_hall_sensor)
   (setq _Motor_Brake __Motor_Brake)
   (setq _Main_Power_State __Main_Power_State)
   (setq _DockingIR_Power_State __DockingIR_Power_State)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:E_STOP_button
   (&optional __E_STOP_button)
   (if __E_STOP_button (setq _E_STOP_button __E_STOP_button)) _E_STOP_button)
  (:SW_0_toggle
   (&optional __SW_0_toggle)
   (if __SW_0_toggle (setq _SW_0_toggle __SW_0_toggle)) _SW_0_toggle)
  (:SW_1_toggle
   (&optional __SW_1_toggle)
   (if __SW_1_toggle (setq _SW_1_toggle __SW_1_toggle)) _SW_1_toggle)
  (:SW_2_toggle
   (&optional __SW_2_toggle)
   (if __SW_2_toggle (setq _SW_2_toggle __SW_2_toggle)) _SW_2_toggle)
  (:SW_3_toggle
   (&optional __SW_3_toggle)
   (if __SW_3_toggle (setq _SW_3_toggle __SW_3_toggle)) _SW_3_toggle)
  (:SW_4_toggle
   (&optional __SW_4_toggle)
   (if __SW_4_toggle (setq _SW_4_toggle __SW_4_toggle)) _SW_4_toggle)
  (:SW_5_toggle
   (&optional __SW_5_toggle)
   (if __SW_5_toggle (setq _SW_5_toggle __SW_5_toggle)) _SW_5_toggle)
  (:Sub_SW_0_toggle
   (&optional __Sub_SW_0_toggle)
   (if __Sub_SW_0_toggle (setq _Sub_SW_0_toggle __Sub_SW_0_toggle)) _Sub_SW_0_toggle)
  (:Sub_SW_1_toggle
   (&optional __Sub_SW_1_toggle)
   (if __Sub_SW_1_toggle (setq _Sub_SW_1_toggle __Sub_SW_1_toggle)) _Sub_SW_1_toggle)
  (:Sub_SW_2_toggle
   (&optional __Sub_SW_2_toggle)
   (if __Sub_SW_2_toggle (setq _Sub_SW_2_toggle __Sub_SW_2_toggle)) _Sub_SW_2_toggle)
  (:Sub_SW_3_toggle
   (&optional __Sub_SW_3_toggle)
   (if __Sub_SW_3_toggle (setq _Sub_SW_3_toggle __Sub_SW_3_toggle)) _Sub_SW_3_toggle)
  (:Sub_SW_4_toggle
   (&optional __Sub_SW_4_toggle)
   (if __Sub_SW_4_toggle (setq _Sub_SW_4_toggle __Sub_SW_4_toggle)) _Sub_SW_4_toggle)
  (:Sub_SW_5_toggle
   (&optional __Sub_SW_5_toggle)
   (if __Sub_SW_5_toggle (setq _Sub_SW_5_toggle __Sub_SW_5_toggle)) _Sub_SW_5_toggle)
  (:Docking_hall_sensor
   (&optional __Docking_hall_sensor)
   (if __Docking_hall_sensor (setq _Docking_hall_sensor __Docking_hall_sensor)) _Docking_hall_sensor)
  (:Motor_Brake
   (&optional __Motor_Brake)
   (if __Motor_Brake (setq _Motor_Brake __Motor_Brake)) _Motor_Brake)
  (:Main_Power_State
   (&optional __Main_Power_State)
   (if __Main_Power_State (setq _Main_Power_State __Main_Power_State)) _Main_Power_State)
  (:DockingIR_Power_State
   (&optional __DockingIR_Power_State)
   (if __DockingIR_Power_State (setq _DockingIR_Power_State __DockingIR_Power_State)) _DockingIR_Power_State)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _E_STOP_button
    1
    ;; bool _SW_0_toggle
    1
    ;; bool _SW_1_toggle
    1
    ;; bool _SW_2_toggle
    1
    ;; bool _SW_3_toggle
    1
    ;; bool _SW_4_toggle
    1
    ;; bool _SW_5_toggle
    1
    ;; bool _Sub_SW_0_toggle
    1
    ;; bool _Sub_SW_1_toggle
    1
    ;; bool _Sub_SW_2_toggle
    1
    ;; bool _Sub_SW_3_toggle
    1
    ;; bool _Sub_SW_4_toggle
    1
    ;; bool _Sub_SW_5_toggle
    1
    ;; bool _Docking_hall_sensor
    1
    ;; bool _Motor_Brake
    1
    ;; bool _Main_Power_State
    1
    ;; bool _DockingIR_Power_State
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _E_STOP_button
       (if _E_STOP_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _SW_0_toggle
       (if _SW_0_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _SW_1_toggle
       (if _SW_1_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _SW_2_toggle
       (if _SW_2_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _SW_3_toggle
       (if _SW_3_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _SW_4_toggle
       (if _SW_4_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _SW_5_toggle
       (if _SW_5_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _Sub_SW_0_toggle
       (if _Sub_SW_0_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _Sub_SW_1_toggle
       (if _Sub_SW_1_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _Sub_SW_2_toggle
       (if _Sub_SW_2_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _Sub_SW_3_toggle
       (if _Sub_SW_3_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _Sub_SW_4_toggle
       (if _Sub_SW_4_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _Sub_SW_5_toggle
       (if _Sub_SW_5_toggle (write-byte -1 s) (write-byte 0 s))
     ;; bool _Docking_hall_sensor
       (if _Docking_hall_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _Motor_Brake
       (if _Motor_Brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _Main_Power_State
       (if _Main_Power_State (write-byte -1 s) (write-byte 0 s))
     ;; bool _DockingIR_Power_State
       (if _DockingIR_Power_State (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _E_STOP_button
     (setq _E_STOP_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SW_0_toggle
     (setq _SW_0_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SW_1_toggle
     (setq _SW_1_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SW_2_toggle
     (setq _SW_2_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SW_3_toggle
     (setq _SW_3_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SW_4_toggle
     (setq _SW_4_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SW_5_toggle
     (setq _SW_5_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Sub_SW_0_toggle
     (setq _Sub_SW_0_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Sub_SW_1_toggle
     (setq _Sub_SW_1_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Sub_SW_2_toggle
     (setq _Sub_SW_2_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Sub_SW_3_toggle
     (setq _Sub_SW_3_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Sub_SW_4_toggle
     (setq _Sub_SW_4_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Sub_SW_5_toggle
     (setq _Sub_SW_5_toggle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Docking_hall_sensor
     (setq _Docking_hall_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Motor_Brake
     (setq _Motor_Brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Main_Power_State
     (setq _Main_Power_State (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _DockingIR_Power_State
     (setq _DockingIR_Power_State (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::SwitchReport :md5sum-) "a3785c85ae8e5bf04a5bb77839719f66")
(setf (get twinny_msgs::SwitchReport :datatype-) "twinny_msgs/SwitchReport")
(setf (get twinny_msgs::SwitchReport :definition-)
      "Header header 

bool E_STOP_button
bool SW_0_toggle
bool SW_1_toggle
bool SW_2_toggle
bool SW_3_toggle
bool SW_4_toggle
bool SW_5_toggle

bool Sub_SW_0_toggle
bool Sub_SW_1_toggle
bool Sub_SW_2_toggle
bool Sub_SW_3_toggle
bool Sub_SW_4_toggle
bool Sub_SW_5_toggle


bool Docking_hall_sensor

bool Motor_Brake
bool Main_Power_State
bool DockingIR_Power_State



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



(provide :twinny_msgs/SwitchReport "a3785c85ae8e5bf04a5bb77839719f66")


