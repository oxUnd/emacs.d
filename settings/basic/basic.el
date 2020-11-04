; basic settings

(provide 'basic)

; backup settings
(add-to-list 'backup-directory-alist
             (cons "." "${HOME}/.emacs.d/backups/"))
(customize-set-variable
    'tramp-backup-directory-alist backup-directory-alist)
