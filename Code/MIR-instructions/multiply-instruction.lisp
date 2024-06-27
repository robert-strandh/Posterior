(cl:in-package #:posterior-mir-instructions)

(defgeneric multiplicand (instruction))

(defgeneric multiplier (instruction))

(defgeneric product (instruction))

(defclass multiply-instruction
    (instruction
     one-successor-mixin
     binary-operation-mixin
     commutative-mixin)
  ((%multiplicand :initarg multiplicand :reader multiplicand)
   (%multiplier :initarg multiplier :reader multiplier)
   (%product :initarg :product :reader product)))
