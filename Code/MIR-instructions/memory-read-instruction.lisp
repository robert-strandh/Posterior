(cl:in-package #:posterior-mir-instructions)

;;; This instruction reads a memory location.  It takes two inputs.
;;; The first input is the base-address of a location in memory.  The
;;; second input is an offset to be added to the base address.  It has
;;; a single output which is set to the contents of the memory
;;; location at the address specified by the input and the offset
;;; added together.  The offset must be a literal datum.

(defclass memory-read-instruction (instruction one-successor-mixin)
  ((%base-address :initarg :base-address :reader base-address)
   (%offset :initarg :offset :reader offset)))
