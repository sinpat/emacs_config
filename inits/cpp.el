(use-package cc-mode
  :commands (c++-mode c-mode)
  :init
  (c-add-style "my-cpp-style"
               '("stroustrup"
                 (indent-tabs-mode . nil)        ; use spaces rather than tabs
                 (c-basic-offset . 4)          ; indent by four spaces
                 (c-offsets-alist . ((inline-open . 0)  ; custom indentation rules
                                     (brace-list-open . 0)
                                     (statement-case-open . +)
                                     (innamespace . [0])))))

  :hook (c++-mode-hook . (lambda ()
                           (c-set-style "my-cpp-style")))
  :config
  ;;compilation buffer should be vertical
  (defadvice compile (around split-horizontally activate)
    "This takes care that new compilation buffers is verticaly."
    (let ((split-width-threshold nil)
          (split-height-threshold 10)
          (compilation-window-height 15))
      ad-do-it)))
