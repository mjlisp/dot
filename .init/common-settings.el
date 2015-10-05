;; Some Common Settings

(set-register ?e '(file . "~/.emacs.d/init.el"))
(set-register ?i '(file . "~/.emacs.d/.init/"))
(set-register ?h '(file . "~/repo/hexo-blog"))
(set-register ?r '(file . "~/repo/"))

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

(mapc (lambda (mode)
	(add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
	    'LaTeX-math-mode
	    ;; 'turn-on-reftex
	    ))

;; use ibuffer
(defalias 'list-buffers 'ibuffer)

(defalias 'dabbrev-expand 'hippie-expand)

(when (fboundp 'powerline-default-theme)
  (powerline-default-theme))

(add-hook 'dired-load-hook
	  (lambda () (require 'dired+)))

(windmove-default-keybindings)

(add-hook 'after-make-frame-functions
	  (lambda (new-frame)
	    (let* (fullscreen)
	      (setq fullscreen (list (assq 'fullscreen (frame-parameters))))
	      (select-frame new-frame)
	      (modify-frame-parameters (selected-frame) fullscreen))))

;; For Mew.
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

(when (fboundp 'rainbow-delimiters-mode)
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(when (and (require 'auto-compile)
	   (featurep 'auto-compile))
  (auto-compile-on-load-mode 1)
  (auto-compile-on-save-mode 1))
