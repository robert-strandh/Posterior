(cl:in-package #:asdf-user)

(defsystem "posterior-mir-instructions"
  :serial t
  :components
  ((:file "packages")
   (:file "instruction")
   (:file "integer-arithmetic-instructions")
   (:file "bitwise-instructions")
   (:file "shift-instructions")
   (:file "memory-access-instructions")))
