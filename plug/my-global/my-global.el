;; My Global Settings

(defun my/global-settings-basic()
  (interactive)
  (progn
    ;; Font and frame size
    (setq default-frame-alist
	  (append (list '(width . 72) '(height . 40)
			'(vertical-scroll-bar . nil)
			'(internal-border-width . 24)
			'(font . "Roboto Mono Light 14"))))
    (set-frame-parameter (selected-frame)
			 'internal-border-width 24)
    ;; Line spacing
    (setq-default line-spacing 0)
    (setq x-underline-at-descent-line t)
    (setq widget-image-enable nil)

    ;; start buffer
    (setq inhibit-splash-screen t)
    (setq inhibit-startup-message t)
    
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
	  (tool-bar-mode -1)
	  (scroll-bar-mode -1)))
    (menu-bar-mode -1)))
