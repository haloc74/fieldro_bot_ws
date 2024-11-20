;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::LEDStateReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'LEDStateReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::LEDSTATEREPORT")
  (make-package "TWINNY_MSGS::LEDSTATEREPORT"))

(in-package "ROS")
;;//! \htmlinclude LEDStateReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATE_OFF*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*STATE_OFF* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*STATE_OFF* 0)
(intern "*STATE_ON*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*STATE_ON* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*STATE_ON* 1)
(intern "*STATE_BLINK*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*STATE_BLINK* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*STATE_BLINK* 2)
(intern "*STATE_ERROR*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*STATE_ERROR* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*STATE_ERROR* 3)
(intern "*LED_BAR_OFF*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_OFF* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_OFF* 0)
(intern "*LED_BAR_RED*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_RED* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_RED* 1)
(intern "*LED_BAR_GREEN*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_GREEN* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_GREEN* 2)
(intern "*LED_BAR_YELLOW*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_YELLOW* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_YELLOW* 3)
(intern "*LED_BAR_BLUE*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_BLUE* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_BLUE* 4)
(intern "*LED_BAR_MAGENTA*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_MAGENTA* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_MAGENTA* 5)
(intern "*LED_BAR_CYAN*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_CYAN* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_CYAN* 6)
(intern "*LED_BAR_WHITE*" (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(shadow '*LED_BAR_WHITE* (find-package "TWINNY_MSGS::LEDSTATEREPORT"))
(defconstant twinny_msgs::LEDStateReport::*LED_BAR_WHITE* 7)
(defclass twinny_msgs::LEDStateReport
  :super ros::object
  :slots (_header _type _LED_0_state _LED_1_state _LED_2_state _LED_3_state _LED_4_state _LED_5_state _SUB_LED_0_state _SUB_LED_1_state _SUB_LED_2_state _SUB_LED_3_state _SUB_LED_4_state _SUB_LED_5_state _LED_bar_color _LED_bar_state _LED_bar2_color _LED_bar2_state ))

(defmethod twinny_msgs::LEDStateReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:LED_0_state __LED_0_state) 0)
    ((:LED_1_state __LED_1_state) 0)
    ((:LED_2_state __LED_2_state) 0)
    ((:LED_3_state __LED_3_state) 0)
    ((:LED_4_state __LED_4_state) 0)
    ((:LED_5_state __LED_5_state) 0)
    ((:SUB_LED_0_state __SUB_LED_0_state) 0)
    ((:SUB_LED_1_state __SUB_LED_1_state) 0)
    ((:SUB_LED_2_state __SUB_LED_2_state) 0)
    ((:SUB_LED_3_state __SUB_LED_3_state) 0)
    ((:SUB_LED_4_state __SUB_LED_4_state) 0)
    ((:SUB_LED_5_state __SUB_LED_5_state) 0)
    ((:LED_bar_color __LED_bar_color) 0)
    ((:LED_bar_state __LED_bar_state) 0)
    ((:LED_bar2_color __LED_bar2_color) 0)
    ((:LED_bar2_state __LED_bar2_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _LED_0_state (round __LED_0_state))
   (setq _LED_1_state (round __LED_1_state))
   (setq _LED_2_state (round __LED_2_state))
   (setq _LED_3_state (round __LED_3_state))
   (setq _LED_4_state (round __LED_4_state))
   (setq _LED_5_state (round __LED_5_state))
   (setq _SUB_LED_0_state (round __SUB_LED_0_state))
   (setq _SUB_LED_1_state (round __SUB_LED_1_state))
   (setq _SUB_LED_2_state (round __SUB_LED_2_state))
   (setq _SUB_LED_3_state (round __SUB_LED_3_state))
   (setq _SUB_LED_4_state (round __SUB_LED_4_state))
   (setq _SUB_LED_5_state (round __SUB_LED_5_state))
   (setq _LED_bar_color (round __LED_bar_color))
   (setq _LED_bar_state (round __LED_bar_state))
   (setq _LED_bar2_color (round __LED_bar2_color))
   (setq _LED_bar2_state (round __LED_bar2_state))
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
  (:LED_0_state
   (&optional __LED_0_state)
   (if __LED_0_state (setq _LED_0_state __LED_0_state)) _LED_0_state)
  (:LED_1_state
   (&optional __LED_1_state)
   (if __LED_1_state (setq _LED_1_state __LED_1_state)) _LED_1_state)
  (:LED_2_state
   (&optional __LED_2_state)
   (if __LED_2_state (setq _LED_2_state __LED_2_state)) _LED_2_state)
  (:LED_3_state
   (&optional __LED_3_state)
   (if __LED_3_state (setq _LED_3_state __LED_3_state)) _LED_3_state)
  (:LED_4_state
   (&optional __LED_4_state)
   (if __LED_4_state (setq _LED_4_state __LED_4_state)) _LED_4_state)
  (:LED_5_state
   (&optional __LED_5_state)
   (if __LED_5_state (setq _LED_5_state __LED_5_state)) _LED_5_state)
  (:SUB_LED_0_state
   (&optional __SUB_LED_0_state)
   (if __SUB_LED_0_state (setq _SUB_LED_0_state __SUB_LED_0_state)) _SUB_LED_0_state)
  (:SUB_LED_1_state
   (&optional __SUB_LED_1_state)
   (if __SUB_LED_1_state (setq _SUB_LED_1_state __SUB_LED_1_state)) _SUB_LED_1_state)
  (:SUB_LED_2_state
   (&optional __SUB_LED_2_state)
   (if __SUB_LED_2_state (setq _SUB_LED_2_state __SUB_LED_2_state)) _SUB_LED_2_state)
  (:SUB_LED_3_state
   (&optional __SUB_LED_3_state)
   (if __SUB_LED_3_state (setq _SUB_LED_3_state __SUB_LED_3_state)) _SUB_LED_3_state)
  (:SUB_LED_4_state
   (&optional __SUB_LED_4_state)
   (if __SUB_LED_4_state (setq _SUB_LED_4_state __SUB_LED_4_state)) _SUB_LED_4_state)
  (:SUB_LED_5_state
   (&optional __SUB_LED_5_state)
   (if __SUB_LED_5_state (setq _SUB_LED_5_state __SUB_LED_5_state)) _SUB_LED_5_state)
  (:LED_bar_color
   (&optional __LED_bar_color)
   (if __LED_bar_color (setq _LED_bar_color __LED_bar_color)) _LED_bar_color)
  (:LED_bar_state
   (&optional __LED_bar_state)
   (if __LED_bar_state (setq _LED_bar_state __LED_bar_state)) _LED_bar_state)
  (:LED_bar2_color
   (&optional __LED_bar2_color)
   (if __LED_bar2_color (setq _LED_bar2_color __LED_bar2_color)) _LED_bar2_color)
  (:LED_bar2_state
   (&optional __LED_bar2_state)
   (if __LED_bar2_state (setq _LED_bar2_state __LED_bar2_state)) _LED_bar2_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8 _LED_0_state
    1
    ;; uint8 _LED_1_state
    1
    ;; uint8 _LED_2_state
    1
    ;; uint8 _LED_3_state
    1
    ;; uint8 _LED_4_state
    1
    ;; uint8 _LED_5_state
    1
    ;; uint8 _SUB_LED_0_state
    1
    ;; uint8 _SUB_LED_1_state
    1
    ;; uint8 _SUB_LED_2_state
    1
    ;; uint8 _SUB_LED_3_state
    1
    ;; uint8 _SUB_LED_4_state
    1
    ;; uint8 _SUB_LED_5_state
    1
    ;; uint8 _LED_bar_color
    1
    ;; uint8 _LED_bar_state
    1
    ;; uint8 _LED_bar2_color
    1
    ;; uint8 _LED_bar2_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8 _LED_0_state
       (write-byte _LED_0_state s)
     ;; uint8 _LED_1_state
       (write-byte _LED_1_state s)
     ;; uint8 _LED_2_state
       (write-byte _LED_2_state s)
     ;; uint8 _LED_3_state
       (write-byte _LED_3_state s)
     ;; uint8 _LED_4_state
       (write-byte _LED_4_state s)
     ;; uint8 _LED_5_state
       (write-byte _LED_5_state s)
     ;; uint8 _SUB_LED_0_state
       (write-byte _SUB_LED_0_state s)
     ;; uint8 _SUB_LED_1_state
       (write-byte _SUB_LED_1_state s)
     ;; uint8 _SUB_LED_2_state
       (write-byte _SUB_LED_2_state s)
     ;; uint8 _SUB_LED_3_state
       (write-byte _SUB_LED_3_state s)
     ;; uint8 _SUB_LED_4_state
       (write-byte _SUB_LED_4_state s)
     ;; uint8 _SUB_LED_5_state
       (write-byte _SUB_LED_5_state s)
     ;; uint8 _LED_bar_color
       (write-byte _LED_bar_color s)
     ;; uint8 _LED_bar_state
       (write-byte _LED_bar_state s)
     ;; uint8 _LED_bar2_color
       (write-byte _LED_bar2_color s)
     ;; uint8 _LED_bar2_state
       (write-byte _LED_bar2_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _LED_0_state
     (setq _LED_0_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_1_state
     (setq _LED_1_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_2_state
     (setq _LED_2_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_3_state
     (setq _LED_3_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_4_state
     (setq _LED_4_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_5_state
     (setq _LED_5_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SUB_LED_0_state
     (setq _SUB_LED_0_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SUB_LED_1_state
     (setq _SUB_LED_1_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SUB_LED_2_state
     (setq _SUB_LED_2_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SUB_LED_3_state
     (setq _SUB_LED_3_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SUB_LED_4_state
     (setq _SUB_LED_4_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SUB_LED_5_state
     (setq _SUB_LED_5_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_bar_color
     (setq _LED_bar_color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_bar_state
     (setq _LED_bar_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_bar2_color
     (setq _LED_bar2_color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LED_bar2_state
     (setq _LED_bar2_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::LEDStateReport :md5sum-) "fc4c0739dd32f45e85707b08066723b5")
(setf (get twinny_msgs::LEDStateReport :datatype-) "twinny_msgs/LEDStateReport")
(setf (get twinny_msgs::LEDStateReport :definition-)
      "Header header
string type

uint8 STATE_OFF=0
uint8 STATE_ON=1
uint8 STATE_BLINK=2
uint8 STATE_ERROR=3

uint8 LED_0_state
uint8 LED_1_state
uint8 LED_2_state
uint8 LED_3_state
uint8 LED_4_state
uint8 LED_5_state

uint8 SUB_LED_0_state
uint8 SUB_LED_1_state
uint8 SUB_LED_2_state
uint8 SUB_LED_3_state
uint8 SUB_LED_4_state
uint8 SUB_LED_5_state

uint8 LED_bar_color
uint8 LED_bar_state

uint8 LED_bar2_color
uint8 LED_bar2_state

uint8 LED_BAR_OFF = 0
uint8 LED_BAR_RED = 1
uint8 LED_BAR_GREEN = 2
uint8 LED_BAR_YELLOW = 3
uint8 LED_BAR_BLUE = 4
uint8 LED_BAR_MAGENTA = 5
uint8 LED_BAR_CYAN = 6
uint8 LED_BAR_WHITE = 7

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



(provide :twinny_msgs/LEDStateReport "fc4c0739dd32f45e85707b08066723b5")


