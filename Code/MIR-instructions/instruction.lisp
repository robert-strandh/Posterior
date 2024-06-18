(cl:in-package #:posterior-mir-instructions)

(defclass instruction () ())

(defgeneric successor (instruction))

(defclass one-successor-mixin ()
  ((%successor :initarg :successor :accessor successor)))

(defgeneric successor1 (instruction))

(defgeneric successor2 (instruction))

(defclass two-successors-mixin ()
  ((%successor1 :initarg :successor1 :accessor successor1)
   (%successor2 :initarg :successor2 :accessor successor2)))

(defclass binary-operation-mixin () ())

(defclass unary-operation-mixin () ())

(defclass commutative-mixin () ())
