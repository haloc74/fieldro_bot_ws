;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::Kinematics_Mode)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'Kinematics_Mode (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::KINEMATICS_MODE")
  (make-package "TWINNY_MSGS::KINEMATICS_MODE"))
(unless (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST")
  (make-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(unless (find-package "TWINNY_MSGS::KINEMATICS_MODERESPONSE")
  (make-package "TWINNY_MSGS::KINEMATICS_MODERESPONSE"))

(in-package "ROS")





(intern "*REQUEST_MODE*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*REQUEST_MODE* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*REQUEST_MODE* 0)
(intern "*MANUAL_MODE*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*MANUAL_MODE* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*MANUAL_MODE* 1)
(intern "*AUTO_MODE*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*AUTO_MODE* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*AUTO_MODE* 2)
(intern "*IO_RESET_POSE*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*IO_RESET_POSE* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*IO_RESET_POSE* 3)
(intern "*IO_SET_POSE*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*IO_SET_POSE* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*IO_SET_POSE* 4)
(intern "*SET_ROBOT_RADIUS*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*SET_ROBOT_RADIUS* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*SET_ROBOT_RADIUS* 5)
(intern "*SET_WHEEL_RADIUS*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*SET_WHEEL_RADIUS* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*SET_WHEEL_RADIUS* 6)
(intern "*SET_GEAR_RATIO*" (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(shadow '*SET_GEAR_RATIO* (find-package "TWINNY_MSGS::KINEMATICS_MODEREQUEST"))
(defconstant twinny_msgs::Kinematics_ModeRequest::*SET_GEAR_RATIO* 7)
(defclass twinny_msgs::Kinematics_ModeRequest
  :super ros::object
  :slots (_input_mode _x _y _theta ))

(defmethod twinny_msgs::Kinematics_ModeRequest
  (:init
   (&key
    ((:input_mode __input_mode) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _input_mode (round __input_mode))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:input_mode
   (&optional __input_mode)
   (if __input_mode (setq _input_mode __input_mode)) _input_mode)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; uint8 _input_mode
    1
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _input_mode
       (write-byte _input_mode s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _input_mode
     (setq _input_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass twinny_msgs::Kinematics_ModeResponse
  :super ros::object
  :slots (_current_mode _current_arg ))

(defmethod twinny_msgs::Kinematics_ModeResponse
  (:init
   (&key
    ((:current_mode __current_mode) 0)
    ((:current_arg __current_arg) 0.0)
    )
   (send-super :init)
   (setq _current_mode (round __current_mode))
   (setq _current_arg (float __current_arg))
   self)
  (:current_mode
   (&optional __current_mode)
   (if __current_mode (setq _current_mode __current_mode)) _current_mode)
  (:current_arg
   (&optional __current_arg)
   (if __current_arg (setq _current_arg __current_arg)) _current_arg)
  (:serialization-length
   ()
   (+
    ;; uint8 _current_mode
    1
    ;; float64 _current_arg
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _current_mode
       (write-byte _current_mode s)
     ;; float64 _current_arg
       (sys::poke _current_arg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _current_mode
     (setq _current_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _current_arg
     (setq _current_arg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass twinny_msgs::Kinematics_Mode
  :super ros::object
  :slots ())

(setf (get twinny_msgs::Kinematics_Mode :md5sum-) "7998890966523349a389338408eec21f")
(setf (get twinny_msgs::Kinematics_Mode :datatype-) "twinny_msgs/Kinematics_Mode")
(setf (get twinny_msgs::Kinematics_Mode :request) twinny_msgs::Kinematics_ModeRequest)
(setf (get twinny_msgs::Kinematics_Mode :response) twinny_msgs::Kinematics_ModeResponse)

(defmethod twinny_msgs::Kinematics_ModeRequest
  (:response () (instance twinny_msgs::Kinematics_ModeResponse :init)))

(setf (get twinny_msgs::Kinematics_ModeRequest :md5sum-) "7998890966523349a389338408eec21f")
(setf (get twinny_msgs::Kinematics_ModeRequest :datatype-) "twinny_msgs/Kinematics_ModeRequest")
(setf (get twinny_msgs::Kinematics_ModeRequest :definition-)
      "uint8 REQUEST_MODE=0
uint8 MANUAL_MODE=1
uint8 AUTO_MODE=2

uint8 IO_RESET_POSE=3
uint8 IO_SET_POSE=4

uint8 SET_ROBOT_RADIUS=5
uint8 SET_WHEEL_RADIUS=6
uint8 SET_GEAR_RATIO=7

uint8 input_mode
float64 x
float64 y
float64 theta
---
uint8 current_mode
float64 current_arg
")

(setf (get twinny_msgs::Kinematics_ModeResponse :md5sum-) "7998890966523349a389338408eec21f")
(setf (get twinny_msgs::Kinematics_ModeResponse :datatype-) "twinny_msgs/Kinematics_ModeResponse")
(setf (get twinny_msgs::Kinematics_ModeResponse :definition-)
      "uint8 REQUEST_MODE=0
uint8 MANUAL_MODE=1
uint8 AUTO_MODE=2

uint8 IO_RESET_POSE=3
uint8 IO_SET_POSE=4

uint8 SET_ROBOT_RADIUS=5
uint8 SET_WHEEL_RADIUS=6
uint8 SET_GEAR_RATIO=7

uint8 input_mode
float64 x
float64 y
float64 theta
---
uint8 current_mode
float64 current_arg
")



(provide :twinny_msgs/Kinematics_Mode "7998890966523349a389338408eec21f")


