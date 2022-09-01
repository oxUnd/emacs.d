(provide 'init-yasnippet)

(get-package 'use-package)
(get-package 'yasnippet)
(get-package 'yasnippet-snippets)


(use-package yasnippet
  :hook
  (prog-mode . yas-minor-mode-on)
  (text-mode . yas-minor-mode-on)
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets)
