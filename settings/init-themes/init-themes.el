;;; init-themes.el



(provide 'init-themes)

(get-package 'nord-theme)
(get-package 'use-package)

(use-package nord-theme
  :init
  (setq custom-safe-themes t)
  :config
  (load-theme 'nord t))
