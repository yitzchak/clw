(asdf:defsystem #:clw
  :description "Common Lisp workflow without Roswell."
  :author "Tarn W. Burton"
  :license "MIT"
  :perform (asdf:test-op (op c)
             (handler-case
                 (write-line "Magical tests have begun...")
               (error (condition)
                 (declare (ignore condition))
                 (write-line "Magical tests have have failed!")
                 #+abcl (quit :status 1)
                 #+ccl (quit 1)
                 #+(or clasp ecl) (ext:quit 1)
                 #+sbcl (quit :unix-status 1))
               (:no-error (result)
                 (declare (ignore result))
                 (write-line "Magical tests have completed successfully!")
                 #+abcl (quit)
                 #+ccl (quit)
                 #+(or clasp ecl) (ext:quit)
                 #+sbcl (quit))))
  :version "0.1"
  :homepage "https://yitzchak.github.io/clw/"
  :bug-tracker "https://github.com/yitzchak/clw/issues")
