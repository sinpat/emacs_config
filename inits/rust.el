(use-package toml-mode)

(use-package rust-mode
  :hook (rust-mode . lsp)
  :init
  (evil-leader/set-key-for-mode 'rust-mode "TAB" 'rust-format-buffer))

;; Add keybindings for interacting with Cargo
(use-package cargo
  :hook (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :config (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
