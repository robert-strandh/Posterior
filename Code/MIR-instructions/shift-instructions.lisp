(cl:in-package #:posterior-mir-instructions)

(defgeneric shifted-input (instruction))

(defgeneric shift-count (instruction))

(defclass shift-instruction
    (instruction
     one-successor-mixin
     binary-operation-mixin)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; MIR instruction SHIFT-LEFT-INSTRUCTION.

(defclass shift-left-instruction (shift-instruction)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; MIR instruction LOGIC-SHIFT-RIGHT-INSTRUCTION.

(defclass logic-shift-right-instruction (shift-instruction)
  ())

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; MIR instruction ARITHMETIC-SHIFT-RIGHT-INSTRUCTION.

(defclass arithmetic-shift-right-instruction (shift-instruction)
  ())
