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
   #:commutative-mixin
   #:integer-add-instruction #:augend #:addend
   #:integer-subtract-instruction #:minuend #:subtrahend
   #:binary-bitwise-instruction
   #:bitwise-and-instruction
   #:bitwise-or-instruction
   #:bitwise-exclusive-or-instruction
   #:bitwise-not-instruction))
