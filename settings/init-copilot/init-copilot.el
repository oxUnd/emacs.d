(get-package 'use-package)
(my/load-plug "copilot/copilot")

(use-package copilot
  :ensure t
  :hook((c-mode . copilot-mode)
        (c++-mode . copilot-mode)
        (org-mode . copilot-mode))
  :config
  (with-eval-after-load 'company
    ;; disable inline previews
    (delq 'company-preview-if-just-one-frontend company-frontends))
  
  (define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
  (define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion))
