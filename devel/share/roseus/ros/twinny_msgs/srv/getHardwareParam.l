;; Auto-generated. Do not edit!


(when (boundp 'twinny_msgs::getHardwareParam)
  (if (not (find-package "TWINNY_MSGS"))
    (make-package "TWINNY_MSGS"))
  (shadow 'getHardwareParam (find-package "TWINNY_MSGS")))
(unless (find-package "TWINNY_MSGS::GETHARDWAREPARAM")
  (make-package "TWINNY_MSGS::GETHARDWAREPARAM"))
(unless (find-package "TWINNY_MSGS::GETHARDWAREPARAMREQUEST")
  (make-package "TWINNY_MSGS::GETHARDWAREPARAMREQUEST"))
(unless (find-package "TWINNY_MSGS::GETHARDWAREPARAMRESPONSE")
  (make-package "TWINNY_MSGS::GETHARDWAREPARAMRESPONSE"))

(in-package "ROS")





(defclass twinny_msgs::getHardwareParamRequest
  :super ros::object
  :slots (_req ))

(defmethod twinny_msgs::getHardwareParamRequest
  (:init
   (&key
    ((:req __req) nil)
    )
   (send-super :init)
   (setq _req __req)
   self)
  (:req
   (&optional __req)
   (if __req (setq _req __req)) _req)
  (:serialization-length
   ()
   (+
    ;; bool _req
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _req
       (if _req (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _req
     (setq _req (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass twinny_msgs::getHardwareParamResponse
  :super ros::object
  :slots (_success _data ))

(defmethod twinny_msgs::getHardwareParamResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _data (string __data))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass twinny_msgs::getHardwareParam
  :super ros::object
  :slots ())

(setf (get twinny_msgs::getHardwareParam :md5sum-) "2ba2e28439eb9799620f616f7cd32879")
(setf (get twinny_msgs::getHardwareParam :datatype-) "twinny_msgs/getHardwareParam")
(setf (get twinny_msgs::getHardwareParam :request) twinny_msgs::getHardwareParamRequest)
(setf (get twinny_msgs::getHardwareParam :response) twinny_msgs::getHardwareParamResponse)

(defmethod twinny_msgs::getHardwareParamRequest
  (:response () (instance twinny_msgs::getHardwareParamResponse :init)))

(setf (get twinny_msgs::getHardwareParamRequest :md5sum-) "2ba2e28439eb9799620f616f7cd32879")
(setf (get twinny_msgs::getHardwareParamRequest :datatype-) "twinny_msgs/getHardwareParamRequest")
(setf (get twinny_msgs::getHardwareParamRequest :definition-)
      "bool req                    # request flag: true (요청) / false (요청 안함)
---
bool success                # 요청 성공시 success flag = true
string data                 # 응답: 저장된 json 데이터


")

(setf (get twinny_msgs::getHardwareParamResponse :md5sum-) "2ba2e28439eb9799620f616f7cd32879")
(setf (get twinny_msgs::getHardwareParamResponse :datatype-) "twinny_msgs/getHardwareParamResponse")
(setf (get twinny_msgs::getHardwareParamResponse :definition-)
      "bool req                    # request flag: true (요청) / false (요청 안함)
---
bool success                # 요청 성공시 success flag = true
string data                 # 응답: 저장된 json 데이터


")



(provide :twinny_msgs/getHardwareParam "2ba2e28439eb9799620f616f7cd32879")


