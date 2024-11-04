;; Auto-generated. Do not edit!


(when (boundp 'trash_bot::UnitControl)
  (if (not (find-package "TRASH_BOT"))
    (make-package "TRASH_BOT"))
  (shadow 'UnitControl (find-package "TRASH_BOT")))
(unless (find-package "TRASH_BOT::UNITCONTROL")
  (make-package "TRASH_BOT::UNITCONTROL"))

(in-package "ROS")
;;//! \htmlinclude UnitControl.msg.html


(defclass trash_bot::UnitControl
  :super ros::object
  :slots (_time_stamp _target_object _action _command ))

(defmethod trash_bot::UnitControl
  (:init
   (&key
    ((:time_stamp __time_stamp) (instance ros::time :init))
    ((:target_object __target_object) 0)
    ((:action __action) 0)
    ((:command __command) "")
    )
   (send-super :init)
   (setq _time_stamp __time_stamp)
   (setq _target_object (round __target_object))
   (setq _action (round __action))
   (setq _command (string __command))
   self)
  (:time_stamp
   (&optional __time_stamp)
   (if __time_stamp (setq _time_stamp __time_stamp)) _time_stamp)
  (:target_object
   (&optional __target_object)
   (if __target_object (setq _target_object __target_object)) _target_object)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; time _time_stamp
    8
    ;; int32 _target_object
    4
    ;; int32 _action
    4
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time_stamp
       (write-long (send _time_stamp :sec) s) (write-long (send _time_stamp :nsec) s)
     ;; int32 _target_object
       (write-long _target_object s)
     ;; int32 _action
       (write-long _action s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time_stamp
     (send _time_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_object
     (setq _target_object (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get trash_bot::UnitControl :md5sum-) "cb3cb3b598c0c81e52aabe15081f3bd1")
(setf (get trash_bot::UnitControl :datatype-) "trash_bot/UnitControl")
(setf (get trash_bot::UnitControl :definition-)
      "

# 각 Unit에게 동작 요청하는 메세지 

time  time_stamp        # 발행 시간 
int32 target_object     # 대상 객체 (H/W Index Enum, unit_index.h)
int32 action            # 명령 동작 Action Index , unit_action_index.h
string command          # 명령 문자열 (ex. \"start\", \"stop\", \"reset\", \"pause\", \"resume\")
")



(provide :trash_bot/UnitControl "cb3cb3b598c0c81e52aabe15081f3bd1")


