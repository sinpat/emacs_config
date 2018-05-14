(use-package magit
  :ensure t
  :commands magit-status)

(use-package evil-magit
  :ensure t
  :after evil
  :config
  (evil-leader/set-key
    "gs" 'magit-status
    "gp" 'magit-push))
