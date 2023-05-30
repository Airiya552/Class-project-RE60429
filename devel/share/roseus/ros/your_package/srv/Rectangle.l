;; Auto-generated. Do not edit!


(when (boundp 'your_package::Rectangle)
  (if (not (find-package "YOUR_PACKAGE"))
    (make-package "YOUR_PACKAGE"))
  (shadow 'Rectangle (find-package "YOUR_PACKAGE")))
(unless (find-package "YOUR_PACKAGE::RECTANGLE")
  (make-package "YOUR_PACKAGE::RECTANGLE"))
(unless (find-package "YOUR_PACKAGE::RECTANGLEREQUEST")
  (make-package "YOUR_PACKAGE::RECTANGLEREQUEST"))
(unless (find-package "YOUR_PACKAGE::RECTANGLERESPONSE")
  (make-package "YOUR_PACKAGE::RECTANGLERESPONSE"))

(in-package "ROS")





(defclass your_package::RectangleRequest
  :super ros::object
  :slots (_A _B ))

(defmethod your_package::RectangleRequest
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
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
    ;; int64 _A
    8
    ;; int64 _B
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _A
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _A (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _A) (= (length (_A . bv)) 2)) ;; bignum
              (write-long (ash (elt (_A . bv) 0) 0) s)
              (write-long (ash (elt (_A . bv) 1) -1) s))
             ((and (class _A) (= (length (_A . bv)) 1)) ;; big1
              (write-long (elt (_A . bv) 0) s)
              (write-long (if (>= _A 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _A s)(write-long (if (>= _A 0) 0 #xffffffff) s)))
     ;; int64 _B
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _B (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _B) (= (length (_B . bv)) 2)) ;; bignum
              (write-long (ash (elt (_B . bv) 0) 0) s)
              (write-long (ash (elt (_B . bv) 1) -1) s))
             ((and (class _B) (= (length (_B . bv)) 1)) ;; big1
              (write-long (elt (_B . bv) 0) s)
              (write-long (if (>= _B 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _B s)(write-long (if (>= _B 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _A
#+(or :alpha :irix6 :x86_64)
      (setf _A (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _A (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _B
#+(or :alpha :irix6 :x86_64)
      (setf _B (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _B (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass your_package::RectangleResponse
  :super ros::object
  :slots (_result ))

(defmethod your_package::RectangleResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int64 _result
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _result
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _result (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _result) (= (length (_result . bv)) 2)) ;; bignum
              (write-long (ash (elt (_result . bv) 0) 0) s)
              (write-long (ash (elt (_result . bv) 1) -1) s))
             ((and (class _result) (= (length (_result . bv)) 1)) ;; big1
              (write-long (elt (_result . bv) 0) s)
              (write-long (if (>= _result 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _result s)(write-long (if (>= _result 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _result
#+(or :alpha :irix6 :x86_64)
      (setf _result (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _result (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass your_package::Rectangle
  :super ros::object
  :slots ())

(setf (get your_package::Rectangle :md5sum-) "bf0fa91b106c4c70b086c80840d691a8")
(setf (get your_package::Rectangle :datatype-) "your_package/Rectangle")
(setf (get your_package::Rectangle :request) your_package::RectangleRequest)
(setf (get your_package::Rectangle :response) your_package::RectangleResponse)

(defmethod your_package::RectangleRequest
  (:response () (instance your_package::RectangleResponse :init)))

(setf (get your_package::RectangleRequest :md5sum-) "bf0fa91b106c4c70b086c80840d691a8")
(setf (get your_package::RectangleRequest :datatype-) "your_package/RectangleRequest")
(setf (get your_package::RectangleRequest :definition-)
      "int64 A
int64 B
---
int64 result

")

(setf (get your_package::RectangleResponse :md5sum-) "bf0fa91b106c4c70b086c80840d691a8")
(setf (get your_package::RectangleResponse :datatype-) "your_package/RectangleResponse")
(setf (get your_package::RectangleResponse :definition-)
      "int64 A
int64 B
---
int64 result

")



(provide :your_package/Rectangle "bf0fa91b106c4c70b086c80840d691a8")


