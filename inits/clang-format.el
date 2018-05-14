;;TODO make this lazy
(use-package clang-format
  :ensure t
  :config
  (evil-leader/set-key
	"TAB"     'clang-format-buffer))
