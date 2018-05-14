(use-package drag-stuff
  :ensure t
  :config
  (drag-stuff-global-mode 1)
  :bind(("M-k" . drag-stuff-up)
	("M-j" . drag-stuff-down)))
