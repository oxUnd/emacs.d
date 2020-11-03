(provide 'load)

;; custom settings file load
(load "~/.emacs.d/boot/third-party/load-directory")

;; load all settings file to runtime
(require 'load-directory)
(load-directory "~/.emacs.d/settings")
