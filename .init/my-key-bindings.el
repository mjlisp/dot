;; Some Key-bindings

;; 不用C-z
(define-prefix-command 'ctl-z-map)
(global-set-key (kbd "C-z") 'ctl-z-map)
(global-set-key (kbd "C-z r")
		(lambda ()
		  (interactive)
		  (when (buffer-file-name)
		    (revert-buffer buffer-file-name t))))
(global-set-key (kbd "C-z C-r")
		(lambda ()
		  (interactive)
		  (when (buffer-file-name)
		    (revert-buffer buffer-file-name t))))
(global-set-key (kbd "C-z c")
		(lambda () (interactive) (erase-buffer)))
(global-set-key (kbd "C-z C")
		(lambda () (interactive) (erase-buffer)))

;; 一个ESC是C-g 和一般的程序一样
(global-set-key (kbd "<escape>")
		'keyboard-quit) ;; all platforms?

;; Rect-mark 区块选择 抄的
;; Support for marking a rectangle of text with highlighting.
;; (define-key ctl-x-map "r\C-@" 'rm-set-mark)
;; (define-key ctl-x-map [?\r ?\C-\ ] 'rm-set-mark)
;; (define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
;; (define-key ctl-x-map "r\C-w" 'rm-kill-region)
;; (define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
;; 改成 M-左键 是区域选择 貌似win里这个叫区块操作
;; (define-key global-map [M-drag-mouse-1] 'rm-mouse-drag-region)
;; (define-key global-map [M-down-mouse-1] 'rm-mouse-drag-region)
;; (autoload 'rm-set-mark "rect-mark"
;;   "Set mark for rectangle." t)
;; (autoload 'rm-exchange-point-and-mark "rect-mark"
;;   "Exchange point and mark for rectangle." t)
;; (autoload 'rm-kill-region "rect-mark"
;;   "Kill a rectangular region and save it in the kill ring." t)
;; (autoload 'rm-kill-ring-save "rect-mark"
;;   "Copy a rectangular region to the kill ring." t)
;; (autoload 'rm-mouse-drag-region "rect-mark"
;;   "Drag out a rectangular region with the mouse." t)

(global-set-key (kbd "C-<down-mouse-1>")
		(quote mouse-set-secondary))
(global-set-key (kbd "C-<drag-mouse-1>")
		(quote mouse-set-secondary))

(if (string-equal system-type "windows-nt")
    (progn
      (global-set-key (kbd "C-<wheel-down>")
		      'text-scale-decrease)
      (global-set-key (kbd "C-<wheel-up>")
		      'text-scale-increase)
      )
  )

(if (string-equal system-type "gnu/linux")
    (progn
      (global-set-key (kbd "C-<mouse-5>")
		      'text-scale-decrease)
      (global-set-key (kbd "C-<mouse-4>")
		      'text-scale-increase)
      )
  )

;; 加一个Shift+空格作为设定标记
(global-set-key (kbd "S-SPC")
		(quote set-mark-command))

;; 不用C-h了
;; (define-key global-map "\C-h" 'backward-delete-char)
(define-key key-translation-map (kbd "C-h") "")

;; M-s f 前景色
(global-set-key (kbd "M-s f")
		(quote facemenu-set-foreground))
;; M-s M-f 前景色
(global-set-key (kbd "M-s M-f")
		(quote facemenu-set-foreground))
;; M-s b 背景色
(global-set-key (kbd "M-s b")
		(quote facemenu-set-background))
;; M-s M-b 背景色
(global-set-key (kbd "M-s M-b")
		(quote facemenu-set-background))

(define-prefix-command 'Hyper-g-map)
(global-set-key (kbd "H-g")
		'Hyper-g-map)
(global-set-key (kbd "H-g g")
		(quote google-translate-at-point))
(global-set-key (kbd "H-g H-g")
		(quote google-translate-at-point))
(global-set-key (kbd "H-g r")
		(quote google-translate-at-point-reverse))
(global-set-key (kbd "H-g H-r")
		(quote google-translate-at-point-reverse))

(global-set-key (kbd "H-b")
		(quote switch-to-buffer))
(global-set-key (kbd "H-k")
		(lambda () (interactive) (kill-buffer nil)))

(global-set-key (kbd "H-1")
		(quote delete-other-windows))
(global-set-key (kbd "H-0")
		(quote delete-window))

(global-set-key (kbd "H-m")
		(lambda ()
		  (interactive)
		  (when (active-minibuffer-window)
		    (select-window
		     (active-minibuffer-window)))))

(global-set-key (kbd "H-s")
		(quote shell))
(global-set-key (kbd "H-o")
		(quote run-octave))
(global-set-key (kbd "H-q")
		(quote calculator))

(if (string-equal system-type "windows-nt")
    (setq w32-pass-lwindow-to-system nil
	  w32-pass-rwindow-to-system nil
	  w32-pass-apps-to-system nil
	  w32-pass-alt-to-system nil
	  w32-lwindow-modifier 'super ; Left Windows key
	  w32-rwindow-modifier 'hyper ; Right Windows key
	  w32-apps-modifier 'hyper    ; Menu key
	  ))

;; 扩展缩写 M-'
(global-set-key (kbd "M-'")
		(quote expand-abbrev))

;; (require 'misc)
(autoload 'copy-from-above-command "misc" nil t)
(global-set-key (kbd "H-y")
		'copy-from-above-command)

;; (require 'smart-compile)
(autoload 'smart-compile "smart-compile" nil t)
(global-set-key (kbd "H-c")
		'smart-compile)

(global-set-key (kbd "M-s-s")
		(lambda ()
		  (interactive)
		  (switch-to-buffer "*scratch*" nil
				    (quote force-same-window))))

(add-hook 'js2-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "C-x C-e")
			    'js-send-last-sexp)
	     (local-set-key (kbd "C-M-x")
			    'js-send-last-sexp-and-go)
	     (local-set-key (kbd "C-c b")
			    'js-send-buffer)
	     (local-set-key (kbd "C-c C-b")
			    'js-send-buffer-and-go)
	     (local-set-key (kbd "C-c r")
			    'js-send-region)
	     (local-set-key (kbd "C-c C-r")
			    'js-send-region-and-go)
	     (local-set-key (kbd "C-c l")
			    'js-load-file-and-go)
	     ))

(add-hook 'js-mode-hook
	  '(lambda ()
	     (local-set-key (kbd "C-x C-e")
			    'js-send-last-sexp)
	     (local-set-key (kbd "C-M-x")
			    'js-send-last-sexp-and-go)
	     (local-set-key (kbd "C-c b")
			    'js-send-buffer)
	     (local-set-key (kbd "C-c C-b")
			    'js-send-buffer-and-go)
	     (local-set-key (kbd "C-c r")
			    'js-send-region)
	     (local-set-key (kbd "C-c C-r")
			    'js-send-region-and-go)
	     (local-set-key (kbd "C-c l")
			    'js-load-file-and-go)
	     ))

;; (add-hook 'markdown-mode-hook
;; 	  '(lambda ()
;; 	     (local-set-key (kbd "M-RET")
;; 			    'markdown-insert-header-dwim)
;; 	     ))

; vi `.' command emulation
(autoload 'dot-mode "dot-mode" nil t) 
(global-set-key (kbd "C-.")
		(lambda () (interactive)
		  (dot-mode 1)
		  (message "Dot mode activated.")))

(global-set-key (kbd "C-<kp-4>")
		'switch-to-buffer)
(global-set-key (kbd "C-<kp-5>")
		'shell)
(global-set-key (kbd "C-<kp-6>")
		'list-buffers)
(global-set-key (kbd "C-<kp-7>")
		'keyboard-quit)

(require 'iso-transl)
(iso-transl-define-keys
 '(("&A" . [?Α])
   ("&B" . [?Β])
   ("&G" . [?Γ])
   ("&D" . [?Δ])
   ("&E" . [?Ε])
   ("&F" . [?Ζ])
   ("&H" . [?Η])
   ("&T" . [?Θ])
   ("&I" . [?Ι])
   ("&K" . [?Κ])
   ("&L" . [?Λ])
   ("&M" . [?Μ])
   ("&N" . [?Ν])
   ("&C" . [?Ξ])
   ("&O" . [?Ο])
   ("&P" . [?Π])
   ("&R" . [?Ρ])
   ("&S" . [?Σ])
   ("&T" . [?Τ])
   ("&Y" . [?Υ])
   ("&F" . [?Φ])
   ("&X" . [?Χ])
   ("&Q" . [?Ψ])
   ("&W" . [?Ω])
   ("&a" . [?α])
   ("&b" . [?β])
   ("&g" . [?γ])
   ("&d" . [?δ])
   ("&e" . [?ε])
   ("&f" . [?ζ])
   ("&h" . [?η])
   ("&t" . [?θ])
   ("&i" . [?ι])
   ("&k" . [?κ])
   ("&l" . [?λ])
   ("&m" . [?μ])
   ("&n" . [?ν])
   ("&c" . [?ξ])
   ("&o" . [?ο])
   ("&p" . [?π])
   ("&r" . [?ρ])
   ("&s" . [?σ])
   ("&t" . [?τ])
   ("&y" . [?υ])
   ("&f" . [?φ])
   ("&x" . [?χ])
   ("&q" . [?ψ])
   ("&w" . [?ω])))
