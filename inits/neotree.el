(use-package neotree
  :ensure t
  :after evil
  :bind
  ([f8] . neotree-toggle)

  :config
  (setq projectile-switch-project-action
		'neotree-projectile-action)

  (setq neo-theme
        (if (display-graphic-p)
            'icons
          'arrow))

  (evil-set-initial-state 'neotree-mode 'normal)
  (evil-define-key 'normal neotree-mode-map
    (kbd "RET") 'neotree-enter
    (kbd "c")   'neotree-create-node
    (kbd "r")   'neotree-rename-node
    (kbd "d")   'neotree-delete-node
    (kbd "g")   'neotree-refresh
    (kbd "C")   'neotree-change-root
    (kbd "H")   'neotree-hidden-file-toggle
    (kbd "q")   'neotree-hide))


(use-package all-the-icons
  :after neotree
  :ensure t)
