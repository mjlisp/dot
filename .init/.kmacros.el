(fset 'trim-single-line
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))
;; (put 'trim-single-line 'kmacro t)

(fset 'get-gamess-energy
   "\C-sfinal\C-m\367\C-xo\C-y\C-xo")
;; (put 'get-gamess-energy 'kmacro t)

(fset 'add-afix
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("\274h3a\367pa\274h8a\367pa\274h10a\367pa\274h39a\367pa\274h13a\367pa" 0 "%d")) arg)))
