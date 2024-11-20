;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::StationRecognizerCommand)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'StationRecognizerCommand (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMAND")
  (make-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMAND"))
(unless (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST")
  (make-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(unless (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE")
  (make-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*START*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(shadow '*START* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(defconstant twinny_msgs::StationRecognizerCommandRequest::*START* 0)
(intern "*STOP*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(shadow '*STOP* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(defconstant twinny_msgs::StationRecognizerCommandRequest::*STOP* 1)
(intern "*PAUSE*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(defconstant twinny_msgs::StationRecognizerCommandRequest::*PAUSE* 2)
(intern "*RESUME*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(shadow '*RESUME* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(defconstant twinny_msgs::StationRecognizerCommandRequest::*RESUME* 3)
(intern "*RESET_KALMAN*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(shadow '*RESET_KALMAN* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(defconstant twinny_msgs::StationRecognizerCommandRequest::*RESET_KALMAN* 4)
(intern "*GET_STATION*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(shadow '*GET_STATION* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDREQUEST"))
(defconstant twinny_msgs::StationRecognizerCommandRequest::*GET_STATION* 5)
(defclass twinny_msgs::StationRecognizerCommandRequest
  :super ros::object
  :slots (_type _command _frame_name _current_robot_pose _candidate_pose _roi_length _extra_field ))

(defmethod twinny_msgs::StationRecognizerCommandRequest
  (:init
   (&key
    ((:type __type) "")
    ((:command __command) 0)
    ((:frame_name __frame_name) "")
    ((:current_robot_pose __current_robot_pose) (instance geometry_msgs::Pose2D :init))
    ((:candidate_pose __candidate_pose) (instance geometry_msgs::Pose2D :init))
    ((:roi_length __roi_length) 0.0)
    ((:extra_field __extra_field) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _command (round __command))
   (setq _frame_name (string __frame_name))
   (setq _current_robot_pose __current_robot_pose)
   (setq _candidate_pose __candidate_pose)
   (setq _roi_length (float __roi_length))
   (setq _extra_field (string __extra_field))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:frame_name
   (&optional __frame_name)
   (if __frame_name (setq _frame_name __frame_name)) _frame_name)
  (:current_robot_pose
   (&rest __current_robot_pose)
   (if (keywordp (car __current_robot_pose))
       (send* _current_robot_pose __current_robot_pose)
     (progn
       (if __current_robot_pose (setq _current_robot_pose (car __current_robot_pose)))
       _current_robot_pose)))
  (:candidate_pose
   (&rest __candidate_pose)
   (if (keywordp (car __candidate_pose))
       (send* _candidate_pose __candidate_pose)
     (progn
       (if __candidate_pose (setq _candidate_pose (car __candidate_pose)))
       _candidate_pose)))
  (:roi_length
   (&optional __roi_length)
   (if __roi_length (setq _roi_length __roi_length)) _roi_length)
  (:extra_field
   (&optional __extra_field)
   (if __extra_field (setq _extra_field __extra_field)) _extra_field)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; uint8 _command
    1
    ;; string _frame_name
    4 (length _frame_name)
    ;; geometry_msgs/Pose2D _current_robot_pose
    (send _current_robot_pose :serialization-length)
    ;; geometry_msgs/Pose2D _candidate_pose
    (send _candidate_pose :serialization-length)
    ;; float64 _roi_length
    8
    ;; string _extra_field
    4 (length _extra_field)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8 _command
       (write-byte _command s)
     ;; string _frame_name
       (write-long (length _frame_name) s) (princ _frame_name s)
     ;; geometry_msgs/Pose2D _current_robot_pose
       (send _current_robot_pose :serialize s)
     ;; geometry_msgs/Pose2D _candidate_pose
       (send _candidate_pose :serialize s)
     ;; float64 _roi_length
       (sys::poke _roi_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _extra_field
       (write-long (length _extra_field) s) (princ _extra_field s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _frame_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _current_robot_pose
     (send _current_robot_pose :deserialize buf ptr-) (incf ptr- (send _current_robot_pose :serialization-length))
   ;; geometry_msgs/Pose2D _candidate_pose
     (send _candidate_pose :deserialize buf ptr-) (incf ptr- (send _candidate_pose :serialization-length))
   ;; float64 _roi_length
     (setq _roi_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _extra_field
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_field (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(intern "*SUCCESS*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*SUCCESS* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*SUCCESS* 1)
(intern "*FAIL*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*FAIL* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*FAIL* -1)
(intern "*ERROR*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*ERROR* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*ERROR* -999)
(intern "*INVALID_MODE*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*INVALID_MODE* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*INVALID_MODE* -10)
(intern "*INVALID_STATE*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*INVALID_STATE* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*INVALID_STATE* -11)
(intern "*INVALID_COMMAND*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*INVALID_COMMAND* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*INVALID_COMMAND* -12)
(intern "*INVALID_TYPE*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*INVALID_TYPE* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*INVALID_TYPE* -13)
(intern "*INVALID_FRAME*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*INVALID_FRAME* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*INVALID_FRAME* -14)
(intern "*INVALID_CURRENT*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*INVALID_CURRENT* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*INVALID_CURRENT* -15)
(intern "*NOT_WORKING_DUETO_TOO_CLOSED*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*NOT_WORKING_DUETO_TOO_CLOSED* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*NOT_WORKING_DUETO_TOO_CLOSED* -20)
(intern "*FAIL_DUETO_BOUND_ERROR*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*FAIL_DUETO_BOUND_ERROR* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*FAIL_DUETO_BOUND_ERROR* -21)
(intern "*FAIL_DUETO_SIZE_ERROR*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*FAIL_DUETO_SIZE_ERROR* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*FAIL_DUETO_SIZE_ERROR* -22)
(intern "*FAIL_DUETO_LENGTH_ERROR*" (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(shadow '*FAIL_DUETO_LENGTH_ERROR* (find-package "TWINNY_MSGS::STATIONRECOGNIZERCOMMANDRESPONSE"))
(defconstant twinny_msgs::StationRecognizerCommandResponse::*FAIL_DUETO_LENGTH_ERROR* -23)
(defclass twinny_msgs::StationRecognizerCommandResponse
  :super ros::object
  :slots (_result _is_find _estimated_station_pose _extra_field ))

(defmethod twinny_msgs::StationRecognizerCommandResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:is_find __is_find) nil)
    ((:estimated_station_pose __estimated_station_pose) (instance geometry_msgs::Pose2D :init))
    ((:extra_field __extra_field) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _is_find __is_find)
   (setq _estimated_station_pose __estimated_station_pose)
   (setq _extra_field (string __extra_field))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:is_find
   (&optional __is_find)
   (if __is_find (setq _is_find __is_find)) _is_find)
  (:estimated_station_pose
   (&rest __estimated_station_pose)
   (if (keywordp (car __estimated_station_pose))
       (send* _estimated_station_pose __estimated_station_pose)
     (progn
       (if __estimated_station_pose (setq _estimated_station_pose (car __estimated_station_pose)))
       _estimated_station_pose)))
  (:extra_field
   (&optional __extra_field)
   (if __extra_field (setq _extra_field __extra_field)) _extra_field)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; bool _is_find
    1
    ;; geometry_msgs/Pose2D _estimated_station_pose
    (send _estimated_station_pose :serialization-length)
    ;; string _extra_field
    4 (length _extra_field)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; bool _is_find
       (if _is_find (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose2D _estimated_station_pose
       (send _estimated_station_pose :serialize s)
     ;; string _extra_field
       (write-long (length _extra_field) s) (princ _extra_field s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_find
     (setq _is_find (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose2D _estimated_station_pose
     (send _estimated_station_pose :deserialize buf ptr-) (incf ptr- (send _estimated_station_pose :serialization-length))
   ;; string _extra_field
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extra_field (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass twinny_msgs::StationRecognizerCommand
  :super ros::object
  :slots ())

(setf (get twinny_msgs::StationRecognizerCommand :md5sum-) "fc40b6d334b5e6c2cc71670efc1b918a")
(setf (get twinny_msgs::StationRecognizerCommand :datatype-) "twinny_msgs/StationRecognizerCommand")
(setf (get twinny_msgs::StationRecognizerCommand :request) twinny_msgs::StationRecognizerCommandRequest)
(setf (get twinny_msgs::StationRecognizerCommand :response) twinny_msgs::StationRecognizerCommandResponse)

(defmethod twinny_msgs::StationRecognizerCommandRequest
  (:response () (instance twinny_msgs::StationRecognizerCommandResponse :init)))

(setf (get twinny_msgs::StationRecognizerCommandRequest :md5sum-) "fc40b6d334b5e6c2cc71670efc1b918a")
(setf (get twinny_msgs::StationRecognizerCommandRequest :datatype-) "twinny_msgs/StationRecognizerCommandRequest")
(setf (get twinny_msgs::StationRecognizerCommandRequest :definition-)
      "string type

uint8 START = 0
uint8 STOP = 1
uint8 PAUSE = 2
uint8 RESUME = 3
uint8 RESET_KALMAN = 4
uint8 GET_STATION = 5
uint8 command

string frame_name
geometry_msgs/Pose2D current_robot_pose
geometry_msgs/Pose2D candidate_pose

float64 roi_length

string extra_field

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
int32 SUCCESS = 1
int32 FAIL = -1
int32 ERROR = -999

int32 INVALID_MODE = -10
int32 INVALID_STATE= -11
int32 INVALID_COMMAND = -12
int32 INVALID_TYPE = -13
int32 INVALID_FRAME = -14
int32 INVALID_CURRENT = -15

int32 NOT_WORKING_DUETO_TOO_CLOSED = -20
int32 FAIL_DUETO_BOUND_ERROR = -21
int32 FAIL_DUETO_SIZE_ERROR = -22
int32 FAIL_DUETO_LENGTH_ERROR = -23

int32 result

bool is_find

geometry_msgs/Pose2D estimated_station_pose
string extra_field


================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")

(setf (get twinny_msgs::StationRecognizerCommandResponse :md5sum-) "fc40b6d334b5e6c2cc71670efc1b918a")
(setf (get twinny_msgs::StationRecognizerCommandResponse :datatype-) "twinny_msgs/StationRecognizerCommandResponse")
(setf (get twinny_msgs::StationRecognizerCommandResponse :definition-)
      "string type

uint8 START = 0
uint8 STOP = 1
uint8 PAUSE = 2
uint8 RESUME = 3
uint8 RESET_KALMAN = 4
uint8 GET_STATION = 5
uint8 command

string frame_name
geometry_msgs/Pose2D current_robot_pose
geometry_msgs/Pose2D candidate_pose

float64 roi_length

string extra_field

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
int32 SUCCESS = 1
int32 FAIL = -1
int32 ERROR = -999

int32 INVALID_MODE = -10
int32 INVALID_STATE= -11
int32 INVALID_COMMAND = -12
int32 INVALID_TYPE = -13
int32 INVALID_FRAME = -14
int32 INVALID_CURRENT = -15

int32 NOT_WORKING_DUETO_TOO_CLOSED = -20
int32 FAIL_DUETO_BOUND_ERROR = -21
int32 FAIL_DUETO_SIZE_ERROR = -22
int32 FAIL_DUETO_LENGTH_ERROR = -23

int32 result

bool is_find

geometry_msgs/Pose2D estimated_station_pose
string extra_field


================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :twinny_msgs/StationRecognizerCommand "fc40b6d334b5e6c2cc71670efc1b918a")


