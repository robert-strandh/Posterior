(in-package #:asdf-user)

(defsystem "posterior-code-generation-risc-v"
  :depends-on ("posterior-mir-instructions"
               "cluster-risc-v")
  :serial t
  :components
  ((:file "packages")))
