;;;complany.el

(use-package company
  :ensure t
  :init
  (global-company-mode)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-auto-complete nil)
  (setq company-require-match nil)

  :custom-face
   (company-preview
     ((t (:foreground "darkgray" :underline t))))
   (company-preview-common
     ((t (:inherit company-preview))))
   (company-tooltip
     ((t (:background "sandy brown" :foreground "black"))))
   (company-tooltip-selection
     ((t (:background "lime green" :foreground "black"))))
   (company-tooltip-common
     ((((type x)) (:inherit company-tooltip :weight bold))
      (t (:inherit company-tooltip))))
   (company-tooltip-common-selection
     ((((type x)) (:inherit company-tooltip-selection :weight bold))
      (t (:inherit company-tooltip-selection))))

  :config
  (delete 'company-dabbrev company-backends)
  (delete 'company-nxml company-backends)
  (delete 'company-eclim company-backends)
  (delete 'company-xcode company-backends)
  (delete 'company-capf company-backends)
  (delete 'company-dabbrev-code company-backends)
  (delete 'company-gtags company-backends)
  (delete 'company-etags company-backends)
  (delete 'company-clang company-backends)
  (delete 'company-bbdb company-backends)
  (delete 'company-css company-backends)
  (delete 'company-semantic company-backends))


(define-key company-active-map [tab] 'company-complete-common-or-cycle)


;;;company.el ends here
