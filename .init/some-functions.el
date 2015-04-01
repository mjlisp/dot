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

(defun open-in-external-app ()
  "Open the current file or dired marked files in external app.
Works in Microsoft Windows, Mac OS X, Linux."
  (interactive)
  (let ( doIt
         (myFileList
          (cond
           ((string-equal major-mode "dired-mode") (dired-get-marked-files))
           (t (list (buffer-file-name))))))

    (setq doIt (if (<= (length myFileList) 5)
                   t
                 (y-or-n-p "Open more than 5 files?")))
    
    (when doIt
      (cond
       ((string-equal system-type "windows-nt")
        (mapc (lambda (fPath) (w32-shell-execute "open" (replace-regexp-in-string "/" "\\" fPath t t))) myFileList)
	)
       ((string-equal system-type "darwin")
        (mapc (lambda (fPath) (let ((process-connection-type nil)) (start-process "" nil "open" fPath))) myFileList))
       ((string-equal system-type "gnu/linux")
        (mapc (lambda (fPath) (let ((process-connection-type nil)) (start-process "" nil "xdg-open" fPath))) myFileList)))))
  )

;; (defun insert-_-or-insert-_-in-region ()
;;   "insert _{}."
;;   (interactive)
;;   (let (pos1 pos2)
;;     (if (region-active-p)
;; 	(progn
;; 	  (setq pos1 (region-beginning) pos2 (region-end))
;; 	  (goto-char pos1) (insert "_{")
;; 	  (setq pos2 (+ 2 pos2))
;; 	  (goto-char pos2) (insert "}")
;; 	  )
;;       (progn
;; 	(insert "_{}")
;; 	(backward-char 1)
;; 	)
;;       )
;;     )
;;   )


;; (defun insert-^-or-insert-^-in-region ()
;;   "insert ^{}."
;;   (interactive)
;;   (let (pos1 pos2)
;;     (if (region-active-p)
;; 	(progn
;; 	  (setq pos1 (region-beginning) pos2 (region-end))
;; 	  (goto-char pos1) (insert "^{")
;; 	  (setq pos2 (+ 2 pos2))
;; 	  (goto-char pos2) (insert "}")
;; 	  )
;;       (progn
;; 	(insert "^{}")
;; 	(backward-char 1)
;; 	)
;;       )
;;     )
;;   )


(defvar suscript-height 0.8
  "Ratio of subscript/superscript height.")

(defvar suscript-raise 0.3
  "How much to lower and raise subscript and superscript content.")

(defun suscript (beg end sub)
  "If non-nil, subscript the content. Otherwise superscript."
  (put-text-property
   beg end 'display
   `((raise ,(if sub (* suscript-raise -1) suscript-raise))
     (height ,suscript-height))))

(defun subscript ()
  (interactive)
  (if (region-active-p)
      (funcall 'suscript (region-beginning) (region-end) t)))
    ;; (funcall 'suscript (point) (point) t)

(defun superscript ()
  (interactive)
  (if (region-active-p)
      (funcall 'suscript (region-beginning) (region-end) nil)))
    ;; (funcall 'suscript (point) (point) nil)

;; C-+
(global-set-key (kbd "C-+")
		(quote superscript))

;; C-=
(global-set-key (kbd "C-=")
		(quote subscript))

(defun org2blog/wp-my-format-buffer (buffer-template)
  "Default buffer formatting function."
  (format buffer-template
     (format-time-string "[%Y-%m-%d %a %H:%M]" (current-time))
     (format-time-string "%Y-%m-%d" (current-time))
     (mapconcat
        (lambda (cat) cat)
          (or (plist-get (cdr org2blog/wp-blog) :default-categories)
              org2blog/wp-default-categories)
        ", ")
     (or (plist-get (cdr org2blog/wp-blog) :default-title)
          org2blog/wp-default-title)))
