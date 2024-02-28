(in-package :cl-user)
(defpackage water-tracker.model
  (:use :cl)
  (:import-from :mito
		#:connect-toplevel
		#:deftable)
  (:export #:user
	   #:water))
(in-package :water-tracker.model)

(mito:deftable user ()
  ((first-name :col-type (:varchar 256))
   (last-name :col-type (:varchar 256))
   (email :col-type (:varchar 256))
   (password :col-type (:varchar 256))))

(mito:deftable water ()
  ((amount :col-type :int)
   (user :col-type user)))
