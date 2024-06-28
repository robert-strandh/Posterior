(cl:in-package #:posterior-mir-instructions)

(defgeneric dividend (instruction))

(defgeneric divisor (instruction))

(defgeneric quotient (instruction))

(defgeneric remainder (instruction))

(defclass divide-instruction (one-successor-mixin instruction)
  ((%dividend :initarg :dividend :reader dividend)
   (%divisor :initarg :divisor :reader divisor)
   (%quotient :initarg :quotient :reader quotient)
   (%remainder :initarg :remainder :reader remainder)))
