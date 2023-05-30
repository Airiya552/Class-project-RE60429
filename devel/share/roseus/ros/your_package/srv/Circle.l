;; Auto-generated. Do not edit!


(when (boundp 'your_package::Circle)
  (if (not (find-package "YOUR_PACKAGE"))
    (make-package "YOUR_PACKAGE"))
  (shadow 'Circle (find-package "YOUR_PACKAGE")))
(unless (find-package "YOUR_PACKAGE::CIRCLE")
  (make-package "YOUR_PACKAGE::CIRCLE"))
(unless (find-package "YOUR_PACKAGE::CIRCLEREQUEST")
  (make-package "YOUR_PACKAGE::CIRCLEREQUEST"))
(unless (find-package "YOUR_PACKAGE::CIRCLERESPONSE")
  (make-package "YOUR_PACKAGE::CIRCLERESPONSE"))

(in-package "ROS")





(defclass your_package::CircleRequest
  :super ros::object
  :slots (_A ))

(defmethod your_package::CircleRequest
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

(defclass your_package::CircleResponse
  :super ros::object
  :slots (_result ))

(defmethod your_package::CircleResponse
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

(defclass your_package::Circle
  :super ros::object
  :slots ())

(setf (get your_package::Circle :md5sum-) "5679ee031be5856b91b9f28dfed8edff")
(setf (get your_package::Circle :datatype-) "your_package/Circle")
(setf (get your_package::Circle :request) your_package::CircleRequest)
(setf (get your_package::Circle :response) your_package::CircleResponse)

(defmethod your_package::CircleRequest
  (:response () (instance your_package::CircleResponse :init)))

(setf (get your_package::CircleRequest :md5sum-) "5679ee031be5856b91b9f28dfed8edff")
(setf (get your_package::CircleRequest :datatype-) "your_package/CircleRequest")
(setf (get your_package::CircleRequest :definition-)
      "float32 A
---
float32 result

")

(setf (get your_package::CircleResponse :md5sum-) "5679ee031be5856b91b9f28dfed8edff")
(setf (get your_package::CircleResponse :datatype-) "your_package/CircleResponse")
(setf (get your_package::CircleResponse :definition-)
      "float32 A
---
float32 result

")



(provide :your_package/Circle "5679ee031be5856b91b9f28dfed8edff")


