; Auto-generated. Do not edit!


(cl:in-package RosDispatcher-msg)


;//! \htmlinclude movement.msg.html

(cl:defclass <movement> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass movement (<movement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <movement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'movement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name RosDispatcher-msg:<movement> is deprecated: use RosDispatcher-msg:movement instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosDispatcher-msg:x-val is deprecated.  Use RosDispatcher-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader RosDispatcher-msg:y-val is deprecated.  Use RosDispatcher-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <movement>) ostream)
  "Serializes a message object of type '<movement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <movement>) istream)
  "Deserializes a message object of type '<movement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<movement>)))
  "Returns string type for a message object of type '<movement>"
  "RosDispatcher/movement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'movement)))
  "Returns string type for a message object of type 'movement"
  "RosDispatcher/movement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<movement>)))
  "Returns md5sum for a message object of type '<movement>"
  "727012f6868afa655d78dc8b436d2c91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'movement)))
  "Returns md5sum for a message object of type 'movement"
  "727012f6868afa655d78dc8b436d2c91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<movement>)))
  "Returns full string definition for message of type '<movement>"
  (cl:format cl:nil "uint8 x~%uint8 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'movement)))
  "Returns full string definition for message of type 'movement"
  (cl:format cl:nil "uint8 x~%uint8 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <movement>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <movement>))
  "Converts a ROS message object to a list"
  (cl:list 'movement
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
