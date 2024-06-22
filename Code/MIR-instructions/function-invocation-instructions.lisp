(cl:in-package #:posterior-mir-instructions)

(defgeneric arguments (instruction))

(defgeneric return-values (instruction))

;;; This instruction has as many inputs as there are arguments at the
;;; call site.  Each input is either a virtual register, or a literal.
;;; It has as many outputs as the number of values that is expected at
;;; the call site.  Each output is a virtual register.
(defclass call-instruction (instruction)
  ((%arguments :initarg :arguments :reader arguments)
   (%return-values :initarg :return-values :reader return-values)))

;;; This instruction has as many inputs as there are values to be
;;; returned from a function call.
(defclass return-instruction (instruction)
  ((%return-values :initarg :return-values :reader return-values)))
