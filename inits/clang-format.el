;;TODO make this lazy
(use-package clang-format
  :commands (clang-format-buffer
             clang-format-region
             clang-format)
  :config
  (fset 'c-indent-region 'clang-format-region)

  :init
  (defun indent-buffer ()
    "Indent an entire buffer using the default intenting scheme."
    (interactive)
    (if (member major-mode '(c++-mode c-mode java-mode))
        (clang-format-buffer)
      (progn
        (point-to-register 'o)
        (delete-trailing-whitespace)
        (indent-region (point-min) (point-max) nil)
        (untabify (point-min) (point-max))
        (jump-to-register 'o))))

  (evil-leader/set-key
    "TAB"     'indent-buffer))
