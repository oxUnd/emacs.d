(require 'package)
(setq package-archives '(("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
			 ("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(defun my/setup-exec-path ()
  "Set `exec-path' without loading the interactive zsh configuration."
  (let* ((login-path
          (car (process-lines "/bin/zsh" "-lc" "printf '%s\n' \"$PATH\"")))
         (extra-paths
          (mapcar #'expand-file-name
                  '("~/.rustup/toolchains/stable-aarch64-apple-darwin/bin"
                    "~/go/bin"
                    "~/.lmstudio/bin"
                    "/opt/homebrew/opt/node@24/bin")))
         (paths
          (delete-dups
           (append (seq-filter #'file-directory-p extra-paths)
                   (split-string login-path path-separator t)
                   exec-path))))
    (setq exec-path paths)
    (setenv "PATH" (mapconcat #'identity paths path-separator))))

(my/setup-exec-path)

;; http://ergoemacs.org/emacs/emacs_byte_compile.html
(defun byte-compile-current-buffer ()
  (when (and (eq major-mode 'emacs-lisp-mode)
             (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (byte-compile-file buffer-file-name)))

(add-hook 'after-save-hook 'byte-compile-current-buffer)

(defun load-with-byte-compile (file)
  ;; Loading must never compile synchronously.  `load-prefer-newer' in
  ;; early-init.el makes Emacs choose newer source over stale byte-code.
  (load file))

;; settings load
(load-with-byte-compile
 (concat
  (getenv "HOME") "/.emacs.d/boot/boot"))

(require 'boot)
