;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::CargoBoxLEDCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'CargoBoxLEDCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND")
  (make-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude CargoBoxLEDCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LED_BAR_OFF*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_OFF* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_OFF* 100)
(intern "*LED_BAR_RED*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_RED* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_RED* 101)
(intern "*LED_BAR_GREEN*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_GREEN* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_GREEN* 102)
(intern "*LED_BAR_YELLOW*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_YELLOW* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_YELLOW* 103)
(intern "*LED_BAR_BLUE*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_BLUE* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_BLUE* 104)
(intern "*LED_BAR_MAGENTA*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_MAGENTA* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_MAGENTA* 105)
(intern "*LED_BAR_CYAN*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_CYAN* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_CYAN* 106)
(intern "*LED_BAR_WHITE*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*LED_BAR_WHITE* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*LED_BAR_WHITE* 107)
(intern "*STATE_OFF*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*STATE_OFF* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*STATE_OFF* 0)
(intern "*STATE_ON*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*STATE_ON* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*STATE_ON* 1)
(intern "*STATE_BLINK*" (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(shadow '*STATE_BLINK* (find-package "TWINNY_MSGS::CARGOBOXLEDCOMMAND"))
(defconstant twinny_msgs::CargoBoxLEDCommand::*STATE_BLINK* 2)
(defclass twinny_msgs::CargoBoxLEDCommand
  :super ros::object
  :slots (_header _cargobox_id _cargobox_led_id _cargobox_led_status ))

(defmethod twinny_msgs::CargoBoxLEDCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cargobox_id __cargobox_id) 0)
    ((:cargobox_led_id __cargobox_led_id) 0)
    ((:cargobox_led_status __cargobox_led_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cargobox_id (round __cargobox_id))
   (setq _cargobox_led_id (round __cargobox_led_id))
   (setq _cargobox_led_status (round __cargobox_led_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cargobox_id
   (&optional __cargobox_id)
   (if __cargobox_id (setq _cargobox_id __cargobox_id)) _cargobox_id)
  (:cargobox_led_id
   (&optional __cargobox_led_id)
   (if __cargobox_led_id (setq _cargobox_led_id __cargobox_led_id)) _cargobox_led_id)
  (:cargobox_led_status
   (&optional __cargobox_led_status)
   (if __cargobox_led_status (setq _cargobox_led_status __cargobox_led_status)) _cargobox_led_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _cargobox_id
    1
    ;; uint8 _cargobox_led_id
    1
    ;; uint8 _cargobox_led_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _cargobox_id
       (write-byte _cargobox_id s)
     ;; uint8 _cargobox_led_id
       (write-byte _cargobox_led_id s)
     ;; uint8 _cargobox_led_status
       (write-byte _cargobox_led_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _cargobox_id
     (setq _cargobox_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cargobox_led_id
     (setq _cargobox_led_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cargobox_led_status
     (setq _cargobox_led_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get twinny_msgs::CargoBoxLEDCommand :md5sum-) "63d81b1bd2386d79a57290dc39a16fa5")
(setf (get twinny_msgs::CargoBoxLEDCommand :datatype-) "twinny_msgs/CargoBoxLEDCommand")
(setf (get twinny_msgs::CargoBoxLEDCommand :definition-)
      "Header header 

uint8 cargobox_id
uint8 cargobox_led_id
uint8 cargobox_led_status

uint8 LED_BAR_OFF = 100
uint8 LED_BAR_RED = 101
uint8 LED_BAR_GREEN = 102
uint8 LED_BAR_YELLOW = 103
uint8 LED_BAR_BLUE = 104
uint8 LED_BAR_MAGENTA = 105
uint8 LED_BAR_CYAN = 106
uint8 LED_BAR_WHITE = 107

uint8 STATE_OFF=0
uint8 STATE_ON=1
uint8 STATE_BLINK=2
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



(provide :twinny_msgs/CargoBoxLEDCommand "63d81b1bd2386d79a57290dc39a16fa5")


