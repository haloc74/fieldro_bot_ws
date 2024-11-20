;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::LEDControl)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'LEDControl (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::LEDCONTROL")
  (make-package "TWINNY_MSGS::LEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude LEDControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LED_0*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_0* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_0* 0)
(intern "*LED_1*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_1* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_1* 1)
(intern "*LED_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_2* 2)
(intern "*LED_3*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_3* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_3* 3)
(intern "*LED_4*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_4* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_4* 4)
(intern "*LED_5*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_5* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_5* 5)
(intern "*LED_6*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_6* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_6* 6)
(intern "*LED_7*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_7* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_7* 7)
(intern "*LED_8*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_8* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_8* 8)
(intern "*LED_9*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_9* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_9* 9)
(intern "*LED_10*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_10* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_10* 10)
(intern "*LED_11*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_11* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_11* 11)
(intern "*LED_BAR_OFF*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_OFF* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_OFF* 100)
(intern "*LED_BAR_RED*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_RED* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_RED* 101)
(intern "*LED_BAR_GREEN*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_GREEN* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_GREEN* 102)
(intern "*LED_BAR_YELLOW*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_YELLOW* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_YELLOW* 103)
(intern "*LED_BAR_BLUE*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_BLUE* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_BLUE* 104)
(intern "*LED_BAR_MAGENTA*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_MAGENTA* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_MAGENTA* 105)
(intern "*LED_BAR_CYAN*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_CYAN* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_CYAN* 106)
(intern "*LED_BAR_WHITE*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_WHITE* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_WHITE* 107)
(intern "*LED_BAR_OFF_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_OFF_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_OFF_2* 200)
(intern "*LED_BAR_RED_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_RED_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_RED_2* 201)
(intern "*LED_BAR_GREEN_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_GREEN_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_GREEN_2* 202)
(intern "*LED_BAR_YELLOW_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_YELLOW_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_YELLOW_2* 203)
(intern "*LED_BAR_BLUE_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_BLUE_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_BLUE_2* 204)
(intern "*LED_BAR_MAGENTA_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_MAGENTA_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_MAGENTA_2* 205)
(intern "*LED_BAR_CYAN_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_CYAN_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_CYAN_2* 206)
(intern "*LED_BAR_WHITE_2*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_BAR_WHITE_2* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_BAR_WHITE_2* 207)
(intern "*LED_ALL*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*LED_ALL* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*LED_ALL* 255)
(intern "*STATE_OFF*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*STATE_OFF* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*STATE_OFF* 0)
(intern "*STATE_ON*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*STATE_ON* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*STATE_ON* 1)
(intern "*STATE_BLINK*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*STATE_BLINK* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*STATE_BLINK* 2)
(intern "*STATE_KEEP*" (find-package "TWINNY_MSGS::LEDCONTROL"))
(shadow '*STATE_KEEP* (find-package "TWINNY_MSGS::LEDCONTROL"))
(defconstant twinny_msgs::LEDControl::*STATE_KEEP* 3)
(defclass twinny_msgs::LEDControl
  :super ros::object
  :slots (_header _type _ID _STATE ))

(defmethod twinny_msgs::LEDControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:ID __ID) 0)
    ((:STATE __STATE) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _ID (round __ID))
   (setq _STATE (round __STATE))
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
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:STATE
   (&optional __STATE)
   (if __STATE (setq _STATE __STATE)) _STATE)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8 _ID
    1
    ;; uint8 _STATE
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
     ;; uint8 _ID
       (write-byte _ID s)
     ;; uint8 _STATE
       (write-byte _STATE s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _STATE
     (setq _STATE (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::LEDControl :md5sum-) "280cc3f1ed08eaa950d3ccca2f9e6e3e")
(setf (get twinny_msgs::LEDControl :datatype-) "twinny_msgs/LEDControl")
(setf (get twinny_msgs::LEDControl :definition-)
      "Header header
string type

uint8 LED_0=0
uint8 LED_1=1
uint8 LED_2=2
uint8 LED_3=3 
uint8 LED_4=4
uint8 LED_5=5

uint8 LED_6=6
uint8 LED_7=7
uint8 LED_8=8
uint8 LED_9=9
uint8 LED_10=10
uint8 LED_11=11

uint8 LED_BAR_OFF=100
uint8 LED_BAR_RED=101
uint8 LED_BAR_GREEN=102
uint8 LED_BAR_YELLOW=103
uint8 LED_BAR_BLUE=104
uint8 LED_BAR_MAGENTA=105
uint8 LED_BAR_CYAN=106
uint8 LED_BAR_WHITE=107

uint8 LED_BAR_OFF_2=200
uint8 LED_BAR_RED_2=201
uint8 LED_BAR_GREEN_2=202
uint8 LED_BAR_YELLOW_2=203
uint8 LED_BAR_BLUE_2=204
uint8 LED_BAR_MAGENTA_2=205
uint8 LED_BAR_CYAN_2=206
uint8 LED_BAR_WHITE_2=207

uint8 LED_ALL=255

uint8 STATE_OFF=0
uint8 STATE_ON=1
uint8 STATE_BLINK=2
uint8 STATE_KEEP=3

uint8 ID
uint8 STATE

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



(provide :twinny_msgs/LEDControl "280cc3f1ed08eaa950d3ccca2f9e6e3e")


