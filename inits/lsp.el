(use-package lsp-mode
  :after evil
  :custom
  (lsp-print-io nil)
  (lsp-trace nil)
  (lsp-print-performance nil)
  (lsp-auto-guess-root t)
  :hook
  ((go-mode c-mode c++-mode python-mode) . lsp)
  :config
  (evil-leader/set-key
    "gi"    'lsp-goto-implementation)

  (setq lsp-clients-clangd-args
        '("-j=4" "-background-index" "-log=error"))
  (require 'lsp-clients))

;; (use-package company-lsp
;;   :after company lsp-mode
;;   :config
;;   (push 'company-lsp company-backends)
;;   (setq company-lsp-cache-candidates t)
;;   (setq company-lsp-async t)
;;   (setq company-lsp-enable-snippet t))

(use-package company-lsp
  :after company lsp-mode
  :custom
  (company-lsp-cache-candidates t) ;; auto, t(always using a cache), or nil
  (company-lsp-async t)
  (company-lsp-enable-snippet t)
  (company-lsp-enable-recompletion t))

(use-package lsp-ui
  :after lsp-mode
  :custom
  (lsp-ui-doc-enable nil)
  (lsp-ui-doc-header t)
  (lsp-ui-doc-include-signature nil)
  (lsp-ui-doc-position 'at-point) ;; top, bottom, or at-point
  (lsp-ui-doc-max-width 120)
  (lsp-ui-doc-max-height 30)
  (lsp-ui-doc-use-childframe t)
  (lsp-ui-doc-use-webkit t)
  ;; lsp-ui-flycheck
  (lsp-ui-flycheck-enable t)
  ;; lsp-ui-sideline
  (lsp-ui-sideline-enable nil)
  (lsp-ui-sideline-ignore-duplicate t)
  (lsp-ui-sideline-show-symbol t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-sideline-show-diagnostics nil)
  (lsp-ui-sideline-show-code-actions t)
  (lsp-ui-peek-enable t)
  (lsp-ui-peek-peek-height 20)
  (lsp-ui-peek-list-width 50)
  (lsp-ui-peek-fontify 'on-demand) ;; never, on-demand, or always
  :hook (lsp-mode . lsp-ui-mode))
