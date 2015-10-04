;; Font Settings

;; Setting English Font
(set-face-attribute
 'default nil :family "Inconsolata" :height 160) ;: height 130
					  ;; DejaVu Sans
					  ;; Inconsolata
					  ;; Droid Sans Mono
					  ;; Source Code Pro

(set-fontset-font t 'symbol "Inconsolata" nil 'prepend)

;; (set-fontset-font t 'unicode-bmp "STIX" nil 'append)
;; (set-fontset-font t 'symbol "Segoe UI Emoji" nil 'append)

;; Chinese Font
;  cjk-misc gb18030 chinese-gbk chinese-gb2312
(dolist (charset '(han cjk-misc chinese-gbk))
  (set-fontset-font t ;; (frame-parameter nil 'font)
  		    charset
		    (font-spec :family "冬青黑体简体中文 W3")))
					; 微软雅黑
					; 冬青黑体简体中文 W3
					; Hiragino Sans GB W3
					; 思源黑体 CN Regular

(set-fontset-font t 'unicode "Symbola" nil 'append)
(set-fontset-font t '(#xE000 . #xF8FF) "STIX")
(set-fontset-font t '(#x1F600 . #x1F64F) "Segoe UI Symbol")

(set-fontset-font t ?– "Symbola")
(set-fontset-font t ?′ "Symbola")

;; (set-fontset-font t ;; (frame-parameter nil 'font)
;; 		    'symbol
;; 		    (font-spec :family "Symbola"))


;; (set-fontset-font t 'unicode "Symbola" nil 'prepend)

;; (set-fontset-font t
;; 		    '(#x0300 . #x0306)
;; 		    (font-spec :family "STIX"))

;; (set-fontset-font (frame-parameter nil 'font)
;; 		  'ISO10646
;; 		  (font-spec :family "Symbola"))

;; (set-fontset-font (frame-parameter nil 'font)
;; 		    '(#x1d4b6 . #x1d537)
;; 		    (font-spec :family "Symbola"))



;; (set-fontset-font (frame-parameter nil 'font)
;; 		    '(#xe833 . #xe835)
;; 		    (font-spec :family "宋体-方正超大字符集"))

(defface strike-through
  '((t :strike-through t))
    "Basic strike through face."
    :group 'basic-faces)

