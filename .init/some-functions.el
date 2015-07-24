;; Some Functions

(defadvice kill-ring-save (before slick-copy activate compile)
  "When called interactively with no active region, copy a single line instead."
  (interactive (if mark-active (list (region-beginning) (region-end))
                 (message "Copied line")
                 (list (line-beginning-position)
                       (line-beginning-position 2)))))

(defadvice kill-region (before slick-cut (beg end &optional yank-handler) activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive (if mark-active (list (region-beginning) (region-end))
                 (message "Cut line")
                 (list (line-beginning-position)
                       (line-beginning-position 2)))))

(defun make-a-long-sentence ()
  "make a long sentence and also work on region"
  (interactive)
  (if (region-active-p)
      (save-restriction	; there is a text selection
	(narrow-to-region (region-beginning) (region-end))
	(goto-char (point-min))
	(let (str pt)
	  (while (< (point) (point-max))
	    (progn
	      (delete-indentation 1)		;一个现成函数 但要处理连字符
	      (backward-char)
	      (setq str (buffer-substring (setq pt (point)) (1+ pt)))
	      (if (string-equal str "-")
		  (delete-char 2)
		(forward-char)
		)
	      )
	    )
	  )
	(message "make-a-long-sentence completely.")
	)
    )
  (progn
    (let (str pt)
      (delete-indentation 1)		;一个现成函数 但要处理连字符
      (backward-char)
      (setq str (buffer-substring (setq pt (point)) (1+ pt)))
      (if (string-equal str "-")
	  (delete-char 2)
	(forward-char)
	)
      )
    )
  )

;; C-;
(global-set-key [67108923] (quote make-a-long-sentence))

(defun dwim-make-a-long-sentence ()
  "make a long sentence and also work on region"
  (interactive)
  (if (region-active-p)
      (progn	; there is a text selection
	(save-restriction
	  (narrow-to-region (region-beginning) (region-end))
	  (goto-char (point-min))
	  (while (search-forward "\n" nil t) (replace-match "" nil t))
	  )
	)
    (progn
      (end-of-line)
      (delete-char 1)
      )
    )
  )

;; s-;
(global-set-key [8388667] (quote dwim-make-a-long-sentence))

;; C-M-;
(global-set-key [201326651] (quote dwim-make-a-long-sentence))

(load-file "~/.emacs.d/SHELX-mode.el")

(require 'SHELX-mode)
(if (fboundp 'SHELX-mode)
    (progn
     (add-to-list 'auto-mode-alist '("\\.ins\\'" . SHELX-mode))
     (add-to-list 'auto-mode-alist '("\\.res\\'" . SHELX-mode))
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
