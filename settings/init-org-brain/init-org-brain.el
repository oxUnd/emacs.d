(provide 'init-org-brain)

(get-package 'org-brain)
(get-package 'use-package)
(get-package 'polymode)

(require 'use-package)

(defun my/org-brain-enable-polymode ()
  "Enable Polymode lazily in an Org Brain visualization buffer."
  (require 'polymode)
  (org-brain-polymode))

(use-package org-brain :ensure t
  :defer t
  :hook (org-brain-visualize-mode . my/org-brain-enable-polymode)
  :init
  (setq org-brain-path "~/Documents/org/brain/")
  ;; For Evil users
  (with-eval-after-load 'evil
    (evil-set-initial-state 'org-brain-visualize-mode 'emacs))
  :config
  (bind-key "C-c b" 'org-brain-prefix-map org-mode-map)
  (setq org-id-track-globally t)
  (setq org-id-locations-file "~/.emacs.d/.org-id-locations")
  (add-hook 'before-save-hook #'org-brain-ensure-ids-in-buffer)
  (push '("b" "Brain" plain (function org-brain-goto-end)
          "* %i%?" :empty-lines 1)
        org-capture-templates)
  (setq org-brain-visualize-default-choices 'all)
  (setq org-brain-title-max-length 12)
  (setq org-brain-include-file-entries nil
        org-brain-file-entries-use-title nil))
