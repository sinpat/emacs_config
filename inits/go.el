(use-package go-mode
  :mode "\\.go\\'"
  :custom (gofmt-command "goimports")
  :config
  (use-package gotest))
