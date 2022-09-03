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

(my/load-plug "my-global/my-global")

;; global settings first runing.
(my/global-settings-basic)

;; my extension in here.
(my/load-directory
 (concat (getenv "HOME") "/.emacs.d/plug"))

;; all extension config
(my/load-directory
 (concat (getenv "HOME") "/.emacs.d/settings"))
