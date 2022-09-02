(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
			 ("org" . "http://mirrors.163.com/elpa/org/")
			 ("melpa" . "http://mirrors.163.com/elpa/melpa/")))
(package-initialize)
;; below code is very important!
(unless package-archive-contents
  (package-refresh-contents))

;; global settings
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq-default truncate-lines nil)
;; (setq fill-column 80)
;; (setq tab-width 4)

;; disable tabs-mode
(setq indent-tabs-mode nil)

;; hidden toolbar
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))
(menu-bar-mode -1)

;; settings load
(load
 (concat
  (getenv "HOME") "/.emacs.d/boot/boot"))

(require 'boot)
