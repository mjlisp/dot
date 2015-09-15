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
		(forward-char)))))
	(message "make-a-long-sentence completely.")))
  (progn
    (let (str pt)
      (delete-indentation 1)		;一个现成函数 但要处理连字符
      (backward-char)
      (setq str (buffer-substring (setq pt (point)) (1+ pt)))
      (if (string-equal str "-")
	  (delete-char 2)
	(forward-char)))))

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
	  (while (search-forward "\n" nil t) (replace-match "" nil t))))
    (progn
      (end-of-line)
      (delete-char 1))))

;; s-;
(global-set-key [8388667] (quote dwim-make-a-long-sentence))

;; C-M-;
(global-set-key [201326651] (quote dwim-make-a-long-sentence))

(defun bandwagon-shell ()
  (interactive)
  (let ((default-directory "/sshx:root@104.224.170.13#29876:"))
    (shell (generate-new-buffer-name "*bandwagon*"))))
