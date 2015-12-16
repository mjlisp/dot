;; Auto Complete Settings

;; auto-complete的配置
;; (require 'auto-complete)
;; (require 'auto-complete-config)

(ac-config-default)

;; (setq ac-dictionary-directories (concat (elt (car (cdr (assq 'auto-complete package-alist))) 7) "/ac-dic"))

;; (add-to-list 'ac-sources 'ac-source-dabbrev)

(when (display-graphic-p)
  (progn
    ;; 改了这个auto-complete就不会乱
    (set-face-font 'ac-candidate-face "Inconsolata")
    (set-face-font 'ac-selection-face "Inconsolata")
    )
  )

;; 下面是我用auto-complete实现的一个字典补全 第一次比较慢 不过优点是可以比较方便的自定义
(defun ac-english-candidates ()
  (apply 'append
	 (mapcar 'ac-file-dictionary '("~/.emacs.d/englishwords/web2"
					    "~/.emacs.d/englishwords/dict"))))

(ac-define-source english-words
  '((candidates . ac-english-candidates)
    (cache . t)
    (symbol . "D")))

;; 根据词典补全英语
(global-set-key (kbd "C-M-/")
		#'(lambda ()
		  (interactive)
		  (unless auto-complete-mode
		      (auto-complete-mode 1))
		  (ac-complete-english-words)))

(defalias 'acm 'auto-complete-mode)
