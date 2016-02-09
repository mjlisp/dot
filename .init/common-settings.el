;; Some Common Settings

(global-hl-line-mode)

(set-register ?e '(file . "~/.emacs.d/"))
(set-register ?i '(file . "~/.emacs.d/.init/"))
(set-register ?h '(file . "~/repo/hexo-blog/"))
(set-register ?s '(file . "~/repo/hexo-blog/source/_posts/"))
(set-register ?r '(file . "~/repo/"))

;; 位置
(size-indication-mode 1)
(column-number-mode 1)

;; 显示时间
(display-time-mode 1)

;; 不闪
(setq-default ring-bell-function 'ignore)

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

;;  纠正org-mode的换号问题
(add-hook 'org-mode-hook
	  #'(lambda ()(setq truncate-lines nil)))

(mapc #'(lambda (mode)
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

(with-eval-after-load 'dired
  (require 'dired+))

(windmove-default-keybindings)

(add-hook 'after-make-frame-functions
	  #'(lambda (new-frame)
	    (let* ((fullscreen (list (assq 'fullscreen (frame-parameters))))
		   (alpha (list (assq 'alpha (frame-parameters)))))
	      (select-frame new-frame)
	      (modify-frame-parameters (selected-frame) fullscreen)
	      (modify-frame-parameters (selected-frame) alpha))))

;; For Mew.
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

(when (fboundp 'rainbow-delimiters-mode)
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(when (and (require 'auto-compile)
	   (featurep 'auto-compile))
  (auto-compile-on-load-mode 1)
  (auto-compile-on-save-mode 1))

(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))

;; Load the mode written by me.
(add-to-list 'load-path "~/.emacs.d/local-mode")
(autoload 'astyle "astyle-utils" nil t)
;; (require 'astyle-utils)
(autoload 'hexo-new "hexo-utils" nil t)
(autoload 'hexo-deploy "hexo-utils" nil t)
;; (require 'hexo-utils)
(require 'SHELX-mode)
(require 'emoji)
(require 'bc-mode)

;; Open shell in the same window.
(add-to-list 'display-buffer-alist '("*shell*" display-buffer-same-window))
