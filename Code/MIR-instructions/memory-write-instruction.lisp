(cl:in-package #:posterior-mir-instructions)

;;; This instruction writes an item into a memory location.  It takes
;;; three inputs.  The first input is the base-address of a location
;;; in memory.  The second input is an offset to be added to the base
;;; address.  The third input is the datum to be stored in that
;;; location.  This instruction adds the input address to the offset
;;; and stores the input in the resulting address.  The offset must be
;;; a literal datum.

(defclass memset2-instruction (instruction one-successor-mixin)
  ((%base-address :initarg :base-address :reader base-address)
   (%offset :initarg :offset :reader offset)
   (%datum :initarg :datum :reader datum)))
