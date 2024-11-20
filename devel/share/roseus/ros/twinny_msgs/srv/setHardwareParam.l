;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::setHardwareParam)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'setHardwareParam (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::SETHARDWAREPARAM")
  (make-package "TWINNY_MSGS::SETHARDWAREPARAM"))
(unless (find-package "TWINNY_MSGS::SETHARDWAREPARAMREQUEST")
  (make-package "TWINNY_MSGS::SETHARDWAREPARAMREQUEST"))
(unless (find-package "TWINNY_MSGS::SETHARDWAREPARAMRESPONSE")
  (make-package "TWINNY_MSGS::SETHARDWAREPARAMRESPONSE"))

(in-package "ROS")





(defclass twinny_msgs::setHardwareParamRequest
  :super ros::object
  :slots (_data ))

(defmethod twinny_msgs::setHardwareParamRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass twinny_msgs::setHardwareParamResponse
  :super ros::object
  :slots (_success_flag _data ))

(defmethod twinny_msgs::setHardwareParamResponse
  (:init
   (&key
    ((:success_flag __success_flag) nil)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _success_flag __success_flag)
   (setq _data (string __data))
   self)
  (:success_flag
   (&optional __success_flag)
   (if __success_flag (setq _success_flag __success_flag)) _success_flag)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _success_flag
    1
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success_flag
       (if _success_flag (write-byte -1 s) (write-byte 0 s))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success_flag
     (setq _success_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass twinny_msgs::setHardwareParam
  :super ros::object
  :slots ())

(setf (get twinny_msgs::setHardwareParam :md5sum-) "01cf8f3fd0d9c08e7ae80062dcbc18f2")
(setf (get twinny_msgs::setHardwareParam :datatype-) "twinny_msgs/setHardwareParam")
(setf (get twinny_msgs::setHardwareParam :request) twinny_msgs::setHardwareParamRequest)
(setf (get twinny_msgs::setHardwareParam :response) twinny_msgs::setHardwareParamResponse)

(defmethod twinny_msgs::setHardwareParamRequest
  (:response () (instance twinny_msgs::setHardwareParamResponse :init)))

(setf (get twinny_msgs::setHardwareParamRequest :md5sum-) "01cf8f3fd0d9c08e7ae80062dcbc18f2")
(setf (get twinny_msgs::setHardwareParamRequest :datatype-) "twinny_msgs/setHardwareParamRequest")
(setf (get twinny_msgs::setHardwareParamRequest :definition-)
      "string data                    # json 포멧으로 셋업 결과를 report
---
bool success_flag              # 셋업 성공시 success flag = true
string data                    # 응답: 저장된 json 데이터


")

(setf (get twinny_msgs::setHardwareParamResponse :md5sum-) "01cf8f3fd0d9c08e7ae80062dcbc18f2")
(setf (get twinny_msgs::setHardwareParamResponse :datatype-) "twinny_msgs/setHardwareParamResponse")
(setf (get twinny_msgs::setHardwareParamResponse :definition-)
      "string data                    # json 포멧으로 셋업 결과를 report
---
bool success_flag              # 셋업 성공시 success flag = true
string data                    # 응답: 저장된 json 데이터


")



(provide :twinny_msgs/setHardwareParam "01cf8f3fd0d9c08e7ae80062dcbc18f2")


