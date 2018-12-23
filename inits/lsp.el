(use-package lsp-mode
  :config
  (require 'lsp-clients)
  (add-hook 'python-mode-hook 'lsp))

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
  (setq lsp-ui-sideline-show-hover nil
        lsp-ui-sideline-ignore-duplicate t
        ;; TODO: wtf is going on with the sideline?
        lsp-ui-sideline-enable nil)
  (set-face-attribute 'lsp-ui-doc-background  nil :background "#f9f2d9")
  (add-hook 'lsp-ui-doc-frame-hook
            (lambda (frame _w)
              (set-face-attribute 'default frame :font "Overpass Mono 11")))
  (set-face-attribute 'lsp-ui-sideline-global nil
                      :inherit 'shadow
                      :background "#f9f2d9")
  :hook (lsp-mode . lsp-ui-mode))
