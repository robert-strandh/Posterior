(cl:in-package #:posterior-mir-instructions)

;;; This instruction is used to introduce a new virtual register.  It
;;; must dominate every instruction that references or assigns to the
;;; virtual register being introduced.  The initial value can be a
;;; literal or an existing virtual register.

(defclass new-virtual-register-instruction
    (one-successor-mixin instruction)
  ((%initial-value :initarg :initial-value :reader initial-value)
   (%virtual-register :initarg :virtual-register :reader virtual-register)))
