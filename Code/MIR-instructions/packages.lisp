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
   #:add-instruction #:augend #:addend #:sum
   #:integer-subtract-instruction #:minuend #:subtrahend #:difference
   #:comparison-mixin #:comparand #:comparator
   #:signed-less-instruction
   #:signed-not-greater-instruction
   #:unsigned-less-instruction
   #:unsigned-not-greater-instruction
   #:equal-instruction
   #:binary-bitwise-instruction
   #:bitwise-and-instruction
   #:bitwise-or-instruction
   #:bitwise-exclusive-or-instruction
   #:bitwise-not-instruction))
