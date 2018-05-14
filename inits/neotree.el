(use-package neotree
  :ensure t
  :commands neotree-toggle
  :config
  (global-set-key [f8] 'neotree-toggle)
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))


(use-package all-the-icons
  :after neotree
  :ensure t)
