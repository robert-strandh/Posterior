(cl:in-package #:posterior-mir-instructions)

(defgeneric comparand (instruction))

(defgeneric comparator (instruction))

(defclass comparison-mixin ()
  ((%comparand :initarg :comparand :reader comparand)
   (%comparator :initarg :comparator :reader comparator)))

(defclass signed-less-instruction
    (instruction
     two-successors-mixin
     comparison-mixin)
  ())

(defclass signed-not-greater-instruction
    (instruction
     two-successors-mixin
     comparison-mixin)
  ())

(defclass unsigned-less-instruction
    (instruction
     two-successors-mixin
     comparison-mixin)
  ())

(defclass unsigned-not-greater-instruction
    (instruction
     two-successors-mixin
     comparison-mixin)
  ())

(defclass equal-instruction
    (instruction
     two-successors-mixin
     comparison-mixin)
  ())
