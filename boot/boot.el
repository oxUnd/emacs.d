(provide 'boot)
(load
  (concat
  	(getenv "HOME") "/.emacs.d/boot/load"))

(require 'load)
(require 'basic)
(require 'init-org)
(require 'init-go)
