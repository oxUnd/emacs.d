(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
			 ("org" . "http://mirrors.163.com/elpa/org/")
			 ("melpa" . "http://mirrors.163.com/elpa/melpa/")))
(package-initialize)

;; global settings
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; disable tabs-mode
(setq indent-tabs-mode nil)

;; hidden toolbar
(tool-bar-mode -1)

;; settings load
(load "~/.emacs.d/boot/boot")
(require 'boot)
