;;; load-directory func

(provide 'load-directory)

(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file f))))
 	(mapc load-it (directory-files-recursively dir "\\.el$"))))
