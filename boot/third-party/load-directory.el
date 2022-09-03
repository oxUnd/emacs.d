;;; load-directory func

(provide 'load-directory)

(defgroup my nil
  "Emacs My Settings."
  :group 'local)

(defcustom my-plug-directory (expand-file-name "~/.emacs.d/plug")
  "My Plugin Directory."
  :type 'directory
  :safe 'stringp
  :group 'my)

(defun my/load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file f))))
 	(mapc load-it (directory-files-recursively dir "\\.el$"))))

(defun my/load-file-under-directory(filename directory)
  (let ((f (file-name-concat
	    (expand-file-name directory)
	    (file-name-with-extension filename ".el"))))
    (load-file f)))

(defun my/load-plug(plug-name)
  (let ((plug-file-name plug-name))
    (my/load-file-under-directory plug-file-name my-plug-directory)))
