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

(defgeneric comparand (instruction))

(defgeneric comparator (instruction))

(defclass comparison-mixin ()
  ((%comparand :initarg :comparand :reader comparand)
   (%comparator :initarg :comparator :reader comparator)))

(defclass signed-less-instruction
    (instruction
     multiple-successors-mixin
     comparison-mixin)
  ())

(defclass signed-not-greater-instruction
    (instruction
     multiple-successors-mixin
     comparison-mixin)
  ())

(defclass unsigned-divide-instruction
    (instruction one-successor-mixin)
  ())

(defclass unsigned-less-instruction
    (instruction
     multiple-successors-mixin
     comparison-mixin)
  ())

(defclass unsigned-not-greater-instruction
    (instruction
     multiple-successors-mixin
     comparison-mixin)
  ())

(defclass equal-instruction
    (instruction
     multiple-successors-mixin
     comparison-mixin)
  ())

(defclass negate-instruction (instruction one-successor-mixin)
  ())
