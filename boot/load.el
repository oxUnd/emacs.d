(provide 'load)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


;;; auto install package.
(defun get-package (package)
  (unless package-archive-contents
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))

;; custom settings file load
(load-with-byte-compile
 (concat
  (getenv "HOME") "/.emacs.d/boot/third-party/load-directory"))
