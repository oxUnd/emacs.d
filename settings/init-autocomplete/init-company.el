(provide 'init-company)


(get-package 'company)
(get-package 'use-package)

(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode))
