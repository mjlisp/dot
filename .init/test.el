;; for test

;; (defadvice linum-update-window (after linum-fix-scale-bugs (win) activate compile)
;;   "fix the bug when scale text"
;;   (interactive)
;;   (if (memq 'text-scale-mode minor-mode-list)
;;       (progn
;; 	(let ((width (car (window-margins win))))
;; 	  ;; (or (boundp 'text-scale-mode-step) (defvar text-scale-mode-step))
;; 	  ;; (or (boundp 'text-scale-mode-amount) (defvar text-scale-mode-amount))
;; 	  (defvar text-scale-mode-step)
;; 	  (defvar text-scale-mode-amount)
;; 	  (setq width (ceiling (* width (expt text-scale-mode-step text-scale-mode-amount))))
;; 	  (set-window-margins win width (cdr (window-margins win)))
;; 	  )
;; 	)
;;     )
;;   )

;; (defadvice nlinum--setup-window (after nlinum-fix-scale-bugs activate compile)
;;   "fix the bug when scale text"
;;   (interactive)
;;   (if (memq 'text-scale-mode minor-mode-list)
;;       (progn
;; 	(let ((width (car (window-margins))))
;; 	  ;; (or (boundp 'text-scale-mode-step) (defvar text-scale-mode-step))
;; 	  ;; (or (boundp 'text-scale-mode-amount) (defvar text-scale-mode-amount))
;; 	  (defvar text-scale-mode-step)
;; 	  (defvar text-scale-mode-amount)
;; 	  (setq width (ceiling (* width (expt text-scale-mode-step text-scale-mode-amount))))
;; 	  (set-window-margins nil width (cdr (window-margins)))
;; 	  )
;; 	)
;;     )
;;   )

;; (defun mouse-fixup-help-message (msg)
;;   "Fix help message MSG for `mouse-1-click-follows-link' but speed up."
;;   (let (mp pos)
;;     (if (and mouse-1-click-follows-link
;; 	     (stringp msg)
;; 	     (string-match-p "\\`mouse-2" msg)
;; 	     (setq mp (mouse-pixel-position))
;; 	     ;; (consp (setq pos (cdr mp)))
;; 	     (setq pos (cdr mp))
;; 	     ;; (car pos) (>= (car pos) 0)
;; 	     ;; (cdr pos) (>= (cdr pos) 0)
;; 	     ;; (setq pos (posn-at-x-y (car pos) (cdr pos) (car mp)))
;; 	     (windowp (posn-window pos))
;; 	     )
;; 	(with-current-buffer (window-buffer (posn-window pos))
;; 	  (if (mouse-on-link-p pos)
;; 	      (setq msg (concat
;; 			 (cond
;; 			  ((eq mouse-1-click-follows-link 'double) "double-")
;; 			  ((and (integerp mouse-1-click-follows-link)
;; 				(< mouse-1-click-follows-link 0)) "Long ")
;; 			  (t ""))
;; 			 "mouse-1" (substring msg 7)))))))
;;   msg)


;; (setq auto-mode-alist
;;       (cons '("\\.m$" . octave-mode) auto-mode-alist))

;; (eval-after-load 'org-mode
;;   '(progn
;;     (setcar (nthcdr 2 org-emphasis-regexp-components) " \t\n,'")
;;     (custom-set-variables `(org-emphasis-alist ',org-emphasis-alist))))

;; (eval-after-load 'pandoc-mode
;;   #'(when (equal major-mode 'markdown-mode)
;;      (modify-syntax-entry ?^ "$")
;;      (modify-syntax-entry ?~ "$")
;;      (modify-syntax-entry ?$ "$")
;;      ))

