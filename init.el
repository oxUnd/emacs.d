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

; (setq tab-width 4)

;; disable tabs-mode
(setq indent-tabs-mode nil)

;; hidden toolbar
(tool-bar-mode -1)

;; settings load
(load
 (concat
  (getenv "HOME") "/.emacs.d/boot/boot"))

(require 'boot)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(go-mode)))
