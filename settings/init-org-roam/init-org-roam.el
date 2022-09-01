(provide 'init-org-roam)

(get-package 'org-roam)
(get-package 'org-roam-ui)
(get-package 'use-package)
(get-package 'deft)

(require 'use-package)

(setq org-roam-directory (file-truename "~/Documents/org/roam"))

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/Documents/org/roam"))
  (org-roam-db-location (file-truename "~/Documents/org/roam/org-roam.db"))
  (org-roam-dailies-directory (file-truename "~/Documents/org/roam/daily"))
  (org-roam-graph-executable (file-truename "/opt/homebrew/bin/dot"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n g" . org-roam-graph)
	 ("C-c n i" . org-roam-node-insert)
	 ("C-c n c" . org-roam-capture)
	 ("C-c n j" . org-roam-dailies-capture-today)
	 ("C-c n s" . org-roam-db-sync))
  :config
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (require 'org-roam-protocol))

(use-package org-roam-ui
  :after org-roam
  :bind (("C-c n u" . org-roam-ui-mode))
  :config
  (setq org-roam-ui-sync-theme t
	org-roam-ui-follow nil
	org-roam-ui-update-on-save t
	org-roam-ui-open-on-start t))

(use-package deft
  :after org
  :bind
  ("C-c n d" . deft)
  :custom
  (deft-recursive t)
  (deft-use-filter-string-for-filename t)
  (deft-default-extension "org")
  (deft-directory org-roam-directory))
