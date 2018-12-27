(use-package lsp-mode
  :config
  (require 'lsp-clients)
  (add-hook 'python-mode-hook 'lsp)
  (add-hook 'c-mode-common-hook 'lsp))

(use-package company-lsp
  :after company lsp-mode
  :config
  (push 'company-lsp company-backends)
  (setq company-lsp-cache-candidates t)
  (setq company-lsp-async t)
  (setq company-lsp-enable-snippet t))

(use-package lsp-ui
  :after lsp-mode
  :config
  (setq lsp-ui-sideline-show-hover t
        lsp-ui-sideline-ignore-duplicate t
        lsp-ui-doc-enable t
        lsp-prefer-flymake nil
        lsp-ui-peek-enable t
        lsp-ui-imenu-enable nil
        lsp-ui-flycheck-enable t
        ;; TODO: wtf is going on with the sideline?
        lsp-ui-sideline-enable nil)
  :hook (lsp-mode . lsp-ui-mode))
