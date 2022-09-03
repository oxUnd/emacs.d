(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
			 ("org" . "http://mirrors.163.com/elpa/org/")
			 ("melpa" . "http://mirrors.163.com/elpa/melpa/")))
(package-initialize)

;; below code is very important!
(unless package-archive-contents
  (package-refresh-contents))

;; settings load
(load
 (concat
  (getenv "HOME") "/.emacs.d/boot/boot"))

(require 'boot)
