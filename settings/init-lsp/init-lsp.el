(provide 'init-lsp)

(get-package 'lsp-mode)
(get-package 'lsp-ui)
(get-package 'use-package)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  ((go-mode . lsp)
   (c-mdoe . lsp)
   (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
