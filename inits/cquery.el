(use-package cquery
  :after lsp-mode
  :commands lsp-cquery-enable
  ;; :hook (c-mode-common . lsp-cquery-enable)
  :config
  (setq cquery-executable "cquery")
  (setq cquery-extra-init-params '(:index (:comments 2)
                                          :cacheFormat "msgpack"
                                          :completion (:detailedLabel t))))

(use-package ccls
  :after lsp-mode
  :commands lsp-ccls-enable
  :hook (c-mode-common . lsp-ccls-enable)
  :config
  (setq ccls-sem-highlight-method 'font-lock)
  (ccls-use-default-rainbow-sem-highlight)
  (setq ccls-extra-args '("--log-file=/tmp/cq.log"))
  (setq ccls-cache-dir "/tmp/.ccls_cached_index")
  (setq ccls-executable "~/ccls/Release/ccls")
  (setq ccls-extra-init-params '(:index (:comments 2)
                                        :cacheFormat "msgpack"
                                        :completion (:detailedLabel t))))
