; Auto-generated. Do not edit!


(cl:in-package your_package-srv)


;//! \htmlinclude Rectangle-request.msg.html

(cl:defclass <Rectangle-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Rectangle-request (<Rectangle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rectangle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rectangle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Rectangle-request> is deprecated: use your_package-srv:Rectangle-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <Rectangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:A-val is deprecated.  Use your_package-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <Rectangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:B-val is deprecated.  Use your_package-srv:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rectangle-request>) ostream)
  "Serializes a message object of type '<Rectangle-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rectangle-request>) istream)
  "Deserializes a message object of type '<Rectangle-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rectangle-request>)))
  "Returns string type for a service object of type '<Rectangle-request>"
  "your_package/RectangleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rectangle-request)))
  "Returns string type for a service object of type 'Rectangle-request"
  "your_package/RectangleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rectangle-request>)))
  "Returns md5sum for a message object of type '<Rectangle-request>"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rectangle-request)))
  "Returns md5sum for a message object of type 'Rectangle-request"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rectangle-request>)))
  "Returns full string definition for message of type '<Rectangle-request>"
  (cl:format cl:nil "int64 A~%int64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rectangle-request)))
  "Returns full string definition for message of type 'Rectangle-request"
  (cl:format cl:nil "int64 A~%int64 B~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rectangle-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rectangle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Rectangle-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
))
;//! \htmlinclude Rectangle-response.msg.html

(cl:defclass <Rectangle-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass Rectangle-response (<Rectangle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rectangle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rectangle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name your_package-srv:<Rectangle-response> is deprecated: use your_package-srv:Rectangle-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Rectangle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader your_package-srv:result-val is deprecated.  Use your_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rectangle-response>) ostream)
  "Serializes a message object of type '<Rectangle-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rectangle-response>) istream)
  "Deserializes a message object of type '<Rectangle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rectangle-response>)))
  "Returns string type for a service object of type '<Rectangle-response>"
  "your_package/RectangleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rectangle-response)))
  "Returns string type for a service object of type 'Rectangle-response"
  "your_package/RectangleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rectangle-response>)))
  "Returns md5sum for a message object of type '<Rectangle-response>"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rectangle-response)))
  "Returns md5sum for a message object of type 'Rectangle-response"
  "bf0fa91b106c4c70b086c80840d691a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rectangle-response>)))
  "Returns full string definition for message of type '<Rectangle-response>"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rectangle-response)))
  "Returns full string definition for message of type 'Rectangle-response"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rectangle-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rectangle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Rectangle-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Rectangle)))
  'Rectangle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Rectangle)))
  'Rectangle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rectangle)))
  "Returns string type for a service object of type '<Rectangle>"
  "your_package/Rectangle")