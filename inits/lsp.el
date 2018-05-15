(use-package lsp-mode
  :custom-face
  (lsp-face-highlight-textual
   ((t (:background "dark slate blue"))))
  :ensure t)

(use-package company-lsp
  :ensure t
  :after company lsp-mode
  :config
  (push 'company-lsp company-backends)
  (setq company-lsp-cache-candidates t)
  (setq company-lsp-async t)
  (setq company-lsp-enable-snippet t))

(use-package lsp-ui
  :ensure t
  :after lsp-mode
  :hook
  (lsp-mode-hook . lsp-ui-mode)
  :config
  (setq lsp-ui-flycheck-enable t)
  (setq lsp-ui-peek-enable t)
  (setq lsp-ui-sideline-show-symbol t)
  (setq lsp-ui-sideline-enable nil))
