
(cl:in-package :asdf)

(defsystem "your_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Circle" :depends-on ("_package_Circle"))
    (:file "_package_Circle" :depends-on ("_package"))
    (:file "Rectangle" :depends-on ("_package_Rectangle"))
    (:file "_package_Rectangle" :depends-on ("_package"))
    (:file "Square" :depends-on ("_package_Square"))
    (:file "_package_Square" :depends-on ("_package"))
    (:file "Triangle" :depends-on ("_package_Triangle"))
    (:file "_package_Triangle" :depends-on ("_package"))
  ))