; basic settings

(provide 'basic)

; backup settings
(setq backup-directory-alist
             (list (cons "." (concat (getenv "HOME") "/.emacs.d/backups/"))))

;; frame style settings
(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 40))

;; fix fonts
(defun fix-fonts()
  (interactive)
  (set-face-attribute 'default nil :font (font-spec :family "Cascadia Code PL" :size 14))

  (set-fontset-font t '(#x4e00 . #x9fff) (font-spec :family "方正宋刻本秀楷简体" :size 16) nil 'prepend))

(if (display-graphic-p)
    (fix-fonts))

;; buffer style settings

