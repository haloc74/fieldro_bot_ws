;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::JoystickStatus)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'JoystickStatus (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::JOYSTICKSTATUS")
  (make-package "TWINNY_MSGS::JOYSTICKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude JoystickStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*AXIS_LEFT_STICK_X*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_LEFT_STICK_X* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_LEFT_STICK_X* 0)
(intern "*AXIS_LEFT_STICK_Y*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_LEFT_STICK_Y* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_LEFT_STICK_Y* 1)
(intern "*AXIS_RIGHT_STICK_X*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_RIGHT_STICK_X* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_RIGHT_STICK_X* 2)
(intern "*AXIS_RIGHT_STICK_Y*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_RIGHT_STICK_Y* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_RIGHT_STICK_Y* 3)
(intern "*AXIS_DPAD_X*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_DPAD_X* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_DPAD_X* 4)
(intern "*AXIS_DPAD_Y*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_DPAD_Y* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_DPAD_Y* 5)
(intern "*AXIS_LEFT_TRIGGER*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_LEFT_TRIGGER* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_LEFT_TRIGGER* 6)
(intern "*AXIS_RIGHT_TRIGGER*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*AXIS_RIGHT_TRIGGER* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*AXIS_RIGHT_TRIGGER* 7)
(intern "*BUTTON_A*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_A* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_A* 0)
(intern "*BUTTON_B*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_B* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_B* 1)
(intern "*BUTTON_X*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_X* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_X* 2)
(intern "*BUTTON_Y*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_Y* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_Y* 3)
(intern "*BUTTON_LB*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_LB* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_LB* 4)
(intern "*BUTTON_RB*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_RB* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_RB* 5)
(intern "*BUTTON_BACK*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_BACK* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_BACK* 6)
(intern "*BUTTON_START*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_START* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_START* 7)
(intern "*BUTTON_GUIDE*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_GUIDE* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_GUIDE* 8)
(intern "*BUTTON_LEFT_STICK*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_LEFT_STICK* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_LEFT_STICK* 9)
(intern "*BUTTON_RIGHT_STICK*" (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(shadow '*BUTTON_RIGHT_STICK* (find-package "TWINNY_MSGS::JOYSTICKSTATUS"))
(defconstant twinny_msgs::JoystickStatus::*BUTTON_RIGHT_STICK* 10)
(defclass twinny_msgs::JoystickStatus
  :super ros::object
  :slots (_header _joy_driver_status _axes _button _joy_driver_enable_button _reduce_velocity_button _raise_velocity_button _reset_velocity_button _vel_scale _linear_velocity _angular_velocity ))

(defmethod twinny_msgs::JoystickStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:joy_driver_status __joy_driver_status) "")
    ((:axes __axes) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:button __button) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:joy_driver_enable_button __joy_driver_enable_button) nil)
    ((:reduce_velocity_button __reduce_velocity_button) nil)
    ((:raise_velocity_button __raise_velocity_button) nil)
    ((:reset_velocity_button __reset_velocity_button) nil)
    ((:vel_scale __vel_scale) 0.0)
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _joy_driver_status (string __joy_driver_status))
   (setq _axes __axes)
   (setq _button __button)
   (setq _joy_driver_enable_button __joy_driver_enable_button)
   (setq _reduce_velocity_button __reduce_velocity_button)
   (setq _raise_velocity_button __raise_velocity_button)
   (setq _reset_velocity_button __reset_velocity_button)
   (setq _vel_scale (float __vel_scale))
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:joy_driver_status
   (&optional __joy_driver_status)
   (if __joy_driver_status (setq _joy_driver_status __joy_driver_status)) _joy_driver_status)
  (:axes
   (&optional __axes)
   (if __axes (setq _axes __axes)) _axes)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:joy_driver_enable_button
   (&optional __joy_driver_enable_button)
   (if __joy_driver_enable_button (setq _joy_driver_enable_button __joy_driver_enable_button)) _joy_driver_enable_button)
  (:reduce_velocity_button
   (&optional __reduce_velocity_button)
   (if __reduce_velocity_button (setq _reduce_velocity_button __reduce_velocity_button)) _reduce_velocity_button)
  (:raise_velocity_button
   (&optional __raise_velocity_button)
   (if __raise_velocity_button (setq _raise_velocity_button __raise_velocity_button)) _raise_velocity_button)
  (:reset_velocity_button
   (&optional __reset_velocity_button)
   (if __reset_velocity_button (setq _reset_velocity_button __reset_velocity_button)) _reset_velocity_button)
  (:vel_scale
   (&optional __vel_scale)
   (if __vel_scale (setq _vel_scale __vel_scale)) _vel_scale)
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _joy_driver_status
    4 (length _joy_driver_status)
    ;; float32[] _axes
    (* 4    (length _axes)) 4
    ;; bool[] _button
    (* 1    (length _button)) 4
    ;; bool _joy_driver_enable_button
    1
    ;; bool _reduce_velocity_button
    1
    ;; bool _raise_velocity_button
    1
    ;; bool _reset_velocity_button
    1
    ;; float32 _vel_scale
    4
    ;; float32 _linear_velocity
    4
    ;; float32 _angular_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _joy_driver_status
       (write-long (length _joy_driver_status) s) (princ _joy_driver_status s)
     ;; float32[] _axes
     (write-long (length _axes) s)
     (dotimes (i (length _axes))
       (sys::poke (elt _axes i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool[] _button
     (write-long (length _button) s)
     (dotimes (i (length _button))
       (if (elt _button i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool _joy_driver_enable_button
       (if _joy_driver_enable_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _reduce_velocity_button
       (if _reduce_velocity_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _raise_velocity_button
       (if _raise_velocity_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_velocity_button
       (if _reset_velocity_button (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vel_scale
       (sys::poke _vel_scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _joy_driver_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joy_driver_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _axes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _axes (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _axes i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool[] _button
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _button (make-list n))
     (dotimes (i n)
     (setf (elt _button i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool _joy_driver_enable_button
     (setq _joy_driver_enable_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reduce_velocity_button
     (setq _reduce_velocity_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _raise_velocity_button
     (setq _raise_velocity_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_velocity_button
     (setq _reset_velocity_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vel_scale
     (setq _vel_scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get twinny_msgs::JoystickStatus :md5sum-) "ac111940512caeb23d072699a1470e96")
(setf (get twinny_msgs::JoystickStatus :datatype-) "twinny_msgs/JoystickStatus")
(setf (get twinny_msgs::JoystickStatus :definition-)
      "Header header 

string joy_driver_status         

float32[] axes                   

bool[] button    


bool joy_driver_enable_button    
bool reduce_velocity_button      
bool raise_velocity_button       
bool reset_velocity_button       

float32 vel_scale              

float32 linear_velocity          
float32 angular_velocity         


uint8 AXIS_LEFT_STICK_X = 0
uint8 AXIS_LEFT_STICK_Y = 1
uint8 AXIS_RIGHT_STICK_X = 2
uint8 AXIS_RIGHT_STICK_Y = 3
uint8 AXIS_DPAD_X = 4
uint8 AXIS_DPAD_Y = 5
uint8 AXIS_LEFT_TRIGGER = 6
uint8 AXIS_RIGHT_TRIGGER = 7


uint8 BUTTON_A = 0
uint8 BUTTON_B = 1
uint8 BUTTON_X = 2
uint8 BUTTON_Y = 3
uint8 BUTTON_LB = 4
uint8 BUTTON_RB = 5
uint8 BUTTON_BACK = 6
uint8 BUTTON_START = 7
uint8 BUTTON_GUIDE = 8
uint8 BUTTON_LEFT_STICK = 9
uint8 BUTTON_RIGHT_STICK = 10


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



(provide :twinny_msgs/JoystickStatus "ac111940512caeb23d072699a1470e96")


