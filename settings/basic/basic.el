; basic settings

(provide 'basic)

; backup settings
(setq backup-directory-alist
             (list (cons "." (concat (getenv "HOME") "/.emacs.d/backups/"))))
