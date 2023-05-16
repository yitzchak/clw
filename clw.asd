(asdf:defsystem #:clw
  :description "Common Lisp workflow without Roswell."
  :author "Tarn W. Burton"
  :license "MIT"
  :perform (asdf:test-op (op c)
             ; If your test errors then you need to exit with a non-zero code.
             (write-line "Magical tests have completed!"))
  :version "0.1"
  :homepage "https://yitzchak.github.io/clw/"
  :bug-tracker "https://github.com/yitzchak/clw/issues")
