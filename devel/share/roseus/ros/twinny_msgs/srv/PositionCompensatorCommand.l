;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::PositionCompensatorCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'PositionCompensatorCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMAND")
  (make-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMAND"))
(unless (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST")
  (make-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(unless (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE")
  (make-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(shadow '*START* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(defconstant twinny_msgs::PositionCompensatorCommandRequest::*START* 0)
(intern "*STOP*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(shadow '*STOP* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(defconstant twinny_msgs::PositionCompensatorCommandRequest::*STOP* 1)
(intern "*HANA_MACHINE_LONG*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(shadow '*HANA_MACHINE_LONG* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(defconstant twinny_msgs::PositionCompensatorCommandRequest::*HANA_MACHINE_LONG* 1)
(intern "*HANA_MACHINE_SHORT_SINGLE_EDGE*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(shadow '*HANA_MACHINE_SHORT_SINGLE_EDGE* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(defconstant twinny_msgs::PositionCompensatorCommandRequest::*HANA_MACHINE_SHORT_SINGLE_EDGE* 2)
(intern "*HANA_STOCKER*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(shadow '*HANA_STOCKER* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(defconstant twinny_msgs::PositionCompensatorCommandRequest::*HANA_STOCKER* 3)
(intern "*HANA_MACHINE_SHORT_DOUBLE_EDGE*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(shadow '*HANA_MACHINE_SHORT_DOUBLE_EDGE* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(defconstant twinny_msgs::PositionCompensatorCommandRequest::*HANA_MACHINE_SHORT_DOUBLE_EDGE* 4)
(intern "*NEPESARK_SHELF*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(shadow '*NEPESARK_SHELF* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDREQUEST"))
(defconstant twinny_msgs::PositionCompensatorCommandRequest::*NEPESARK_SHELF* 5)
(defclass twinny_msgs::PositionCompensatorCommandRequest
  :super ros::object
  :slots (_command _id _localized_line_A_x _localized_line_A_y _localized_line_B_x _localized_line_B_y _type _equipment_desired_x _equipment_desired_y ))

(defmethod twinny_msgs::PositionCompensatorCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:id __id) 0)
    ((:localized_line_A_x __localized_line_A_x) 0.0)
    ((:localized_line_A_y __localized_line_A_y) 0.0)
    ((:localized_line_B_x __localized_line_B_x) 0.0)
    ((:localized_line_B_y __localized_line_B_y) 0.0)
    ((:type __type) 0)
    ((:equipment_desired_x __equipment_desired_x) 0.0)
    ((:equipment_desired_y __equipment_desired_y) 0.0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _id (round __id))
   (setq _localized_line_A_x (float __localized_line_A_x))
   (setq _localized_line_A_y (float __localized_line_A_y))
   (setq _localized_line_B_x (float __localized_line_B_x))
   (setq _localized_line_B_y (float __localized_line_B_y))
   (setq _type (round __type))
   (setq _equipment_desired_x (float __equipment_desired_x))
   (setq _equipment_desired_y (float __equipment_desired_y))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:localized_line_A_x
   (&optional __localized_line_A_x)
   (if __localized_line_A_x (setq _localized_line_A_x __localized_line_A_x)) _localized_line_A_x)
  (:localized_line_A_y
   (&optional __localized_line_A_y)
   (if __localized_line_A_y (setq _localized_line_A_y __localized_line_A_y)) _localized_line_A_y)
  (:localized_line_B_x
   (&optional __localized_line_B_x)
   (if __localized_line_B_x (setq _localized_line_B_x __localized_line_B_x)) _localized_line_B_x)
  (:localized_line_B_y
   (&optional __localized_line_B_y)
   (if __localized_line_B_y (setq _localized_line_B_y __localized_line_B_y)) _localized_line_B_y)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:equipment_desired_x
   (&optional __equipment_desired_x)
   (if __equipment_desired_x (setq _equipment_desired_x __equipment_desired_x)) _equipment_desired_x)
  (:equipment_desired_y
   (&optional __equipment_desired_y)
   (if __equipment_desired_y (setq _equipment_desired_y __equipment_desired_y)) _equipment_desired_y)
  (:serialization-length
   ()
   (+
    ;; int32 _command
    4
    ;; int32 _id
    4
    ;; float64 _localized_line_A_x
    8
    ;; float64 _localized_line_A_y
    8
    ;; float64 _localized_line_B_x
    8
    ;; float64 _localized_line_B_y
    8
    ;; int32 _type
    4
    ;; float64 _equipment_desired_x
    8
    ;; float64 _equipment_desired_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _command
       (write-long _command s)
     ;; int32 _id
       (write-long _id s)
     ;; float64 _localized_line_A_x
       (sys::poke _localized_line_A_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _localized_line_A_y
       (sys::poke _localized_line_A_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _localized_line_B_x
       (sys::poke _localized_line_B_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _localized_line_B_y
       (sys::poke _localized_line_B_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _type
       (write-long _type s)
     ;; float64 _equipment_desired_x
       (sys::poke _equipment_desired_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _equipment_desired_y
       (sys::poke _equipment_desired_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _command
     (setq _command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _localized_line_A_x
     (setq _localized_line_A_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _localized_line_A_y
     (setq _localized_line_A_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _localized_line_B_x
     (setq _localized_line_B_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _localized_line_B_y
     (setq _localized_line_B_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _equipment_desired_x
     (setq _equipment_desired_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _equipment_desired_y
     (setq _equipment_desired_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(intern "*SUCCESS*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE"))
(shadow '*SUCCESS* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE"))
(defconstant twinny_msgs::PositionCompensatorCommandResponse::*SUCCESS* 1)
(intern "*NOT_READY*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE"))
(shadow '*NOT_READY* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE"))
(defconstant twinny_msgs::PositionCompensatorCommandResponse::*NOT_READY* -1)
(intern "*WRONG_COMMAND*" (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE"))
(shadow '*WRONG_COMMAND* (find-package "TWINNY_MSGS::POSITIONCOMPENSATORCOMMANDRESPONSE"))
(defconstant twinny_msgs::PositionCompensatorCommandResponse::*WRONG_COMMAND* -99)
(defclass twinny_msgs::PositionCompensatorCommandResponse
  :super ros::object
  :slots (_result ))

(defmethod twinny_msgs::PositionCompensatorCommandResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass twinny_msgs::PositionCompensatorCommand
  :super ros::object
  :slots ())

(setf (get twinny_msgs::PositionCompensatorCommand :md5sum-) "64c066ac648eab7e36cd5c86a14aa3c6")
(setf (get twinny_msgs::PositionCompensatorCommand :datatype-) "twinny_msgs/PositionCompensatorCommand")
(setf (get twinny_msgs::PositionCompensatorCommand :request) twinny_msgs::PositionCompensatorCommandRequest)
(setf (get twinny_msgs::PositionCompensatorCommand :response) twinny_msgs::PositionCompensatorCommandResponse)

(defmethod twinny_msgs::PositionCompensatorCommandRequest
  (:response () (instance twinny_msgs::PositionCompensatorCommandResponse :init)))

(setf (get twinny_msgs::PositionCompensatorCommandRequest :md5sum-) "64c066ac648eab7e36cd5c86a14aa3c6")
(setf (get twinny_msgs::PositionCompensatorCommandRequest :datatype-) "twinny_msgs/PositionCompensatorCommandRequest")
(setf (get twinny_msgs::PositionCompensatorCommandRequest :definition-)
      "int32 START = 0
int32 STOP = 1
int32 command

int32 id

float64 localized_line_A_x
float64 localized_line_A_y
float64 localized_line_B_x
float64 localized_line_B_y

int32 HANA_MACHINE_LONG = 1
int32 HANA_MACHINE_SHORT_SINGLE_EDGE = 2
int32 HANA_STOCKER = 3
int32 HANA_MACHINE_SHORT_DOUBLE_EDGE = 4
int32 NEPESARK_SHELF = 5
int32 type

float64 equipment_desired_x
float64 equipment_desired_y
---
int32 SUCCESS = 1
int32 NOT_READY = -1
int32 WRONG_COMMAND = -99

int32 result

")

(setf (get twinny_msgs::PositionCompensatorCommandResponse :md5sum-) "64c066ac648eab7e36cd5c86a14aa3c6")
(setf (get twinny_msgs::PositionCompensatorCommandResponse :datatype-) "twinny_msgs/PositionCompensatorCommandResponse")
(setf (get twinny_msgs::PositionCompensatorCommandResponse :definition-)
      "int32 START = 0
int32 STOP = 1
int32 command

int32 id

float64 localized_line_A_x
float64 localized_line_A_y
float64 localized_line_B_x
float64 localized_line_B_y

int32 HANA_MACHINE_LONG = 1
int32 HANA_MACHINE_SHORT_SINGLE_EDGE = 2
int32 HANA_STOCKER = 3
int32 HANA_MACHINE_SHORT_DOUBLE_EDGE = 4
int32 NEPESARK_SHELF = 5
int32 type

float64 equipment_desired_x
float64 equipment_desired_y
---
int32 SUCCESS = 1
int32 NOT_READY = -1
int32 WRONG_COMMAND = -99

int32 result

")



(provide :twinny_msgs/PositionCompensatorCommand "64c066ac648eab7e36cd5c86a14aa3c6")


