(use-package git-gutter
  :diminish git-gutter-mode
  :config (global-git-gutter-mode)
  :init
  (setq git-gutter:separator-sign " "
        git-gutter:lighter " GG")
  :config
  (set-face-background 'git-gutter:deleted "#990A1B")
  (set-face-foreground 'git-gutter:deleted "#990A1B")
  (set-face-background 'git-gutter:modified "#00736F")
  (set-face-foreground 'git-gutter:modified "#00736F")
  (set-face-background 'git-gutter:added "#546E00")
  (set-face-foreground 'git-gutter:added "#546E00"))
