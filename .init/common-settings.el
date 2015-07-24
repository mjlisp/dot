;; Some Common Settings

(set-register ?e '(file . "~/.emacs.d/init.el"))
(set-register ?i '(file . "~/.emacs.d/.init"))

;; 语法加亮
(global-font-lock-mode 1)

;; 位置
(size-indication-mode 1)
(column-number-mode 1)

;; 显示时间
(display-time-mode 1)

;; 不闪
(setq ring-bell-function 'ignore)

;; 习惯使然 光标形状
(setq-default cursor-type 'bar)

;; 显示buffer的名字
(setq frame-title-format
      '("%b" (:eval
	      (if (buffer-file-name)
		  (concat " ("
			  (directory-file-name
			   (file-name-directory
			    (abbreviate-file-name
			     (buffer-file-name)))) "/)") ""))
	" - Emacs rules!"))

;; 选择文字输入后自动替换 习惯啦
(delete-selection-mode 1)

;;  纠正org-mode的换号问题
(add-hook 'org-mode-hook
	  (lambda ()(setq truncate-lines nil)))

(when (string-equal system-type "windows-nt")
  (require 'tex-site)
  (require 'tex-mik)
  (require 'texmathp))

(mapc (lambda (mode)
	(add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
	    'LaTeX-math-mode
	    ;; 'turn-on-reftex
	    )
      )

;; use ibuffer
(defalias 'list-buffers 'ibuffer)

(defalias 'dabbrev-expand 'hippie-expand)

(powerline-default-theme)

(defun byte-compile-current-buffer ()
  "`byte-compile' current buffer if it's emacs-lisp-mode and compiled file exists."
  (interactive)
  (when (and (eq major-mode 'emacs-lisp-mode)
	     (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (byte-compile-file buffer-file-name))
  )

(add-hook 'after-save-hook 'byte-compile-current-buffer)

(add-hook 'dired-load-hook
	  (lambda ()
	    (require 'dired+)
	    ))

(windmove-default-keybindings)

(add-hook 'after-make-frame-functions
	  (lambda (new-frame)
	    (let* (fullscreen)
	      (setq fullscreen (list (assq 'fullscreen (frame-parameters))))
	      (select-frame new-frame)
	      (modify-frame-parameters (selected-frame) fullscreen)
	      (transparency-set-value 85)
	      )
	    )
	  )

(if (string-equal
     system-type "windows-nt")
    (mapc (lambda (mode-hook)
	    (add-hook mode-hook
		      '(lambda ()
			 (set-buffer-process-coding-system
			  'utf-8-unix 'utf-8-unix)
			 )
		      )
	    )
	  '(inferior-js-mode-hook)))

;; For Mew.
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

(eval-after-load 'ess-mode
  '(require 'ac-R)
  )

;; hide horizontal bar

;; (when (fboundp 'horizontal-scroll-bar-mode)
;;   (horizontal-scroll-bar-mode -1))
