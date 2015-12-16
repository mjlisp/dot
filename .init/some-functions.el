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
  "Make a long sentence and also works on region."
  (interactive (if (use-region-p) (list (region-beginning) (region-end))
		 (list (line-beginning-position)
		       (if (<= (1+ (line-end-position)) (point-max))
			   (1+ (line-end-position))
			 (line-end-position)))))
  (save-excursion
    (save-restriction
      (narrow-to-region start end)
      (delete-trailing-whitespace (point-min) (point-max))
      (goto-char (point-min))
      (while (< (point) (point-max))
	(end-of-line)
	(cond
	 ((and (char-before) (char-equal (char-before) ?-))
	  (delete-char -1)
	  (delete-indentation -1)
	  (delete-horizontal-space))
	 ((and (char-before) (string-match "\\cc" (char-to-string (char-before))))
	  (delete-indentation -1)
	  (delete-horizontal-space))
	 (t (delete-indentation -1))))
      (when current-prefix-arg
	(dolist (pairs
		 '(("\\([,.]\\)\\([^[:blank:],.]\\)" . "\\1 \\2")
		   ("\\(\\.\\)[[:blank:]]+\\(,\\)" . "\\1\\2")
		   ("\\[[:blank:]]+\\([.,]\\)" . "\\1")
		   ))
	  (goto-char (point-min))
	  (while (re-search-forward (car pairs) nil t)
	    (replace-match (cdr pairs) nil nil))))))
  (message "make-a-long-sentence completely."))

(global-set-key (kbd "H-j") 'make-a-long-sentence)

;; (defun fix-citation ((start end))
;;   "Fix citation format."
;;   (interactive (if (use-region-p) (list (region-beginning) (region-end))
;; 		 (list (line-beginning-position) (line-end-position))))
;;   (save-excursion
;;     (save-restriction
;;       (narrow-to-region start end)
;;       (goto-char (point-min))
;;       (while (re-search-forward "\\([,.]\\)\\([^[:blank:],.]\\)" nil t)
;; 	(replace-match "\\1 \\2" nil nil))
;;       (goto-char (point-min))
;;       (while (re-search-forward "\\(\\.\\)[[:blank:]]+\\(,\\)" nil t)
;; 	(replace-match "\\1\\2" nil nil))))
;;   (message "Fix-citation completely."))

;; (global-set-key (kbd "H-n") 'fix-citation)

;; (defun dwim-make-a-long-sentence ()
;;   "make a long sentence and also work on region"
;;   (interactive)
;;   (if (use-region-p)
;;       (progn	; there is a text selection
;; 	(save-restriction
;; 	  (narrow-to-region (region-beginning) (region-end))
;; 	  (goto-char (point-min))
;; 	  (while (search-forward "\n" nil t) (replace-match "" nil t))))
;;     (progn
;;       (end-of-line)
;;       (delete-char 1))))


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

(defun ss ()
  (interactive)
  (unless (process-status "ShadowSocks")
    ;; (set-process-coding-system (start-process "ShadowSocks" "*ShadowSocks Server*" "ss-local" "-u" "-c" "I:/msys64/etc/shadowsocks/config.json") 'undecided-dos)
    (when (string-equal system-type "windows-nt")
      (set-process-coding-system (start-process "ShadowSocks" "*ShadowSocks Server*" "node" "C:/msys64/mingw64/lib/node_modules/shadowsocks/bin/sslocal" "-c" "C:/msys64/etc/shadowsocks/config.json") 'undecided-dos))
    (when (string-equal system-type "gnu/linux")
      (start-process "ShadowSocks" "*ShadowSocks Server*" "systemctl" "start" "shadowsocks@bandwagon"))))

(ss)

(defun my-Sumatra-remove-unused-config ()
  (interactive)
  (while (re-search-forward "^.*FilePath = \\(.*\\.pdf\\)$" nil t)
    (let ((filename
	   (replace-regexp-in-string "\\\\"
				     "/" (match-string 1) t t)))
      (unless (file-exists-p filename)
	(previous-logical-line)
        (if (version<= emacs-version "25.1")
	    (beginning-of-sexp)
	  (thing-at-point--beginning-of-sexp))
	(kill-sexp)
	(delete-blank-lines)))))
