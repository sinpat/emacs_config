;; TODO use use-package for this

(global-prettify-symbols-mode 1)

(add-hook
 'c-mode-common-hook
 (lambda ()
   (mapc (lambda (pair) (push pair prettify-symbols-alist))
         '(("!"     .   "¬")
           ("<="    .   "≤")
           (">="    .   "≥")
           (" && "  .   " ∧ ")
           ("||"    .   "∨")
           ("!="    .   "≠")
           ("=="    .   "≡")
           ("->"    .   "⇾")
           ("nullptr" .    "∅")
           ("NULL"  .   "∅")
           ("null"  .   "∅")))))

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
