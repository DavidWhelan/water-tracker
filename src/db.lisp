(in-package :cl-user)
(defpackage water-tracker.db
  (:use :cl)
  (:import-from :mito
		#:connect-toplevel
		#:ensure-table-exists
		#:migrate-table)
  (:import-from #:water-tracker.model
		#:user
		#:water))
(in-package :water-tracker.db)

(defun connect-to-database (db-path)
  (mito:connect-toplevel :sqlite3 :database-name db-path))

(defun create-tables ()
  (mito:ensure-table-exists 'user)
  (mito:ensure-table-exists 'water))

(defun migrate-tables ()
  (mito:migrate-table 'user)
  (mito:migrate-table 'water))

(defun initialize-db ()
  (connect-to-database #p"./db/water-tracker")
  (create-tables)
  (migrate-tables))
