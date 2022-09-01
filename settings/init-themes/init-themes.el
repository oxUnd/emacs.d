;;; init-themes.el
;;;
;;;

(provide 'init-themes)

(get-package 'monokai-theme)
(get-package 'use-package)

(use-package monokai-theme
  :init
  (setq custom-safe-themes t)
  :config
  (load-theme 'monokai t))
