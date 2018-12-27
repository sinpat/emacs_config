;; (use-package cquery
;;   :after lsp-mode
;;   :commands lsp-cquery-enable
;;   :hook (c-mode-common . lsp-cquery-enable)
;;   :config
;;   (setq cquery-executable "cquery")
;;   (setq cquery-extra-init-params '(:index (:comments 2)
;;                                           :cacheFormat "msgpack"
;;                                           :completion (:detailedLabel t))))

;; (use-package ccls
;;   :after lsp
;;   :hook (c-mode-common .
;;                        (lambda ()
;;                          (cl-pushnew #'company-lsp company-backends)
;;                          (require 'ccls)
;;                          (lsp)))
;;   :config
;;   ;;disable semantic highlighting, because it's retarded
;;   (setq ccls-sem-highlight-method 'font-lock)
;;   ;; (ccls-use-default-rainbow-sem-highlight)
;;   (setq ccls-args '("--log-file=/tmp/ccls.log --init='{\"index\": {\"threads\": 2}}'"))
;;   (setq ccls-cache-dir "/tmp/.ccls_cached_index")
;;   (setq ccls-executable "~/ccls/Release/ccls")
;;   (setq ccls-initialization-options '(:index (:comments 1)
;;                                              :threads 4
;;                                              :cacheFormat "msgpack"
;;                                              :completion (:detailedLabel t))))
