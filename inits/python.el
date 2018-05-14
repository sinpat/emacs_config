(use-package python
  :ensure t
  :commands python-mode)

(use-package anaconda-mode
  :after python
  :ensure t
  :hook
  ((python-mode-hook . anaconda-mode)
   (python-mode-hook . eldoc-mode))
  :init
  (setq anaconda-mode-eldoc-as-single-line t))

(use-package company-anaconda
  :after anaconda-mode
  :ensure t
  :init (add-to-list 'company-backends 'company-anaconda))
