(use-package company
  :init
  (global-company-mode)
  (setq company-idle-delay 0
        company-minimum-prefix-length 1
        company-auto-complete nil
        company-require-match nil)

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


;; enable fuzzy matching
(use-package company-flx
  :after company
  :config
  (company-flx-mode +1))
