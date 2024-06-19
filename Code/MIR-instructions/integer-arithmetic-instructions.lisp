(cl:in-package #:posterior-mir-instructions)

(defclass integer-add-instruction
    (instruction
     one-successor-mixin
     binary-operation-mixin
     commutative-mixin)
  ())

(defclass integer-subtract-instruction
    (instruction
     one-successor-mixin
     binary-operation-mixin)
  ())

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
