;; basic settings

(provide 'basic)

(get-package 'which-key)
(get-package 'no-littering)
(get-package 'use-package)

;; backup settings
(setq backup-directory-alist
             (list (cons "." (concat (getenv "HOME") "/.emacs.d/backups/"))))

;; frame style settings
;; (add-to-list 'default-frame-alist '(width . 90))
;; (add-to-list 'default-frame-alist '(height . 40))

;; 全局快捷健
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; 保持 .emacs.d 干净
(use-package no-littering
  :config
  (with-eval-after-load 'recentf
    (set 'recentf-exclude
         '(no-littering-var-directory
           no-littering-etc-directory
           (expand-file-name "elpa" user-emacs-directory)
           (expand-file-name "cache" user-emacs-directory))))
  (setq custom-file (no-littering-expand-etc-file-name "custom.el")))

;; 快捷键提示
(use-package which-key
  :diminish which-key-mode
  :config
  (which-key-mode))
