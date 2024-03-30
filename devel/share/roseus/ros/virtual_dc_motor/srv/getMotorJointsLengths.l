;; Auto-generated. Do not edit!


(when (boundp 'virtual_dc_motor::getMotorJointsLengths)
  (if (not (find-package "VIRTUAL_DC_MOTOR"))
    (make-package "VIRTUAL_DC_MOTOR"))
  (shadow 'getMotorJointsLengths (find-package "VIRTUAL_DC_MOTOR")))
(unless (find-package "VIRTUAL_DC_MOTOR::GETMOTORJOINTSLENGTHS")
  (make-package "VIRTUAL_DC_MOTOR::GETMOTORJOINTSLENGTHS"))
(unless (find-package "VIRTUAL_DC_MOTOR::GETMOTORJOINTSLENGTHSREQUEST")
  (make-package "VIRTUAL_DC_MOTOR::GETMOTORJOINTSLENGTHSREQUEST"))
(unless (find-package "VIRTUAL_DC_MOTOR::GETMOTORJOINTSLENGTHSRESPONSE")
  (make-package "VIRTUAL_DC_MOTOR::GETMOTORJOINTSLENGTHSRESPONSE"))

(in-package "ROS")





(defclass virtual_dc_motor::getMotorJointsLengthsRequest
  :super ros::object
  :slots ())

(defmethod virtual_dc_motor::getMotorJointsLengthsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass virtual_dc_motor::getMotorJointsLengthsResponse
  :super ros::object
  :slots (_data ))

(defmethod virtual_dc_motor::getMotorJointsLengthsResponse
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint16[] _data
    (* 2    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-word (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(defclass virtual_dc_motor::getMotorJointsLengths
  :super ros::object
  :slots ())

(setf (get virtual_dc_motor::getMotorJointsLengths :md5sum-) "e066daa5966378a57445687eb65bfa3b")
(setf (get virtual_dc_motor::getMotorJointsLengths :datatype-) "virtual_dc_motor/getMotorJointsLengths")
(setf (get virtual_dc_motor::getMotorJointsLengths :request) virtual_dc_motor::getMotorJointsLengthsRequest)
(setf (get virtual_dc_motor::getMotorJointsLengths :response) virtual_dc_motor::getMotorJointsLengthsResponse)

(defmethod virtual_dc_motor::getMotorJointsLengthsRequest
  (:response () (instance virtual_dc_motor::getMotorJointsLengthsResponse :init)))

(setf (get virtual_dc_motor::getMotorJointsLengthsRequest :md5sum-) "e066daa5966378a57445687eb65bfa3b")
(setf (get virtual_dc_motor::getMotorJointsLengthsRequest :datatype-) "virtual_dc_motor/getMotorJointsLengthsRequest")
(setf (get virtual_dc_motor::getMotorJointsLengthsRequest :definition-)
      "---
uint16[] data

")

(setf (get virtual_dc_motor::getMotorJointsLengthsResponse :md5sum-) "e066daa5966378a57445687eb65bfa3b")
(setf (get virtual_dc_motor::getMotorJointsLengthsResponse :datatype-) "virtual_dc_motor/getMotorJointsLengthsResponse")
(setf (get virtual_dc_motor::getMotorJointsLengthsResponse :definition-)
      "---
uint16[] data

")



(provide :virtual_dc_motor/getMotorJointsLengths "e066daa5966378a57445687eb65bfa3b")


