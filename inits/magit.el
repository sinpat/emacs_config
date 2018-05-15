(use-package magit
  :commands magit-status)

(use-package evil-magit
  :after evil
  :config
  (evil-leader/set-key
    "gs" 'magit-status
    "gp" 'magit-push))

(use-package gitignore-mode
  :mode ("/\\.gitignore\\'"))

