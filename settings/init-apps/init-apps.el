(provide 'init-apps)

(get-package 'use-package)

;;; apps directory.
(defconst load-apps-path (expand-file-name "plug/apps" user-emacs-directory))

;;; guess-word
(add-to-list
 'load-path (file-name-concat load-apps-path "guess-word"))
(autoload 'guess-word "guess-word" nil t)
