;; Auto-generated. Do not edit!


(when (boundp 'your_package::Triangle)
  (if (not (find-package "YOUR_PACKAGE"))
    (make-package "YOUR_PACKAGE"))
  (shadow 'Triangle (find-package "YOUR_PACKAGE")))
(unless (find-package "YOUR_PACKAGE::TRIANGLE")
  (make-package "YOUR_PACKAGE::TRIANGLE"))
(unless (find-package "YOUR_PACKAGE::TRIANGLEREQUEST")
  (make-package "YOUR_PACKAGE::TRIANGLEREQUEST"))
(unless (find-package "YOUR_PACKAGE::TRIANGLERESPONSE")
  (make-package "YOUR_PACKAGE::TRIANGLERESPONSE"))

(in-package "ROS")





(defclass your_package::TriangleRequest
  :super ros::object
  :slots (_A _B ))

(defmethod your_package::TriangleRequest
  (:init
   (&key
    ((:A __A) 0.0)
    ((:B __B) 0.0)
    )
   (send-super :init)
   (setq _A (float __A))
   (setq _B (float __B))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:serialization-length
   ()
   (+
    ;; float32 _A
    4
    ;; float32 _B
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _A
       (sys::poke _A (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B
       (sys::poke _B (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _A
     (setq _A (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B
     (setq _B (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass your_package::TriangleResponse
  :super ros::object
  :slots (_result ))

(defmethod your_package::TriangleResponse
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

(defclass your_package::Triangle
  :super ros::object
  :slots ())

(setf (get your_package::Triangle :md5sum-) "16da0fba2ffd05912bc0c78d91df2ea2")
(setf (get your_package::Triangle :datatype-) "your_package/Triangle")
(setf (get your_package::Triangle :request) your_package::TriangleRequest)
(setf (get your_package::Triangle :response) your_package::TriangleResponse)

(defmethod your_package::TriangleRequest
  (:response () (instance your_package::TriangleResponse :init)))

(setf (get your_package::TriangleRequest :md5sum-) "16da0fba2ffd05912bc0c78d91df2ea2")
(setf (get your_package::TriangleRequest :datatype-) "your_package/TriangleRequest")
(setf (get your_package::TriangleRequest :definition-)
      "float32 A
float32 B
---
float32 result

")

(setf (get your_package::TriangleResponse :md5sum-) "16da0fba2ffd05912bc0c78d91df2ea2")
(setf (get your_package::TriangleResponse :datatype-) "your_package/TriangleResponse")
(setf (get your_package::TriangleResponse :definition-)
      "float32 A
float32 B
---
float32 result

")



(provide :your_package/Triangle "16da0fba2ffd05912bc0c78d91df2ea2")


