(use-package evil
  :init
  (evil-mode 1)
  :config
  (setq evil-shift-width 2))

(use-package linum-relative
  :after evil
  :hook
  ((evil-insert-state-entry-hook . linum-relative-toggle)
   (evil-insert-state-exit-hook . linum-relative-toggle)))

(use-package evil-matchit
  :after evil
  :init
  (global-evil-matchit-mode 1))

(use-package evil-nerd-commenter
  :after evil)

(use-package evil-surround
  :ensure t
  :init
  (global-evil-surround-mode))

(use-package evil-leader
  :after evil
  :init
  (global-evil-leader-mode)
  :config

  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key

    ;;windows(the good type of windows)
    "wd"    'delete-window
    "wh"    'split-window-horizontally
    "wv"    'split-window-vertically
    "ww"    'other-window
    "wo"    'delete-other-windows

    ;;files
    "fs"    'save-buffer
    "ff"    'helm-find-files
    "fd"    'dired

    ;;shit
    "cc"    'comment-line

    "gl"    'goto-line

    ;;exit emacs
    "qq"    'save-buffers-kill-terminal

    ;; buffers
    "bx"    'eval-buffer
    "bf"    'switch-to-buffer
    "bd"    'kill-this-buffer))
