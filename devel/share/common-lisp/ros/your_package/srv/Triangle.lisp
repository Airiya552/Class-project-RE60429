; Auto-generated. Do not edit!


(cl:in-package your_package-srv)


;//! \htmlinclude Triangle-request.msg.html

(cl:defclass <Triangle-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:float
    :initform 0.0)
   (B
    :reader B
    :initarg :B
    :type cl:float
    :initform 0.0))
)

(cl:defclass Triangle-request (<Triangle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Triangle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Triangle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Triangle-request> is deprecated: use your_package-srv:Triangle-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <Triangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:A-val is deprecated.  Use your_package-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <Triangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:B-val is deprecated.  Use your_package-srv:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Triangle-request>) ostream)
  "Serializes a message object of type '<Triangle-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Triangle-request>) istream)
  "Deserializes a message object of type '<Triangle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Triangle-request>)))
  "Returns string type for a service object of type '<Triangle-request>"
  "your_package/TriangleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Triangle-request)))
  "Returns string type for a service object of type 'Triangle-request"
  "your_package/TriangleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Triangle-request>)))
  "Returns md5sum for a message object of type '<Triangle-request>"
  "16da0fba2ffd05912bc0c78d91df2ea2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Triangle-request)))
  "Returns md5sum for a message object of type 'Triangle-request"
  "16da0fba2ffd05912bc0c78d91df2ea2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Triangle-request>)))
  "Returns full string definition for message of type '<Triangle-request>"
  (cl:format cl:nil "float32 A~%float32 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Triangle-request)))
  "Returns full string definition for message of type 'Triangle-request"
  (cl:format cl:nil "float32 A~%float32 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Triangle-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Triangle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Triangle-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
))
;//! \htmlinclude Triangle-response.msg.html

(cl:defclass <Triangle-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass Triangle-response (<Triangle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Triangle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Triangle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Triangle-response> is deprecated: use your_package-srv:Triangle-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Triangle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:result-val is deprecated.  Use your_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Triangle-response>) ostream)
  "Serializes a message object of type '<Triangle-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Triangle-response>) istream)
  "Deserializes a message object of type '<Triangle-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Triangle-response>)))
  "Returns string type for a service object of type '<Triangle-response>"
  "your_package/TriangleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Triangle-response)))
  "Returns string type for a service object of type 'Triangle-response"
  "your_package/TriangleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Triangle-response>)))
  "Returns md5sum for a message object of type '<Triangle-response>"
  "16da0fba2ffd05912bc0c78d91df2ea2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Triangle-response)))
  "Returns md5sum for a message object of type 'Triangle-response"
  "16da0fba2ffd05912bc0c78d91df2ea2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Triangle-response>)))
  "Returns full string definition for message of type '<Triangle-response>"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Triangle-response)))
  "Returns full string definition for message of type 'Triangle-response"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Triangle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Triangle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Triangle-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Triangle)))
  'Triangle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Triangle)))
  'Triangle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Triangle)))
  "Returns string type for a service object of type '<Triangle>"
  "your_package/Triangle")