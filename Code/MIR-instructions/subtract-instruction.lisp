(cl:in-package #:posterior-mir-instructions)

(defgeneric minuend (instruction))

(defgeneric subtrahend (instruction))

(defgeneric difference (instruction))

(defclass integer-subtract-instruction
    (instruction
     one-successor-mixin
     binary-operation-mixin)
  ((%minuend :initarg :minuend :reader minuend)
   (%subtrahend :initarg :subtrahend :reader subtrahend)
   (%difference :initarg :difference :reader difference)))
