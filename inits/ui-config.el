;;; ui-config.el ---

                                        ;disable ugly ass bullshit
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; set font
(set-frame-font "Source Code Pro" nil t)


;; stop prompting me, allright?
;; a) y is yes and n is no
(fset 'yes-or-no-p 'y-or-n-p)



(use-package airline-themes
  :ensure t
  :config
  (setq airline-helm-colors t)
  ;; use the wombat theme
  (load-theme 'airline-wombat t)
  (load-theme 'wombat t))


(use-package powerline
  :ensure t
  :config
  (setq powerline-display-buffer-size nil)
  (setq powerline-display-mule-info nil)
  (setq powerline-display-hud nil)

  :init
  (defadvice desktop-kill(before clear-power-line-cache () activate)
    (set-frame-parameter nil 'powerline-cache nil)))


(use-package powerline-evil
  :ensure t
  :init
  (defadvice desktop-kill(before clear-power-line-cache () activate)
    (set-frame-parameter nil 'powerline-cache nil))
  (setq powerline-default-separator           'arrow
        powerline-utf-8-separator-left        #xe0b0
        powerline-utf-8-separator-right       #xe0b2
        powerline-height                      18
        airline-utf-glyph-separator-left      #xe0b0
        airline-utf-glyph-separator-right     #xe0b2
        airline-utf-glyph-subseparator-left   #xe0b1
        airline-utf-glyph-subseparator-right  #xe0b3
        airline-utf-glyph-branch              #xe0a0
        airline-utf-glyph-readonly            #xe0a2
        airline-utf-glyph-linenumber          #xe0a1))
;; ;;; ui-config.el ends here
