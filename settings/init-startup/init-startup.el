(provide 'init-startup)

(get-package 'dashboard)
(get-package 'use-package)

(use-package dashboard
  :ensure t
  :custom
  (setq dashboard-items '((recents . 10)
                          (bookmarks . 10)
                          (projects . 10)
                          (agenda . 10)
                          (registers . 10)))
  
  :config
  (dashboard-setup-startup-hook))
