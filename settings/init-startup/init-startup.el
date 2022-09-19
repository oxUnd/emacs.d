(provide 'init-startup)

(get-package 'dashboard)
(get-package 'use-package)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
