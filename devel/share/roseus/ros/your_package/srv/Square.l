;; Auto-generated. Do not edit!


(when (boundp 'your_package::Square)
  (if (not (find-package "YOUR_PACKAGE"))
    (make-package "YOUR_PACKAGE"))
  (shadow 'Square (find-package "YOUR_PACKAGE")))
(unless (find-package "YOUR_PACKAGE::SQUARE")
  (make-package "YOUR_PACKAGE::SQUARE"))
(unless (find-package "YOUR_PACKAGE::SQUAREREQUEST")
  (make-package "YOUR_PACKAGE::SQUAREREQUEST"))
(unless (find-package "YOUR_PACKAGE::SQUARERESPONSE")
  (make-package "YOUR_PACKAGE::SQUARERESPONSE"))

(in-package "ROS")





(defclass your_package::SquareRequest
  :super ros::object
  :slots (_A ))

(defmethod your_package::SquareRequest
  (:init
   (&key
    ((:A __A) 0.0)
    )
   (send-super :init)
   (setq _A (float __A))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:serialization-length
   ()
   (+
    ;; float32 _A
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _A
       (sys::poke _A (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _A
     (setq _A (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass your_package::SquareResponse
  :super ros::object
  :slots (_result ))

(defmethod your_package::SquareResponse
  (:init
   (&key
    ((:result __result) 0.0)
    )
   (send-super :init)
   (setq _result (float __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _result
       (sys::poke _result (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _result
     (setq _result (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass your_package::Square
  :super ros::object
  :slots ())

(setf (get your_package::Square :md5sum-) "5679ee031be5856b91b9f28dfed8edff")
(setf (get your_package::Square :datatype-) "your_package/Square")
(setf (get your_package::Square :request) your_package::SquareRequest)
(setf (get your_package::Square :response) your_package::SquareResponse)

(defmethod your_package::SquareRequest
  (:response () (instance your_package::SquareResponse :init)))

(setf (get your_package::SquareRequest :md5sum-) "5679ee031be5856b91b9f28dfed8edff")
(setf (get your_package::SquareRequest :datatype-) "your_package/SquareRequest")
(setf (get your_package::SquareRequest :definition-)
      "float32 A
---
float32 result

")

(setf (get your_package::SquareResponse :md5sum-) "5679ee031be5856b91b9f28dfed8edff")
(setf (get your_package::SquareResponse :datatype-) "your_package/SquareResponse")
(setf (get your_package::SquareResponse :definition-)
      "float32 A
---
float32 result

")



(provide :your_package/Square "5679ee031be5856b91b9f28dfed8edff")


