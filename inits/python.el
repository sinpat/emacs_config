(use-package python
  :commands python-mode
  :after lsp-mode
  :hook (python-mode-hook . lsp))
