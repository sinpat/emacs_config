(use-package cquery
  :ensure t
  :config
  (setq cquery-executable "cquery")
  (setq cquery-extra-init-params '(:index  (:comments 2)
								   :cacheFormat "msgpack"
								   :completion (:detailedLabel t)))

  :hook((c-mode-hook . lsp-cquery-enable)
		(c++-mode-hook . lsp-cquery-enable)))
