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

(defun make-a-long-sentence (start end)
  "make a long sentence and also work on region"
  (interactive (if (use-region-p) (list (region-beginning) (region-end))
		 (list (line-beginning-position)
		       (if (eolp)
			   (1+ (line-end-position))
			 (line-end-position)))))
  (goto-char start)
  (while (< (point) end)
    (end-of-line)
    (when (and (char-before) (char-equal (char-before) ?-))
      (delete-char -1))
    (if (and (char-before) (string-match "\\cc" (char-to-string (char-before))))
	(delete-char 1)
      (delete-indentation -1))) ;一个现成函数 但要处理连字符
  (message "make-a-long-sentence completely."))

(global-set-key (kbd "H-j") 'make-a-long-sentence)

(defun dwim-make-a-long-sentence ()
  "make a long sentence and also work on region"
  (interactive)
  (if (use-region-p)
      (progn	; there is a text selection
	(save-restriction
	  (narrow-to-region (region-beginning) (region-end))
	  (goto-char (point-min))
	  (while (search-forward "\n" nil t) (replace-match "" nil t))))
    (progn
      (end-of-line)
      (delete-char 1))))


(defun bandwagon-shell ()
  (interactive)
  (let ((default-directory "/sshx:root@104.224.170.13#29876:"))
    (shell (generate-new-buffer-name "*bandwagon*"))))

(defun run-calc (expr &optional replace)
  "Calculate the `expr' using GNU bc.
If called interactively, the user is asked for input.  If called on
region the selected expression is used as input.  By default display
output in temp buffer `*BC Output*'.  With prefix, insert the output."
  (interactive
   (list (if (use-region-p)
	     (buffer-substring-no-properties
	      (region-beginning)
	      (region-end))
	   (quick-calc current-prefix-arg))
	 current-prefix-arg))
  (require 'calc)
  (let ((output (calc-eval expr)))
    (if (and replace output)
	(when (use-region-p)
	  (delete-region (region-beginning) (region-end))
	  (insert output))
      (message "Result: %s" output))))

(global-set-key (kbd "H-e") 'run-calc)
