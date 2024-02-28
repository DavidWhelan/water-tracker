(defpackage water-tracker/tests/main
  (:use :cl
        :water-tracker
        :rove))
(in-package :water-tracker/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :water-tracker)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
