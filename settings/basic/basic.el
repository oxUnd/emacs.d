;; basic settings

(provide 'basic)

(get-package 'which-key)
(get-package 'no-littering)
(get-package 'use-package)

;; env
(add-to-list 'exec-path (concat (getenv "HOME") "/go/bin"))

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

;;sr-speedbar
(my/load-plug "sr-speedbar/sr-speedbar")
(require 'sr-speedbar)
(setq sr-speedbar-auto-refresh t)
(global-set-key (kbd "C-.") 'sr-speedbar-toggle)


;;*Completions"
(use-package fussy
  :ensure t
  :config
  (push 'fussy completion-styles)
  (setq
   completion-category-defaults nil
   completion-category-overrides nil))
