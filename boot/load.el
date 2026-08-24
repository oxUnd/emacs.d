(provide 'load)

;;; auto install package.
(defun get-package (package)
  ;; `locate-library' is much cheaper than recursively checking every
  ;; dependency of every package on each startup.
  (unless (locate-library (symbol-name package))
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install package)))

;; custom settings file load
(load-with-byte-compile
 (concat
  (getenv "HOME") "/.emacs.d/boot/third-party/load-directory"))
