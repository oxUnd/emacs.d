;;; init-themes.el



(provide 'init-themes)

(get-package 'monokai-theme)
(get-package 'use-package)

(use-package monokai-theme
  :init
  (setq custom-safe-themes t)
  :custom
  (monokai-green "#F8F8F2")
  :config
  (load-theme 'monokai t))
