;; Auto-generated. Do not edit!


(when (boundp 'trash_bot::Pose)
  (if (not (find-package "TRASH_BOT"))
    (make-package "TRASH_BOT"))
  (shadow 'Pose (find-package "TRASH_BOT")))
(unless (find-package "TRASH_BOT::POSE")
  (make-package "TRASH_BOT::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html


(defclass trash_bot::Pose
  :super ros::object
  :slots (_x _y _theta _linear_velocity _angular_velocity _US_1 _US_2 _US_3 _US_4 _platform_state _left_motor_state _right_motor_state ))

(defmethod trash_bot::Pose
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:US_1 __US_1) 0)
    ((:US_2 __US_2) 0)
    ((:US_3 __US_3) 0)
    ((:US_4 __US_4) 0)
    ((:platform_state __platform_state) 0)
    ((:left_motor_state __left_motor_state) 0)
    ((:right_motor_state __right_motor_state) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   (setq _US_1 (round __US_1))
   (setq _US_2 (round __US_2))
   (setq _US_3 (round __US_3))
   (setq _US_4 (round __US_4))
   (setq _platform_state (round __platform_state))
   (setq _left_motor_state (round __left_motor_state))
   (setq _right_motor_state (round __right_motor_state))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:US_1
   (&optional __US_1)
   (if __US_1 (setq _US_1 __US_1)) _US_1)
  (:US_2
   (&optional __US_2)
   (if __US_2 (setq _US_2 __US_2)) _US_2)
  (:US_3
   (&optional __US_3)
   (if __US_3 (setq _US_3 __US_3)) _US_3)
  (:US_4
   (&optional __US_4)
   (if __US_4 (setq _US_4 __US_4)) _US_4)
  (:platform_state
   (&optional __platform_state)
   (if __platform_state (setq _platform_state __platform_state)) _platform_state)
  (:left_motor_state
   (&optional __left_motor_state)
   (if __left_motor_state (setq _left_motor_state __left_motor_state)) _left_motor_state)
  (:right_motor_state
   (&optional __right_motor_state)
   (if __right_motor_state (setq _right_motor_state __right_motor_state)) _right_motor_state)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ;; float32 _linear_velocity
    4
    ;; float32 _angular_velocity
    4
    ;; uint8 _US_1
    1
    ;; uint8 _US_2
    1
    ;; uint8 _US_3
    1
    ;; uint8 _US_4
    1
    ;; uint8 _platform_state
    1
    ;; uint8 _left_motor_state
    1
    ;; uint8 _right_motor_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _US_1
       (write-byte _US_1 s)
     ;; uint8 _US_2
       (write-byte _US_2 s)
     ;; uint8 _US_3
       (write-byte _US_3 s)
     ;; uint8 _US_4
       (write-byte _US_4 s)
     ;; uint8 _platform_state
       (write-byte _platform_state s)
     ;; uint8 _left_motor_state
       (write-byte _left_motor_state s)
     ;; uint8 _right_motor_state
       (write-byte _right_motor_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _US_1
     (setq _US_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _US_2
     (setq _US_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _US_3
     (setq _US_3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _US_4
     (setq _US_4 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _platform_state
     (setq _platform_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _left_motor_state
     (setq _left_motor_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_motor_state
     (setq _right_motor_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get trash_bot::Pose :md5sum-) "253d53f3482ae049afa845efe1727f65")
(setf (get trash_bot::Pose :datatype-) "trash_bot/Pose")
(setf (get trash_bot::Pose :definition-)
      "float32 x
float32 y
float32 theta
float32 linear_velocity
float32 angular_velocity
uint8 US_1
uint8 US_2
uint8 US_3
uint8 US_4
uint8 platform_state
uint8 left_motor_state
uint8 right_motor_state

")



(provide :trash_bot/Pose "253d53f3482ae049afa845efe1727f65")


