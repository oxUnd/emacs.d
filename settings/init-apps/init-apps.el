(provide 'init-apps)

(get-package 'use-package)

;;; apps directory.
(setq load-apps-path "~/.emacs.d/plug/apps")

;;; guess-word
(add-to-list
 'load-path (file-name-concat load-apps-path "guess-word"))
(require 'guess-word)
