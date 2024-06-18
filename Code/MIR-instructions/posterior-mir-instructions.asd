(cl:in-package #:asdf-user)

(defsystem "posterior-mir-instructions"
  :serial t
  :components
  ((:file "packages")
   (:file "instruction")
   (:file "bitwise-instructions")))
