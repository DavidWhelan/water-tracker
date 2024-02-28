(defsystem "water-tracker"
  :version "0.0.1"
  :author "David Whelan"
  :license ""
  :depends-on ("mito")
  :components ((:module "src"
                :components
                ((:file "main")
		 (:file "model")
		 (:file "db"))))
  :description ""
  :in-order-to ((test-op (test-op "water-tracker/tests"))))

(defsystem "water-tracker/tests"
  :author "David Whelan"
  :license ""
  :depends-on ("water-tracker"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for water-tracker"
  :perform (test-op (op c) (symbol-call :rove :run c)))
