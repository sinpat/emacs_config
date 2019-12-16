(use-package treemacs
  :after evil
  :config
  (setq treemacs-follow-after-init t
        treemacs-width 35
        treemacs-indentation 1
        treemacs-recenter-after-file-follow nil
        treemacs-collapse-dirs (if (executable-find "python") 3 0)
        treemacs-silent-refresh t
        treemacs-silent-filewatch t
        treemacs-sorting 'alphabetic-desc
        treemacs-show-hidden-files t
        treemacs-is-never-other-window nil
        treemacs-indentation-string (propertize " ǀ " 'face 'font-lock-comment-face))

  ;; slightly lower the size of treemacs icons
  (treemacs-resize-icons 18)

  ;; set the correct python3 executable path. This is needed for
  ;; treemacs-git-mode extended
  (setq treemacs-python-executable (executable-find "python"))

  (treemacs-follow-mode t)
  (treemacs-filewatch-mode t)

  (pcase (cons (not (null (executable-find "git")))
               (not (null (executable-find "python"))))
    (`(t . t)
     (treemacs-git-mode 'extended))
    (`(t . _)
     (treemacs-git-mode 'simple)))
  :bind
  ([f8] . treemacs))

(use-package treemacs-projectile
  :after treemacs projectile
  :config
  (evil-leader/set-key
    ;;windows(the good type of windows)
    "pp"    'treemacs-projectile
	"pe"    'treemacs-remove-project-from-workspace))

(use-package treemacs-magit
  :after treemacs magit)

;; adds treemacs icons to dired buffers
;; https://github.com/Alexander-Miller/treemacs/blob/master/src/extra/treemacs-icons-dired.el
(use-package treemacs-icons-dired
  :after treemacs dired
  :config (treemacs-icons-dired-mode))
