(provide 'boot)
(load
  (concat
   (getenv "HOME") "/.emacs.d/boot/load"))

(my/load-plug "my-global/my-global")

(my/register "init-themes")
(my/global-settings-mode-line-format)
(my/global-settings-set-mode-line-faces)
(my/global-settings-frame-style)

(my/global-settings-basic)


(my/register "basic")
(my/register "init-org")
(my/register "init-org-mobile")
(my/register "init-org-roam")
(my/register "init-go")
(my/register "init-smex")
(my/register "init-company")
(my/register "init-yasnippet")
(my/register "init-elfeed")
(my/register "init-lsp")
