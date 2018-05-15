(use-package cquery
  :after lsp-mode
  :commands lsp-cquery-enable
  :hook (c-mode-common . lsp-cquery-enable)
  :config
  (setq cquery-executable "cquery")
  (setq cquery-extra-init-params '(:index (:comments 2)
                                   :cacheFormat "msgpack"
                                   :completion (:detailedLabel t))))
