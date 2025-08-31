(cl:in-package #:posterior-mir-instructions)

;;; This instruction writes an item into a memory location.  It takes
;;; two inputs.  The first input is the address of a location in
;;; memory.  The second input is the datum to be stored in that
;;; location.

(defclass memory-write-instruction (instruction one-successor-mixin)
  ((%address :initarg :address :reader address)
   (%datum :initarg :datum :reader datum)))
