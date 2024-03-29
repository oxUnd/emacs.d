(provide 'init-lsp)

(get-package 'lsp-mode)
(get-package 'lsp-ui)
(get-package 'use-package)

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c o")
  (setq lsp-headerline-breadcrumb-enable nil) ;; fix
  :hook
  ((go-mode . lsp-deferred)
   (c-mode . lsp-deferred)
   (c++-mode . lsp-deferred)
   (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui
  :custom
  (lsp-ui-doc-enable t)
  (lsp-ui-peek-enable t)
  :commands lsp-ui-mode)
