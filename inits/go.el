(use-package go-mode
  :mode "\\.go\\'"
  :custom (gofmt-command "goimports")
  :config
  (add-hook 'before-save-hook #'gofmt-before-save)
  (use-package gotest))
