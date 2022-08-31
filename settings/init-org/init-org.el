(provide 'init-org)

(get-package 'org)
(get-package 'org-modern)
(get-package 'use-package)

(require 'org)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

(add-hook 'org-mode-hook (lambda() (setq truncate-lines nil)))

(use-package org-modern
  :config
  (global-org-modern-mode))
