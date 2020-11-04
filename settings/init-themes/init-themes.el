;;; init-themes.el
;;;
;;;

(provide 'init-themes)

(get-package 'color-theme-sanityinc-solarized)
(get-package 'color-theme-sanityinc-tomorrow)

(setq custom-safe-themes t)

(require 'color-theme-sanityinc-tomorrow)
(color-theme-sanityinc-tomorrow-blue)
