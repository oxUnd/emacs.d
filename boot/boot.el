(provide 'boot)
(load
  (concat
   (getenv "HOME") "/.emacs.d/boot/load"))

(my/load-plug "my-global/my-global")
(my/global-settings-basic)
(my/global-settings-mode-line-format)

(my/register "basic")
(my/register "init-themes")
(my/global-settings-set-mode-line-faces)
(my/register "init-org")
(my/register "init-org-mobile")
(my/register "init-org-roam")
(my/register "init-go")
(my/register "init-smex")
(my/register "init-company")
(my/register "init-yasnippet")
(my/register "init-elfeed")
(my/register "init-lsp")
