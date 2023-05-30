; Auto-generated. Do not edit!


(cl:in-package your_package-srv)


;//! \htmlinclude Square-request.msg.html

(cl:defclass <Square-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:float
    :initform 0.0))
)

(cl:defclass Square-request (<Square-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Square-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Square-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Square-request> is deprecated: use your_package-srv:Square-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <Square-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:A-val is deprecated.  Use your_package-srv:A instead.")
  (A m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Square-request>) ostream)
  "Serializes a message object of type '<Square-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Square-request>) istream)
  "Deserializes a message object of type '<Square-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Square-request>)))
  "Returns string type for a service object of type '<Square-request>"
  "your_package/SquareRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Square-request)))
  "Returns string type for a service object of type 'Square-request"
  "your_package/SquareRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Square-request>)))
  "Returns md5sum for a message object of type '<Square-request>"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Square-request)))
  "Returns md5sum for a message object of type 'Square-request"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Square-request>)))
  "Returns full string definition for message of type '<Square-request>"
  (cl:format cl:nil "float32 A~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Square-request)))
  "Returns full string definition for message of type 'Square-request"
  (cl:format cl:nil "float32 A~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Square-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Square-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Square-request
    (cl:cons ':A (A msg))
))
;//! \htmlinclude Square-response.msg.html

(cl:defclass <Square-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass Square-response (<Square-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Square-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Square-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Square-response> is deprecated: use your_package-srv:Square-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Square-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:result-val is deprecated.  Use your_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Square-response>) ostream)
  "Serializes a message object of type '<Square-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Square-response>) istream)
  "Deserializes a message object of type '<Square-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Square-response>)))
  "Returns string type for a service object of type '<Square-response>"
  "your_package/SquareResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Square-response)))
  "Returns string type for a service object of type 'Square-response"
  "your_package/SquareResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Square-response>)))
  "Returns md5sum for a message object of type '<Square-response>"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Square-response)))
  "Returns md5sum for a message object of type 'Square-response"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Square-response>)))
  "Returns full string definition for message of type '<Square-response>"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Square-response)))
  "Returns full string definition for message of type 'Square-response"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Square-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Square-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Square-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Square)))
  'Square-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Square)))
  'Square-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Square)))
  "Returns string type for a service object of type '<Square>"
  "your_package/Square")