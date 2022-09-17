(provide 'init-lsp)

(get-package 'lsp-mode)
(get-package 'lsp-ui)
(get-package 'use-package)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c o")
  (setq lsp-headerline-breadcrumb-enable nil) ;; fix
  :hook
  ((go-mode . lsp-deferred)
   (c-mdoe . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
