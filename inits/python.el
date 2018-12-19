(use-package python
  :commands python-mode)

;; (use-package anaconda-mode
;;   :after python
;;   :hook
;;   ((python-mode-hook . anaconda-mode)
;;    (python-mode-hook . eldoc-mode))
;;   :init
;;   (setq anaconda-mode-eldoc-as-single-line t))

;; (use-package company-anaconda
;;   :after anaconda-mode
;;   :init (add-to-list 'company-backends 'company-anaconda))

;; (use-package lsp-python
;;   :after lsp-mode
;;   :hook (python-mode . lsp-python-enable))
