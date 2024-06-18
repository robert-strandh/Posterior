(cl:in-package #:common-lisp-user)

(defpackage #:posterior-mir-instructions
  (:use #:common-lisp)
  (:export
   #:instruction
   #:one-successor-mixin #:successor
   #:two-successors-mixin
   #:successor1 #:successor2
   #:binary-operation-mixin
   #:unary-operation-mixin
   #:commutative-mixin))
