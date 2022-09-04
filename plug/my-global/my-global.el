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

;; from https://github.com/rougier/elegant-emacs
(defun my/set-face(face style)
  (set-face-attribute face nil
                      :foreground 'unspecified :background 'unspecified
                      :family 'unspecified :slant 'unspecified
                      :weight 'unspecified :height 'unspecified
                      :underline 'unspecified :overline 'unspecified
                      :box 'unspecified :inherit style))

;; from https://github.com/rougier/elegant-emacs
(defun my/global-settings-set-mode-line-faces()
  (my/set-face 'header-line 'face-strong)
  (set-face-attribute 'header-line nil
                      :underline (face-foreground 'default))
  (set-face-attribute 'mode-line nil
                      :height 10
                      :underline (face-foreground 'default)
                      :overline nil
                      :box nil
                      :foreground (face-background 'default)
                      :background (face-background 'default))
  (my/set-face 'mode-line-inactive 'mode-line)
  (set-face-attribute 'cursor nil
                      :background (face-foreground 'default))
  (set-face-attribute 'window-divider nil
                      :foreground (face-background 'mode-line))
  (set-face-attribute 'window-divider-first-pixel nil
                      :foreground (face-background 'default))
  (set-face-attribute 'window-divider-last-pixel nil
                      :foreground (face-background 'default)))
  
;; from https://github.com/rougier/elegant-emacs
(defun my/global-mode-line-render(left right)
  (let* ((available-width (- (window-width) (length left))))
    (format (format "%%s %%%ds" available-width) left right)))

;; from https://github.com/rougier/elegant-emacs
(defun my/global-settings-mode-line-format()
  (define-key mode-line-major-mode-keymap [header-line]
    (lookup-key mode-line-major-mode-keymap [mode-line]))
  
  (setq-default mode-line-format
                '((:eval
                   (my/global-mode-line-render
                    (format-mode-line (list
                                       (propertize "☰" 'face `(:inherit mode-line-buffer-id)
                                                   'help-echo "Mode(s) menu"
                                                   'mouse-face 'mode-line-highlight
                                                   'local-map mode-line-major-mode-keymap)
                                       " %b "
                                       (if (and buffer-file-name (buffer-modified-p))
                                           (propertize "(modified)" 'face `(:inherit face-faded)))))
                    (format-mode-line
                     (propertize "%4l:%2c  " 'face `(:inherit face-faded)))))))
  (setq-default header-line-format mode-line-format)
  (setq-default mode-line-format '("")))
