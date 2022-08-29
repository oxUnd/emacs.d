(provide 'init-org-roam)

(get-package 'org-roam)
(get-package 'use-package)
; (require 'org-roam)
(require 'use-package)

(use-package org-roam
	     :ensure t
	     :custom
	     (org-roam-directory (file-truename "~/Documents/org"))
	     :bind (("C-c n l" . org-roam-buffer-toggle)
		    ("C-c n f" . org-roam-node-find)
		    ("C-c n g" . org-roam-graph)
		    ("C-c n i" . org-roam-node-insert)
		    ("C-c n c" . org-roam-capture)
		    ("C-c n j" . org-roam-dailies-capture-today))
	     :config
	     (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
	     (require 'org-roam-protocol))
