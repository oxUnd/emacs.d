(provide 'init-org)

(get-package 'org)
(get-package 'org-modern)
(get-package 'use-package)

(my/load-plug "my-org-mode/my-org-mode")


(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c x") 'my/org-screenshot)

(use-package org
  :ensure t
  :custom
  (org-ditaa-jar-path "~/.emacs.d/contrib/org/jditaa.jar")
  :hook
  (org-mode . (lambda() (setq truncate-lines nil)))
  :config
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((ditaa . t)
     (python . t))))

;; ☃ ☄ ★ ☆ ☇ ☈ ☉ ☊ ☋ ☌ ☍ ☎ ☏ ☐ ☑ ☒ ☓ ☔ ☕ ☖ ☗ ☘☙ ☚ ☛ ☜ ☝ ☞ ☟ ☠ ☡ ☢ ☣ ☤ ☥ ☦ ☧ ☨ ☩ ☪ ☫ ☬ ☭ ☮ ☯
;; (use-package org-modern
;;  :ensure t
;;  :custom
;;  (org-modern-table nil)
;;  (org-modern-hide-stars nil)
;;  (org-modern-checkbox
;;   '((?X . "☑")
;;     (?- . "☒")
;;     (?\s . "☐")))
;;  (org-modern-symbol "Symbola")
;;  :hook
;;  (org-mode . org-modern-mode)
;;  (org-agenda-finalize . org-modern-agenda))

(setq org-capture-templates
      '(("t" "TODO" entry (file+headline "~/Documents/org/gtd.org" "Tasks")
         "* TODO %?\n %i\n %a")
        ("j" "Jonrnal" entry (file+datetree "~/Documents/org/journal.org")
         "* %?\n Entered on %U\n %i\n %a")))

(setq org-agenda-files '("~/Documents/org"))
