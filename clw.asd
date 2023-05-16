(asdf:defsystem #:clw
  :description "Common Lisp workflow without Roswell."
  :author "Tarn W. Burton"
  :license "MIT"
  :perform (asdf:test-op (op c)
             (write-line "Magical tests have completed!"))
  :version "0.1"
  :homepage "https://yitzchak.github.io/clw/"
  :bug-tracker "https://github.com/yitzchak/clw/issues")
