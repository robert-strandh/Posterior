(cl:in-package #:posterior-mir-instructions)

(defclass new-virtual-register-instruction
    (one-successor-mixin instruction)
  ((%initial-value :initarg :initial-value :reader initial-value)
   (%virtual-register :initarg :virtual-register :reader virtual-register)))
