; Auto-generated. Do not edit!


(cl:in-package virtual_dc_motor-srv)


;//! \htmlinclude getMotorJointsLengths-request.msg.html

(cl:defclass <getMotorJointsLengths-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getMotorJointsLengths-request (<getMotorJointsLengths-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMotorJointsLengths-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMotorJointsLengths-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name virtual_dc_motor-srv:<getMotorJointsLengths-request> is deprecated: use virtual_dc_motor-srv:getMotorJointsLengths-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMotorJointsLengths-request>) ostream)
  "Serializes a message object of type '<getMotorJointsLengths-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMotorJointsLengths-request>) istream)
  "Deserializes a message object of type '<getMotorJointsLengths-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMotorJointsLengths-request>)))
  "Returns string type for a service object of type '<getMotorJointsLengths-request>"
  "virtual_dc_motor/getMotorJointsLengthsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMotorJointsLengths-request)))
  "Returns string type for a service object of type 'getMotorJointsLengths-request"
  "virtual_dc_motor/getMotorJointsLengthsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMotorJointsLengths-request>)))
  "Returns md5sum for a message object of type '<getMotorJointsLengths-request>"
  "e066daa5966378a57445687eb65bfa3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMotorJointsLengths-request)))
  "Returns md5sum for a message object of type 'getMotorJointsLengths-request"
  "e066daa5966378a57445687eb65bfa3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMotorJointsLengths-request>)))
  "Returns full string definition for message of type '<getMotorJointsLengths-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMotorJointsLengths-request)))
  "Returns full string definition for message of type 'getMotorJointsLengths-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMotorJointsLengths-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMotorJointsLengths-request>))
  "Converts a ROS message object to a list"
  (cl:list 'getMotorJointsLengths-request
))
;//! \htmlinclude getMotorJointsLengths-response.msg.html

(cl:defclass <getMotorJointsLengths-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass getMotorJointsLengths-response (<getMotorJointsLengths-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getMotorJointsLengths-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getMotorJointsLengths-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name virtual_dc_motor-srv:<getMotorJointsLengths-response> is deprecated: use virtual_dc_motor-srv:getMotorJointsLengths-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <getMotorJointsLengths-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader virtual_dc_motor-srv:data-val is deprecated.  Use virtual_dc_motor-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getMotorJointsLengths-response>) ostream)
  "Serializes a message object of type '<getMotorJointsLengths-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getMotorJointsLengths-response>) istream)
  "Deserializes a message object of type '<getMotorJointsLengths-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getMotorJointsLengths-response>)))
  "Returns string type for a service object of type '<getMotorJointsLengths-response>"
  "virtual_dc_motor/getMotorJointsLengthsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMotorJointsLengths-response)))
  "Returns string type for a service object of type 'getMotorJointsLengths-response"
  "virtual_dc_motor/getMotorJointsLengthsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getMotorJointsLengths-response>)))
  "Returns md5sum for a message object of type '<getMotorJointsLengths-response>"
  "e066daa5966378a57445687eb65bfa3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getMotorJointsLengths-response)))
  "Returns md5sum for a message object of type 'getMotorJointsLengths-response"
  "e066daa5966378a57445687eb65bfa3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getMotorJointsLengths-response>)))
  "Returns full string definition for message of type '<getMotorJointsLengths-response>"
  (cl:format cl:nil "uint16[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getMotorJointsLengths-response)))
  "Returns full string definition for message of type 'getMotorJointsLengths-response"
  (cl:format cl:nil "uint16[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getMotorJointsLengths-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getMotorJointsLengths-response>))
  "Converts a ROS message object to a list"
  (cl:list 'getMotorJointsLengths-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'getMotorJointsLengths)))
  'getMotorJointsLengths-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'getMotorJointsLengths)))
  'getMotorJointsLengths-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getMotorJointsLengths)))
  "Returns string type for a service object of type '<getMotorJointsLengths>"
  "virtual_dc_motor/getMotorJointsLengths")