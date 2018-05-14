(use-package helm
  :ensure t
  :demand t
  :diminish helm-mode
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-buffers-list))
  :init
  (setq helm-M-x-fuzzy-match t
        helm-buffers-fuzzy-matching t
        helm-display-header-line nil)
  :config
  (helm-mode 1)
  (helm-autoresize-mode 1))

(use-package swiper-helm
  :ensure t
  :bind ("C-s" . swiper-helm))
