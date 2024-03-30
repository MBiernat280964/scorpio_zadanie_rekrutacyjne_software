
(cl:in-package :asdf)

(defsystem "virtual_dc_motor-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "getMotorJointsLengths" :depends-on ("_package_getMotorJointsLengths"))
    (:file "_package_getMotorJointsLengths" :depends-on ("_package"))
  ))