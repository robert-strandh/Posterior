(cl:in-package #:posterior-mir-instructions)

;;; This instruction reads a memory location.  It has a single input
;;; which is the address of a location in memory.  It has a single
;;; output which is set to the contents of the memory location
;;; specified by the input.

(defclass memory-read-instruction (instruction one-successor-mixin)
  ((%address :initarg :address :reader address)
   (%datum :initarg :datum :reader datum)))
