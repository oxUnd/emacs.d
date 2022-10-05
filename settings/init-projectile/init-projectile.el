(provide 'init-projectile)

(get-package 'projectile)
(get-package 'use-package)


(use-package projectile
  :ensure t
  :bind (
         :map projectile-mode-map
              ("C-c p" . 'projectile-command-map))
  :config
  (projectile-mode 1))
