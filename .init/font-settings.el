;; Font Settings

;; 来自一个普雷斯顿网站上找到的网页的配置。。
;; Setting English Font
(set-face-attribute
 'default nil :font "Inconsolata 17") ;: height 130
					  ;; DejaVu Sans
					  ;; Inconsolata
					  ;; Droid Sans Mono
					  ;; Source Code Pro

;; Chinese Font
;symbol kana bopomofo cjk-misc gb18030 chinese-gbk
(dolist (charset '(han gb18030 chinese-gbk bopomofo cjk-misc gb18030))
  (set-fontset-font t ;; (frame-parameter nil 'font)
		    charset
		    (font-spec :family "冬青黑体简体中文 W3")))
					; 冬青黑体简体中文 W3
					; Hiragino Sans GB W3
					; 思源黑体 CN Regular

(set-fontset-font t ;; (frame-parameter nil 'font)
		    'symbol
		    (font-spec :family "Symbola"))

(set-fontset-font t
		    '(#xe000 . #xfffe)
		    (font-spec :family "STIX"))

;; (set-fontset-font (frame-parameter nil 'font)
;; 		  'ISO10646
;; 		  (font-spec :family "Symbola"))

;; (set-fontset-font (frame-parameter nil 'font)
;; 		    '(#x1d4b6 . #x1d537)
;; 		    (font-spec :family "Symbola"))

;; (set-fontset-font t 'unicode "Symbola" nil 'prepend)


;; (set-fontset-font (frame-parameter nil 'font)
;; 		    '(#xe833 . #xe835)
;; 		    (font-spec :family "宋体-方正超大字符集"))

(defface strike-through
  '((t :strike-through t))
    "Basic strike through face."
    :group 'basic-faces)

