(use-package undo-tree
  :diminish
  :config
  (custom-set-variables
   '(undo-tree-history-directory-alist
	 (quote (("." . "~/.emacs.d/undo/")))))

  (evil-leader/set-key
	"u" 'undo-tree-visualize))
