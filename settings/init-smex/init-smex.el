(provide 'init-smex)

(get-package 'use-package)
(get-package 'smex)

(use-package smex
  :commands (smex smex-major-mode-commands)
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command))
  :config
  (smex-initialize))
  
