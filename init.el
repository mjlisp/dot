(setq gc-cons-threshold (* 50 1024 1024))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-DVI-via-PDFTeX t)
 '(TeX-PDF-mode t)
 '(TeX-engine (quote xetex))
 '(TeX-queue-command nil)
 '(ac-auto-show-menu 0.1)
 '(c-echo-syntactic-information-p t)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "ff82ac6718ad6c69ddbd28f32c3544e8462c7c3d97afbe1a0c4a0773e48a96e2" default)))
 '(delete-selection-mode t)
 '(describe-char-unidata-list
   (quote
    (name old-name general-category canonical-combining-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase)))
 '(disaster-cc "gcc")
 '(disaster-cflags "-march=corei7-avx -g3 -std=c11")
 '(disaster-cxxflags "-march=corei7-avx -g3 -std=c++1y")
 '(disaster-objdump "objdump -d -M intel-mnemonic -Sl --no-show-raw-insn")
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(echo-keystrokes 0.1)
 '(electric-pair-mode t)
 '(ess-eval-visibly (quote nowait))
 '(font-lock-maximum-decoration t)
 '(gdb-many-windows t)
 '(gdb-show-main t)
 '(global-hl-line-mode t)
 '(global-prettify-symbols-mode t)
 '(global-semantic-decoration-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-idle-local-symbol-highlight-mode t nil (semantic/idle))
 '(global-semantic-idle-scheduler-mode t)
 '(global-semantic-idle-summary-mode t)
 '(global-semantic-show-parser-state-mode t)
 '(global-semantic-stickyfunc-mode nil)
 '(global-semanticdb-minor-mode t)
 '(gnuplot-process-name "pgnuplot")
 '(gnuplot-program "pgnuplot")
 '(google-translate-default-source-language "en")
 '(google-translate-default-target-language "zh-CN")
 '(gud-tooltip-mode t)
 '(help-at-pt-timer-delay 0.1)
 '(highlight-current-line-globally t)
 '(hscroll-margin 0)
 '(icomplete-max-delay-chars 2)
 '(inhibit-startup-screen t)
 '(ispell-dictionary "en_US-large")
 '(ispell-local-dictionary-alist
   (quote
    (("en_US-large" "[[:alpha:]]" "[^[:alpha:]]" "[']" t
      ("-d" "en_US-large")
      nil utf-8))))
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js3-indent-level 2)
 '(js3-indent-tabs-mode t)
 '(langtool-default-language "en-US")
 '(langtool-mother-tongue "zh-CN")
 '(list-directory-verbose-switches "-l")
 '(load-prefer-newer t)
 '(magit-last-seen-setup-instructions "1.4.0" t)
 '(magit-repo-dirs (quote ("~/repo")))
 '(make-backup-files nil)
 '(markdown-enable-math t)
 '(message-log-max 5000)
 '(minibuffer-prompt-properties
   (quote
    (read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)))
 '(mouse-scroll-delay 0.15)
 '(no-redraw-on-reenter t)
 '(org-export-copy-to-kill-ring nil)
 '(org-export-html-footnote-format "<sup>[%s]</sup>")
 '(org-export-show-temporary-export-buffer nil)
 '(org-export-with-footnotes t)
 '(org-footnote-section "Footnotes:")
 '(org-footnote-tag-for-non-org-mode-files nil)
 '(org-html-doctype "html5")
 '(org-support-shift-select t)
 '(overline-margin 0)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-enable-at-startup nil)
 '(package-selected-packages
   (quote
    (markdown-mode magit pos-tip git-commit hydra linum-relative visual-fill-column writegood-mode langtool ess async auto-complete auto-complete-pcmp dash dired+ js2-mode julia-mode log4e math-symbol-lists mew multiple-cursors org packed pandoc-mode php-mode popup powerline s simple-httpd skewer-mode synonyms yasnippet yaxception auto-compile rainbow-delimiters w32-browser srefactor yaoddmuse yaml-mode vlf smart-compile readline-complete rainbow-mode nlinum loc-changes js2-refactor js-comint htmlize gnuplot-mode fic-mode fasm-mode dot-mode disaster dired-k cygwin-mount csv-mode bash-completion auto-complete-auctex auctex alpha ac-octave ac-math ac-js2 ac-etags ac-dabbrev ac-c-headers)))
 '(preview-TeX-style-dir "" t)
 '(preview-auto-cache-preamble t)
 '(preview-default-document-pt 25.0)
 '(preview-fast-conversion nil)
 '(preview-gs-options
   (quote
    ("-q" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4")))
 '(preview-scale-function (quote preview-scale-from-face))
 '(ps-font-size (quote (9 . 10.5)))
 '(ps-lpr-switches
   (quote
    ("-q" "-dNOPAUSE" "-dBATCH" "-sDEVICE=mswinpr2" "-sPAPERSIZE=a4")) t)
 '(ps-print-header nil)
 '(ps-printer-name t t)
 '(search-whitespace-regexp "[-_ 
	]+")
 '(semantic-decoration-styles
   (quote
    (("semantic-decoration-on-includes" . t)
     ("semantic-decoration-on-protected-members")
     ("semantic-decoration-on-private-members")
     ("semantic-tag-boundary" . t))))
 '(semantic-default-submodes
   (quote
    (global-semantic-decoration-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode)))
 '(semantic-idle-work-update-headers-flag t)
 '(semantic-mode t)
 '(send-mail-function (quote smtpmail-send-it))
 '(server-window (quote switch-to-buffer-other-frame))
 '(sh-indentation 8)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smart-compile-alist
   (quote
    ((emacs-lisp-mode emacs-lisp-byte-compile)
     (html-mode browse-url-of-buffer)
     (nxhtml-mode browse-url-of-buffer)
     (html-helper-mode browse-url-of-buffer)
     (octave-mode run-octave)
     ("\\.c\\'" . "gcc -Wall -fomit-frame-pointer -funroll-loops -Ofast -march=corei7-avx -msse4.2 -mavx -std=c11 %f -lm -o %n")
     ("\\.[Cc]+[Pp]*\\'" . "g++ -Wall -fomit-frame-pointer -funroll-loops -Ofast -march=corei7-avx -msse4.2 -mavx -std=c++11 %f -lm -o %n")
     ("\\.java\\'" . "javac %f")
     ("\\.php\\'" . "php -l %f")
     ("\\.f90\\'" . "gfortran %f -o %n")
     ("\\.[Ff]\\'" . "gfortran %f -o %n")
     ("\\.cron\\(tab\\)?\\'" . "crontab %f")
     ("\\.tex\\'" tex-file)
     ("\\.texi\\'" . "makeinfo %f")
     ("\\.\\(md\\|markdown\\)\\'" . "pandoc %f -f markdown -o %n.docx")
     (text-mode . "pandoc %f -f markdown -o %n.docx")
     ("\\.mp\\'" . "mptopdf %f")
     ("\\.pl\\'" . "perl -cw %f")
     ("\\.rb\\'" . "ruby -cw %f"))))
 '(socks-server (quote ("Default server" "127.0.0.1" 65500 5)))
 '(synonyms-cache-file "~/.emacs.d/mthesaur.txt.cache")
 '(synonyms-file "~/.emacs.d/mthesaur.txt")
 '(tab-always-indent nil)
 '(text-scale-mode-step 1.04)
 '(timer-max-repeats 1)
 '(tool-bar-mode nil)
 '(tooltip-delay 1.5)
 '(tooltip-hide-delay 60)
 '(tooltip-short-delay 0.7)
 '(tramp-default-method "sshx")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(visible-bell t)
 '(vlfi-batch-size 1048576))

(prefer-coding-system 'utf-8-unix)
(set-locale-environment "UTF-8")

(unless (daemonp)
  (server-start))

;; 键绑定
(load "~/.emacs.d/.init/my-key-bindings")

(package-initialize)

(when (string-equal system-type "windows-nt")
  (load "~/.emacs.d/.init/common-win"))

;; 一般的设置
(load "~/.emacs.d/.init/common-settings")

;; keyboard macros
(load "~/.emacs.d/.init/.kmacros")

;; 一些函数及键绑定
(load "~/.emacs.d/.init/some-functions")

;; 补全的设置
(when (fboundp 'auto-complete)
  (load "~/.emacs.d/.init/auto-complete-settings"))

;; C语言编程
(load "~/.emacs.d/.init/for-C-language")
;; (load "~/.emacs.d/.init/for-org-mode")

(load-theme 'my-wheatgrass t)
(put 'dired-find-alternate-file 'disabled nil)

;; test
;; (load "~/.emacs.d/.init/test")

;; (load "~/.emacs.d/paradox-token.el")

(put 'upcase-region 'disabled nil)

(when (or (display-graphic-p) (daemonp))
  (when (and (require 'alpha) (featurep 'alpha))
    (transparency-set-value 85))
  ;; 字体设置
  (load "~/.emacs.d/.init/font-settings"))
