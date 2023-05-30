; Auto-generated. Do not edit!


(cl:in-package your_package-srv)


;//! \htmlinclude Circle-request.msg.html

(cl:defclass <Circle-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:float
    :initform 0.0))
)

(cl:defclass Circle-request (<Circle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Circle-request> is deprecated: use your_package-srv:Circle-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <Circle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:A-val is deprecated.  Use your_package-srv:A instead.")
  (A m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circle-request>) ostream)
  "Serializes a message object of type '<Circle-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circle-request>) istream)
  "Deserializes a message object of type '<Circle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circle-request>)))
  "Returns string type for a service object of type '<Circle-request>"
  "your_package/CircleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circle-request)))
  "Returns string type for a service object of type 'Circle-request"
  "your_package/CircleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circle-request>)))
  "Returns md5sum for a message object of type '<Circle-request>"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circle-request)))
  "Returns md5sum for a message object of type 'Circle-request"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circle-request>)))
  "Returns full string definition for message of type '<Circle-request>"
  (cl:format cl:nil "float32 A~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circle-request)))
  "Returns full string definition for message of type 'Circle-request"
  (cl:format cl:nil "float32 A~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circle-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Circle-request
    (cl:cons ':A (A msg))
))
;//! \htmlinclude Circle-response.msg.html

(cl:defclass <Circle-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass Circle-response (<Circle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Circle-response> is deprecated: use your_package-srv:Circle-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Circle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:result-val is deprecated.  Use your_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circle-response>) ostream)
  "Serializes a message object of type '<Circle-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circle-response>) istream)
  "Deserializes a message object of type '<Circle-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circle-response>)))
  "Returns string type for a service object of type '<Circle-response>"
  "your_package/CircleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circle-response)))
  "Returns string type for a service object of type 'Circle-response"
  "your_package/CircleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circle-response>)))
  "Returns md5sum for a message object of type '<Circle-response>"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circle-response)))
  "Returns md5sum for a message object of type 'Circle-response"
  "5679ee031be5856b91b9f28dfed8edff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circle-response>)))
  "Returns full string definition for message of type '<Circle-response>"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circle-response)))
  "Returns full string definition for message of type 'Circle-response"
  (cl:format cl:nil "float32 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circle-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Circle-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Circle)))
  'Circle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Circle)))
  'Circle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circle)))
  "Returns string type for a service object of type '<Circle>"
  "your_package/Circle")