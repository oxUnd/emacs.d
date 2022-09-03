(provide 'boot)
(load
  (concat
  	(getenv "HOME") "/.emacs.d/boot/load"))
(require 'load)
(require 'basic)
(require 'init-themes)
(require 'init-org)
(require 'init-org-mobile)
(require 'init-org-roam)
(require 'init-go)
(require 'init-smex)
