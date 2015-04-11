;; C language settings

(require 'semantic/ia)
(require 'semantic/bovine/gcc)
;; (semantic-add-system-include "c:/msys64/mingw64/x86_64-w64-mingw32/include" 'c-mode)
;; (semantic-add-system-include "c:/msys64/mingw64/include" 'c-mode)
(semantic-add-system-include "/mingw64/include/c++/4.9.2" 'c++-mode)
(semantic-add-system-include "/mingw64/include" 'c++-mode)
(semantic-mode 1)

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (c-set-style "bsd")
	    (add-to-list 'ac-sources 'ac-source-semantic)
	    (local-set-key (kbd "C-c .") 'ac-complete-semantic)
	    ))

(add-hook 'gdb-mode-hook
	  '(lambda ()
	     (define-key gdb-disassembly-mode-map (kbd "<f7>")
	       'gud-stepi)
	     (define-key gdb-disassembly-mode-map (kbd "<f8>")
	       'gud-nexti)
	     (define-key c-mode-base-map (kbd "<f2>")
	       'gud-tbreak)
	     (define-key c-mode-base-map (kbd "<f7>")
	       'gud-step)
	     (define-key c-mode-base-map (kbd "<f8>")
	       'gud-next)
	     (define-key c-mode-base-map (kbd "<f9>")
	       'gud-go)))

(when (require 'disaster)
  (add-hook 'c-mode-common-hook
	    '(lambda ()
	       (define-key c-mode-base-map (kbd "C-c C-d")
		 'disaster))))
 
