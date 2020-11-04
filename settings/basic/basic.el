; basic settings

(provide 'basic)

; backup settings
(setq backup-directory-alist
             (list (cons "." (concat (getenv "HOME") "/.emacs.d/backups/"))))

;; frame style settings
(add-to-list 'default-frame-alist '(width . 90))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(font . "Source Code Pro-15"))

;; buffer style settings

