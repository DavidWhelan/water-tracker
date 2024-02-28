(in-package :cl-user)
(defpackage water-tracker.db
  (:use :cl)
  (:import-from :mito)
  (:import-from #:water-tracker.model
		#:user
		#:water))
(in-package :water-tracker.db)

