(use-package hideshow
  :commands hs-toggle-hiding
  :diminish hs-minor-mode
  :hook
  (prog-mode . hs-minor-mode))
