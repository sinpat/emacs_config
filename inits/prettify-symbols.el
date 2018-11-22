;; TODO use use-package for this

(global-prettify-symbols-mode 1)

(add-hook
 'c-mode-common-hook
 (lambda ()
   (mapc (lambda (pair) (push pair prettify-symbols-alist))
         '(("->"    .   "⇾")
           ("nullptr" .    "∅")
           ("std::nullopt" .    "∅")
           ("NULL"  .   "∅")
           ("null"  .   "∅")))))

;; pretiffy c++ range based for loops
(defvar pretty-for-rgx
  (rx
   "for("
   (optional
    "const"
    (1+ space))
   (1+ word)
   (? "&")
   (? "&")
   (1+ space)
   (1+ word)
   (1+ space)
   (group ":")
   (1+ space)
   (1+ word)))

(defun pretty-for-add ()
  (setq font-lock-keywords nil)
  (font-lock-add-keywords
   nil
   `((,pretty-for-rgx 0 (prog1 nil
                          (compose-region
                           (match-beginning 1) (match-end 1)
                           ,(concat "\t" (list #x2208))))))))

(add-hook 'c-mode-common-hook 'pretty-for-add)

(add-hook
 'python-mode-hook
 (lambda ()
   (mapc (lambda (pair) (push pair prettify-symbols-alist))
         '(("def" .      #x2131)
           ("not" .      "¬")
           ("<="  .      "≤")
           (">="  .      "≥")
           ("and"  .     "∧")
           ("or"  .      "∨")
           ("is not"  .  "≠")
           ("is"  .      "≡")
           ("None"  .    "∅")
           ("in" .       #x2208)
           ("not in" .   #x2209)
           ("return" .   #x27fc)
           ("yield" .    #x27fb)
           ("for" .      #x2200)))))
