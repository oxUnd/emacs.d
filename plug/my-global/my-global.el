;; My Global Settings

(defun my/global-settings-basic()
  (interactive)
  (progn
    ;; gc
    (setq gc-cons-threshold (* 100 1024 1024))
    
    ;; Font and frame size
    (setq default-frame-alist
	  (append (list '(width . 72) '(height . 40)
			'(vertical-scroll-bar . nil)
			'(internal-border-width . 24)
			'(font . "Cascadia Code PL Light 15"))))
    (set-frame-parameter (selected-frame)
			 'internal-border-width 24)
    ;; Line spacing
    (setq-default line-spacing 0)
    (setq x-underline-at-descent-line t)
    (setq widget-image-enable nil)

    ;; start buffer
    (setq inhibit-splash-screen t)
    (setq inhibit-startup-message t)
    (setq inhibit-startup-screen t)
    (setq inhibit-startup-echo-area-message t)
    (setq initial-scratch-message nil)
    (setq initial-major-mode 'org-mode)
    (setq-default indent-tabs-mode nil)
    (setq pop-up-windows nil)
    
    
    ;; No sound
    (setq ring-bell-function 'ignore)
    (setq visible-bell t)

    ;; line cursor and no blink
    (set-default 'cursor-type '(bar . 1))
    (blink-cursor-mode 0)
    
    ;;
    (setq-default truncate-lines nil)
    (setq indent-tabs-mode nil)
    (if (display-graphic-p)
	(progn
	  (tool-bar-mode 0)
	  (scroll-bar-mode 0)))
    (menu-bar-mode 0)

    ;; buffer
    (defun my/kill-this-buffer()
      (interactive)
      (kill-buffer (current-buffer)))
    (global-set-key (kbd "C-x k") 'my/kill-this-buffer)))

    ;;uniquify
    ;; (require 'uniquify)
    
