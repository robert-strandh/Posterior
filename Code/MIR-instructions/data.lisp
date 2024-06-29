(cl:in-package #:posterior-mir-instructions)

(defclass datum () ())

(defgeneric value (literal))

(defclass literal (datum)
  ((%value :initarg :value :reader value)))

(defgeneric size (virtual-register))

(defclass virtual-register (datum)
  (;; This slot contains the size in bits of the virtual register.
   (%size :initarg :size :reader size)))

(defclass integer-virtual-register (virtual-register) ())

(defclass floating-point-virtual-register (virtual-register) ())
