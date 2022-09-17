(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
			 ("org" . "http://mirrors.163.com/elpa/org/")
			 ("melpa" . "http://mirrors.163.com/elpa/melpa/")))
(package-initialize)

;; http://ergoemacs.org/emacs/emacs_byte_compile.html
(defun byte-compile-current-buffer ()
  "`byte-compile' current buffer if it's emacs-lisp-mode and compiled file exists."
  (interactive)
  (when (and (eq major-mode 'emacs-lisp-mode)
             (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (byte-compile-file buffer-file-name)))

(add-hook 'after-save-hook 'byte-compile-current-buffer)

;; settings load
(load
 (concat
  (getenv "HOME") "/.emacs.d/boot/boot"))

(require 'boot)
