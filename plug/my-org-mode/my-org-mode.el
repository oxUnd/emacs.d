;; improvements org-mode

(defun my/org-screenshot()
  (interactive)
  (setq filename
        (concat
         (make-temp-name
          (concat (file-name-nondirectory (buffer-file-name))
                  "_imgs/"
                  (format-time-string "%Y%m%d_%H%M%S_"))) ".png"))
  (unless (file-executable-p(file-name-directory filename))
    (make-directory (file-name-directory filename)))

  (if (eq system-type 'darwin)
      (call-process "screencapture" nil nil nil "-i" filename))
  (if (eq system-type 'gnu/linux)
      (call-process "import" nil nil nil filename))
  (if (file-exists-p filename)
      (insert (concat "[[file:" filename "]]"))))
