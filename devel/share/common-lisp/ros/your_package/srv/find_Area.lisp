; Auto-generated. Do not edit!


(cl:in-package your_package-srv)


;//! \htmlinclude find_Area-request.msg.html

(cl:defclass <find_Area-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0))
)

(cl:defclass find_Area-request (<find_Area-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <find_Area-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'find_Area-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<find_Area-request> is deprecated: use your_package-srv:find_Area-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <find_Area-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:A-val is deprecated.  Use your_package-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <find_Area-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:B-val is deprecated.  Use your_package-srv:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <find_Area-request>) ostream)
  "Serializes a message object of type '<find_Area-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <find_Area-request>) istream)
  "Deserializes a message object of type '<find_Area-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<find_Area-request>)))
  "Returns string type for a service object of type '<find_Area-request>"
  "your_package/find_AreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_Area-request)))
  "Returns string type for a service object of type 'find_Area-request"
  "your_package/find_AreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<find_Area-request>)))
  "Returns md5sum for a message object of type '<find_Area-request>"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'find_Area-request)))
  "Returns md5sum for a message object of type 'find_Area-request"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<find_Area-request>)))
  "Returns full string definition for message of type '<find_Area-request>"
  (cl:format cl:nil "int64 A~%int64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'find_Area-request)))
  "Returns full string definition for message of type 'find_Area-request"
  (cl:format cl:nil "int64 A~%int64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <find_Area-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <find_Area-request>))
  "Converts a ROS message object to a list"
  (cl:list 'find_Area-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
))
;//! \htmlinclude find_Area-response.msg.html

(cl:defclass <find_Area-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass find_Area-response (<find_Area-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <find_Area-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'find_Area-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<find_Area-response> is deprecated: use your_package-srv:find_Area-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <find_Area-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:result-val is deprecated.  Use your_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <find_Area-response>) ostream)
  "Serializes a message object of type '<find_Area-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <find_Area-response>) istream)
  "Deserializes a message object of type '<find_Area-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<find_Area-response>)))
  "Returns string type for a service object of type '<find_Area-response>"
  "your_package/find_AreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_Area-response)))
  "Returns string type for a service object of type 'find_Area-response"
  "your_package/find_AreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<find_Area-response>)))
  "Returns md5sum for a message object of type '<find_Area-response>"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'find_Area-response)))
  "Returns md5sum for a message object of type 'find_Area-response"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<find_Area-response>)))
  "Returns full string definition for message of type '<find_Area-response>"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'find_Area-response)))
  "Returns full string definition for message of type 'find_Area-response"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <find_Area-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <find_Area-response>))
  "Converts a ROS message object to a list"
  (cl:list 'find_Area-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'find_Area)))
  'find_Area-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'find_Area)))
  'find_Area-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_Area)))
  "Returns string type for a service object of type '<find_Area>"
  "your_package/find_Area")