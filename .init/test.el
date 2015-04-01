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

(load-file "~/.emacs.d/SHELX-mode.el")

(require 'SHELX-mode)
(if (fboundp 'SHELX-mode)
    (progn
     (add-to-list 'auto-mode-alist '("\\.ins\\'" . SHELX-mode))
     (add-to-list 'auto-mode-alist '("\\.res\\'" . SHELX-mode))
     ))

(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

;; (eval-after-load 'org-mode
;;   '(progn
;;     (setcar (nthcdr 2 org-emphasis-regexp-components) " \t\n,'")
;;     (custom-set-variables `(org-emphasis-alist ',org-emphasis-alist))))

(eval-after-load 'pandoc-mode
  #'(when (equal major-mode 'markdown-mode)
     (modify-syntax-entry ?^ "$")
     (modify-syntax-entry ?~ "$")
     (modify-syntax-entry ?$ "$")
     ))

(defun hexo-deploy (dir)
  "Deploy hexo site.
If called with a prefix argument, the user is asked for directory of
the site. Otherwise, the directory is guessed from
`default-directory'."
  (interactive (list (if current-prefix-arg
		   (file-name-as-directory
		    (read-directory-name "Hexo site directory: "
					 default-directory))
		 default-directory)))
  (let ((old-dir default-directory))
    (if (file-exists-p (concat dir "db.json"))
	(progn
	  (setq default-directory dir)
	  (start-process "hexo-deploy" "*Hexo Deploy Output*" "hexo" "d" "-g")
	  (setq default-directory old-dir))
      (progn
	(if (file-exists-p (expand-file-name
			    (concat old-dir "../../db.json")))
	    (progn
	      (setq default-directory (expand-file-name
			    (concat old-dir "../../")))
	      (start-process "hexo-deploy"
			     "*Hexo*" "hexo" "d" "-g")
	      (setq default-directory old-dir))
	  (error "Hexo deploy failed. Wrong directory?"))))))

(defun hexo-wait-and-visit (proc max)
  "Use timer to wait hexo process finish then visit the created file."
  (if (eq (process-status proc) 'exit)
      ;; Exit normally.
      (let ((hexo-buffer (process-buffer proc)))
	(set-buffer hexo-buffer)
	(goto-char (point-min))
	;; Compatible with Hexo v3.
	(if (search-forward "Created: " nil t 1)
	    (progn
	      (find-file (buffer-substring-no-properties (point) (line-end-position)))
	      (kill-buffer hexo-buffer))))
    (when (< max 5)
	(run-with-timer 1 nil `(lambda () (funcall 'hexo-wait-and-visit ,proc ,(1+ max)))))))

(defun hexo-new (dir type title)
  "Create an hexo draft/page/photo/post/.
If called with a prefix argument, the user is asked for type of the
created item. By default, `tpye' is post."
  (interactive
   (list (file-name-as-directory
	  (read-directory-name "Hexo site directory: "
			       default-directory))
   (if current-prefix-arg
       (read-string "Type to create: " "post" nil "post")
     "post")
   (read-string "Title: ")))
  (let ((old-dir default-directory))
    (if (and (file-exists-p (concat dir "db.json"))
	     title)
	(progn
	  (setq default-directory dir)
	  (hexo-wait-and-visit (start-process "hexo-new" "*Hexo New Output*" "hexo" "n" type title) 0)
	  (setq default-directory old-dir)
	  )
      (error "Input directory is wrong."))))

(defun ss ()
  (interactive)
  (unless (process-status "ShadowSocks")
    ;; (set-process-coding-system (start-process "ShadowSocks" "*ShadowSocks Server*" "ss-local" "-u" "-c" "I:/msys64/etc/shadowsocks/config.json") 'undecided-dos)
    (set-process-coding-system (start-process "ShadowSocks" "*ShadowSocks Server*" "node" "i:/msys64/mingw64/lib/node_modules/shadowsocks/bin/sslocal" "-c" "I:/msys64/etc/shadowsocks/config.json") 'undecided-dos)
    ))

(ss)

(defun bandwagon-shell ()
  (interactive)
  (let ((default-directory "/sshx:root@104.224.170.13#29876:"))
    (shell (generate-new-buffer-name "*bandwagon*"))))

;; --indent=force-tab=#  OR  -T#
;; Indent using tab characters, assuming that each
;; indent is # spaces long. Force tabs to be used in areas
;; AStyle would prefer to use spaces.

;; --break-blocks  OR  -f
;; Insert empty lines around unrelated blocks, labels, classes, ...

;; --pad-oper  OR  -p
;; Insert space padding around operators.

;; --pad-header  OR  -H
;; Insert space padding after paren headers (e.g. 'if', 'for'...).

;; --unpad-paren  OR  -U
;; Remove unnecessary space padding around parenthesis. This
;; can be used in combination with the 'pad' options above.

;; --break-elseifs  OR  -e
;; Break 'else if()' statements into two different lines.

(defvar astyle-command "astyle --style=bsd -T8 -f -p -H -U -e")

(defun astyle (start end)
  "Run astyle on region or buffer"
  (interactive (if mark-active
		   (list (region-beginning) (region-end))
		 (list (point-min) (point-max))
		 ))
  (save-restriction
    (shell-command-on-region start end
			     astyle-command
			     (current-buffer) t
			     (get-buffer-create "*Astyle Errors*") t)))
