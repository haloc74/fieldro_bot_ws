;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::CargoBoxReport)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'CargoBoxReport (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::CARGOBOXREPORT")
  (make-package "TWINNY_MSGS::CARGOBOXREPORT"))

(in-package "ROS")
;;//! \htmlinclude CargoBoxReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DOOR_LOCK_STATE_UNLOCKED*" (find-package "TWINNY_MSGS::CARGOBOXREPORT"))
(shadow '*DOOR_LOCK_STATE_UNLOCKED* (find-package "TWINNY_MSGS::CARGOBOXREPORT"))
(defconstant twinny_msgs::CargoBoxReport::*DOOR_LOCK_STATE_UNLOCKED* 0)
(intern "*DOOR_LOCK_STATE_LOCKED*" (find-package "TWINNY_MSGS::CARGOBOXREPORT"))
(shadow '*DOOR_LOCK_STATE_LOCKED* (find-package "TWINNY_MSGS::CARGOBOXREPORT"))
(defconstant twinny_msgs::CargoBoxReport::*DOOR_LOCK_STATE_LOCKED* 1)
(intern "*DOOR_LOCK_STATE_ERROR*" (find-package "TWINNY_MSGS::CARGOBOXREPORT"))
(shadow '*DOOR_LOCK_STATE_ERROR* (find-package "TWINNY_MSGS::CARGOBOXREPORT"))
(defconstant twinny_msgs::CargoBoxReport::*DOOR_LOCK_STATE_ERROR* -1)
(defclass twinny_msgs::CargoBoxReport
  :super ros::object
  :slots (_header _type _cargobox_id _door_lock_state _door_open_state _door_sensor_state _lamp_state _led_color _led_state _weight _x_coordinate _y_coordinate ))

(defmethod twinny_msgs::CargoBoxReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) "")
    ((:cargobox_id __cargobox_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:door_lock_state __door_lock_state) (make-array 0 :initial-element 0 :element-type :integer))
    ((:door_open_state __door_open_state) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:door_sensor_state __door_sensor_state) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:lamp_state __lamp_state) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:led_color __led_color) "")
    ((:led_state __led_state) "")
    ((:weight __weight) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:x_coordinate __x_coordinate) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y_coordinate __y_coordinate) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _cargobox_id __cargobox_id)
   (setq _door_lock_state __door_lock_state)
   (setq _door_open_state __door_open_state)
   (setq _door_sensor_state __door_sensor_state)
   (setq _lamp_state __lamp_state)
   (setq _led_color (string __led_color))
   (setq _led_state (string __led_state))
   (setq _weight __weight)
   (setq _x_coordinate __x_coordinate)
   (setq _y_coordinate __y_coordinate)
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
  (:cargobox_id
   (&optional __cargobox_id)
   (if __cargobox_id (setq _cargobox_id __cargobox_id)) _cargobox_id)
  (:door_lock_state
   (&optional __door_lock_state)
   (if __door_lock_state (setq _door_lock_state __door_lock_state)) _door_lock_state)
  (:door_open_state
   (&optional __door_open_state)
   (if __door_open_state (setq _door_open_state __door_open_state)) _door_open_state)
  (:door_sensor_state
   (&optional __door_sensor_state)
   (if __door_sensor_state (setq _door_sensor_state __door_sensor_state)) _door_sensor_state)
  (:lamp_state
   (&optional __lamp_state)
   (if __lamp_state (setq _lamp_state __lamp_state)) _lamp_state)
  (:led_color
   (&optional __led_color)
   (if __led_color (setq _led_color __led_color)) _led_color)
  (:led_state
   (&optional __led_state)
   (if __led_state (setq _led_state __led_state)) _led_state)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:x_coordinate
   (&optional __x_coordinate)
   (if __x_coordinate (setq _x_coordinate __x_coordinate)) _x_coordinate)
  (:y_coordinate
   (&optional __y_coordinate)
   (if __y_coordinate (setq _y_coordinate __y_coordinate)) _y_coordinate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _type
    4 (length _type)
    ;; uint8[] _cargobox_id
    (* 1    (length _cargobox_id)) 4
    ;; int32[] _door_lock_state
    (* 4    (length _door_lock_state)) 4
    ;; bool[] _door_open_state
    (* 1    (length _door_open_state)) 4
    ;; bool[] _door_sensor_state
    (* 1    (length _door_sensor_state)) 4
    ;; bool[] _lamp_state
    (* 1    (length _lamp_state)) 4
    ;; string _led_color
    4 (length _led_color)
    ;; string _led_state
    4 (length _led_state)
    ;; float32[] _weight
    (* 4    (length _weight)) 4
    ;; int8[] _x_coordinate
    (* 1    (length _x_coordinate)) 4
    ;; int8[] _y_coordinate
    (* 1    (length _y_coordinate)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8[] _cargobox_id
     (write-long (length _cargobox_id) s)
     (princ _cargobox_id s)
     ;; int32[] _door_lock_state
     (write-long (length _door_lock_state) s)
     (dotimes (i (length _door_lock_state))
       (write-long (elt _door_lock_state i) s)
       )
     ;; bool[] _door_open_state
     (write-long (length _door_open_state) s)
     (dotimes (i (length _door_open_state))
       (if (elt _door_open_state i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _door_sensor_state
     (write-long (length _door_sensor_state) s)
     (dotimes (i (length _door_sensor_state))
       (if (elt _door_sensor_state i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _lamp_state
     (write-long (length _lamp_state) s)
     (dotimes (i (length _lamp_state))
       (if (elt _lamp_state i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string _led_color
       (write-long (length _led_color) s) (princ _led_color s)
     ;; string _led_state
       (write-long (length _led_state) s) (princ _led_state s)
     ;; float32[] _weight
     (write-long (length _weight) s)
     (dotimes (i (length _weight))
       (sys::poke (elt _weight i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8[] _x_coordinate
     (write-long (length _x_coordinate) s)
     (dotimes (i (length _x_coordinate))
       (write-byte (elt _x_coordinate i) s)
       )
     ;; int8[] _y_coordinate
     (write-long (length _y_coordinate) s)
     (dotimes (i (length _y_coordinate))
       (write-byte (elt _y_coordinate i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[] _cargobox_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cargobox_id (make-array n :element-type :char))
     (replace _cargobox_id buf :start2 ptr-) (incf ptr- n))
   ;; int32[] _door_lock_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _door_lock_state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _door_lock_state i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _door_open_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _door_open_state (make-list n))
     (dotimes (i n)
     (setf (elt _door_open_state i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _door_sensor_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _door_sensor_state (make-list n))
     (dotimes (i n)
     (setf (elt _door_sensor_state i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _lamp_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lamp_state (make-list n))
     (dotimes (i n)
     (setf (elt _lamp_state i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string _led_color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _led_color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _led_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _led_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _weight
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weight (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _weight i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8[] _x_coordinate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_coordinate (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x_coordinate i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _x_coordinate i) 127) (setf (elt _x_coordinate i) (- (elt _x_coordinate i) 256)))
     ))
   ;; int8[] _y_coordinate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_coordinate (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y_coordinate i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _y_coordinate i) 127) (setf (elt _y_coordinate i) (- (elt _y_coordinate i) 256)))
     ))
   ;;
   self)
  )

(setf (get twinny_msgs::CargoBoxReport :md5sum-) "691cdd8fb0f467254faafb3ddd2b40aa")
(setf (get twinny_msgs::CargoBoxReport :datatype-) "twinny_msgs/CargoBoxReport")
(setf (get twinny_msgs::CargoBoxReport :definition-)
      "Header header
string type

int32 DOOR_LOCK_STATE_UNLOCKED=0
int32 DOOR_LOCK_STATE_LOCKED=1
int32 DOOR_LOCK_STATE_ERROR=-1

uint8[] cargobox_id                                

int32[] door_lock_state             

bool[] door_open_state              

bool[] door_sensor_state                             

bool[] lamp_state                   

string led_color
string led_state

float32[] weight    

int8[] x_coordinate                

int8[] y_coordinate                  
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



(provide :twinny_msgs/CargoBoxReport "691cdd8fb0f467254faafb3ddd2b40aa")


