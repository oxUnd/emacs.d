(provide 'init-go)
(get-package 'go-mode)

(require 'go-mode)
;; speedbar support golang
(speedbar-add-supported-extension ".go")
