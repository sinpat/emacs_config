;;; cquery.el --- lsp mode for equery                -*- lexical-binding: t; -*-

;; Copyright (C) 2018

;; Author:  <lukas@GentooPad>
;; Keywords: languages, tools

;;; Commentary:

;;; Code:

(use-package cquery
  :ensure t
  :config
  (setq cquery-executable "cquery")
  (setq cquery-extra-init-params '(:index  (:comments 2)
								   :cacheFormat "msgpack"
								   :completion (:detailedLabel t)))
  (add-hook 'c-mode-hook 'lsp-cquery-enable)
  (add-hook 'c++-mode-hook 'lsp-cquery-enable))


;;; cquery.el ends here
