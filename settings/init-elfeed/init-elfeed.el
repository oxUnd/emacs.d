(provide 'elfeed)


(get-package 'elfeed)
(get-package 'use-package)


(use-package elfeed
  :bind
  (("C-x w" . elfeed)))
