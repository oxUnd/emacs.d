(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;; http://ergoemacs.org/emacs/emacs_byte_compile.html
(defun byte-compile-current-buffer ()
  "`byte-compile' current buffer if it's emacs-lisp-mode and compiled file exists."
  (interactive)
  (when (and (eq major-mode 'emacs-lisp-mode)
             (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (byte-compile-file buffer-file-name)))

(add-hook 'after-save-hook 'byte-compile-current-buffer)

(defun load-with-byte-compile (file)
  (let ((f (file-name-with-extension file ".elc")))
    (if (file-exists-p f)
        (load file)
      (progn
	(byte-compile-file (file-name-with-extension file ".el"))
	(load file)))))
    
;; settings load
(load-with-byte-compile
 (concat
  (getenv "HOME") "/.emacs.d/boot/boot"))

(require 'boot)
