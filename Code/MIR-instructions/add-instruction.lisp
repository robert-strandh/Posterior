(cl:in-package #:posterior-mir-instructions)

(defgeneric augend (instruction))

(defgeneric addend (instruction))

(defgeneric sum (instruction))

(defclass add-instruction
    (instruction
     one-successor-mixin
     binary-operation-mixin
     commutative-mixin)
  ((%augend :initarg augend :reader augend)
   (%addend :initarg addend :reader addend)
   (%sum :initarg :sum :reader sum)))
