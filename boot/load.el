(provide 'load)

;;; auto install package.
(defun get-package (package)
  (unless (package-installed-p package)
    (package-install package)))

;; custom settings file load
(load
 (concat
  (getenv "HOME") "/.emacs.d/boot/third-party/load-directory"))

;; load all settings file to runtime
(require 'load-directory)

;; my extension in here.
(load-directory
 (concat (getenv "HOME") "/.emacs.d/plug"))

;; all extension config
(load-directory
 (concat (getenv "HOME") "/.emacs.d/settings"))
