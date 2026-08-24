;;; early-init.el --- Early startup settings -*- lexical-binding: t; -*-

;; The package system is initialized explicitly from init.el.
(setq package-enable-at-startup nil
      load-prefer-newer t
      gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; Restore normal GC behavior after startup has finished.
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 32 1024 1024)
                  gc-cons-percentage 0.1))
          90)

;;; early-init.el ends here
