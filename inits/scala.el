(use-package scala-mode
  :pin melpa
  :interpreter ("scala" . scala-mode)
  :hook
  (scala-mode-hook . ensime-mode))

;; ENhanced Scala Interaction Mode for text Editors
(use-package ensime
  :pin melpa ;; pining to melpa uses cutting-edge snapshot version
  :commands ensime ensime-mode
  :config
  (evil-leader/set-key
    "i" 'ensime-import-type-at-point)

  (setq ensime-sem-high-enabled-p nil
        ensime-use-helm t
        ensime-completion-style 'company
        ensime-startup-notification nil
        ensime-startup-snapshot-notification nil
        company-minimum-prefix-length 0))

(use-package sbt-mode
  :pin melpa)

;; Java / Scala support for templates
(defun mvn-package-for-buffer ()
  "Calculate the expected package name for the buffer;
assuming it is in a maven-style project."
  ;; see https://github.com/fommil/dotfiles/issues/66
  (let* ((kind (file-name-extension buffer-file-name))
         (root (locate-dominating-file default-directory kind)))
    (when root
      (require 'subr-x) ;; maybe we should just use 's
      (replace-regexp-in-string
       (regexp-quote "/") "."
       (string-remove-suffix "/"
                             (string-remove-prefix
                              (expand-file-name (concat root "/" kind "/"))
                              default-directory))
       nil 'literal))))
