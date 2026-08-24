(provide 'init-company)


(get-package 'company)
(get-package 'use-package)

(use-package company
  :hook ((prog-mode text-mode) . company-mode))
