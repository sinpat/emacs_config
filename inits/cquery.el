(use-package cquery
  :ensure t
  :after lsp-mode
  :config
  (setq cquery-executable "cquery")
  (setq cquery-extra-init-params '(:index  (:comments 2)
								   :cacheFormat "msgpack"
								   :completion (:detailedLabel t)))

  :hook (c-mode-common . lsp-cquery-enable))

