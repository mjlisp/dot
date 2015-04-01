(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-DVI-via-PDFTeX t)
 '(TeX-PDF-mode t)
 '(TeX-engine (quote xetex))
 '(TeX-print-command "start \"\" %f")
 '(TeX-queue-command nil)
 '(TeX-shell "bash")
 '(ac-auto-show-menu 0.1)
 '(ac-auto-start t)
 '(auto-save-file-name-transforms
   (quote
    (("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" "z:/TEMP/\\2" t)
     ("/[^/]*:\\([^/]*/\\)*\\([^/]*\\)" "z:/TEMP/\\2" t))))
 '(bidi-display-reordering nil t)
 '(bidi-paragraph-direction (quote left-to-right))
 '(c-echo-syntactic-information-p t)
 '(calculator-2s-complement t)
 '(calculator-number-digits 16)
 '(compile-command "gcc -Wall -Ofast -mavx ")
 '(custom-safe-themes
   (quote
    ("6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "ff82ac6718ad6c69ddbd28f32c3544e8462c7c3d97afbe1a0c4a0773e48a96e2" default)))
 '(delete-selection-mode t)
 '(describe-char-unidata-list
   (quote
    (name old-name general-category canonical-combining-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase)))
 '(disaster-cc "gcc")
 '(disaster-cflags
   "-march=corei7-avx -Ofast -fomit-frame-pointer -funroll-loops -msse4.2 -mavx -std=c11")
 '(disaster-cxxflags
   "-march=corei7-avx -Ofast -fomit-frame-pointer -funroll-loops -msse4.2 -mavx -std=c++1y")
 '(disaster-objdump "objdump -d -M intel-mnemonic -Sl --no-show-raw-insn")
 '(display-time-24hr-format t)
 '(doc-view-ghostscript-program "gswin64c.exe")
 '(electric-pair-mode t)
 '(ess-directory-containing-R "E:")
 '(ess-eval-visibly (quote nowait))
 '(explicit-bash-args (quote ("--noediting" "--login" "-i")))
 '(explicit-shell-file-name "bash")
 '(font-lock-maximum-decoration t)
 '(gdb-many-windows t)
 '(gdb-show-main t)
 '(global-hl-line-mode t)
 '(global-prettify-symbols-mode t)
 '(global-semantic-decoration-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-idle-completions-mode nil nil (semantic/idle))
 '(global-semantic-idle-local-symbol-highlight-mode t nil (semantic/idle))
 '(global-semantic-idle-scheduler-mode t)
 '(global-semantic-idle-summary-mode t)
 '(global-semantic-stickyfunc-mode nil)
 '(global-semanticdb-minor-mode t)
 '(gnuplot-process-name "pgnuplot")
 '(gnuplot-program "pgnuplot")
 '(gnutls-trustfiles (quote ("I:/msys64/usr/ssl/certs/ca-bundle.crt")))
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
 '(js2-basic-offset 8)
 '(js3-indent-level 8)
 '(js3-indent-tabs-mode t)
 '(linum-delay t)
 '(linum-eager nil)
 '(list-directory-verbose-switches "-l")
 '(magit-repo-dirs (quote ("~/repo")))
 '(make-backup-files nil)
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
 '(org2blog/wp-blog-alist
   (quote
    (("sf.net" :url "http://all-things-zklhp.sourceforge.net/xmlrpc.php" :username "admin" :keep-new-lines t :confirm t :wp-code nil :tags-as-categories nil))))
 '(org2blog/wp-buffer-format-function (quote org2blog/wp-my-format-buffer))
 '(org2blog/wp-buffer-template
   "#+DATE: %s
#+OPTIONS: toc:nil H:0 num:nil todo:nil pri:nil tags:nil ^:nil TeX:nil @:t
#+TAGS: 
#+PERMALINK: 
#+TITLE: 
#+CATEGORY: 

#+BEGIN_SRC text
 ;; **************************************************************************************************************
 ;; Author: zklhp
 ;; Email: zklhp@sina.com
 ;; QQ: 493165744
 ;; Last Update: %s
 ;; Licensed under CC BY-SA 3.0
 ;; **************************************************************************************************************
#+END_SRC

#+HTML: <!--more-->
")
 '(org2blog/wp-show-post-in-browser nil)
 '(org2blog/wp-use-sourcecode-shortcode t)
 '(overline-margin 0)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-enable-at-startup nil)
 '(package-selected-packages
   (quote
    (srefactor async paradox powerline synonyms yaoddmuse yaml-mode weblogger vlf smart-compile rich-minority readline-complete rainbow-mode php-mode pandoc-mode outline-magic org2blog org-ac nlinum mew markdown-mode+ magit loc-changes linum-relative js2-refactor js-comint htmlize hide-region google-translate go-mode gnuplot-mode fic-mode fasm-mode ess dot-mode disaster dired-k dired+ cygwin-mount csv-mode company bash-completion auto-complete-auctex auctex alpha ac-octave ac-math ac-js2 ac-etags ac-dabbrev ac-c-headers ac-R)))
 '(paradox-automatically-star t)
 '(paradox-execute-asynchronously t)
 '(preview-TeX-style-dir "" t)
 '(preview-auto-cache-preamble t)
 '(preview-default-document-pt 25.0)
 '(preview-fast-conversion nil)
 '(preview-gs-command "GSWIN64C.EXE")
 '(preview-gs-options
   (quote
    ("-q" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4")))
 '(preview-scale-function (quote preview-scale-from-face))
 '(ps-font-size (quote (9 . 10.5)))
 '(ps-lpr-command "gswin64c.exe")
 '(ps-lpr-switches
   (quote
    ("-q" "-dNOPAUSE" "-dBATCH" "-sDEVICE=mswinpr2" "-sPAPERSIZE=a4")))
 '(ps-print-header nil)
 '(ps-printer-name t)
 '(python-shell-interpreter "ipython2")
 '(python-shell-interpreter-args "-i")
 '(semantic-c-dependency-system-include-path
   (quote
    ("/usr/include" "/mingw64/x86_64-w64-mingw32/include" "/mingw64/include")))
 '(semantic-default-submodes
   (quote
    (global-semantic-decoration-mode global-semantic-idle-scheduler-mode global-semanticdb-minor-mode global-semantic-idle-summary-mode)))
 '(semantic-idle-work-update-headers-flag t)
 '(semantic-mode t)
 '(semantic-stickyfunc-indent-string " ")
 '(send-mail-function (quote smtpmail-send-it))
 '(server-window (quote switch-to-buffer-other-frame))
 '(sh-indentation 8)
 '(show-paren-mode t)
 '(smart-compile-alist
   (quote
    ((emacs-lisp-mode emacs-lisp-byte-compile)
     (html-mode browse-url-of-buffer)
     (nxhtml-mode browse-url-of-buffer)
     (html-helper-mode browse-url-of-buffer)
     (octave-mode run-octave)
     ("\\.c\\'" . "gcc -Wall -fomit-frame-pointer -funroll-loops -Ofast -march=corei7-avx -msse4.2 -mavx -std=c11 %f -lm -o %n")
     ("\\.[Cc]+[Pp]*\\'" . "g++ -Wall -fomit-frame-pointer -funroll-loops -Ofast -march=corei7-avx -msse4.2 -mavx -std=c++11 %f -lm -o %n")
     ("\\.m\\'" . "gcc -O2 %f -lobjc -lpthread -o %n")
     ("\\.java\\'" . "javac %f")
     ("\\.php\\'" . "php -l %f")
     ("\\.f90\\'" . "gfortran %f -o %n")
     ("\\.[Ff]\\'" . "gfortran %f -o %n")
     ("\\.cron\\(tab\\)?\\'" . "crontab %f")
     ("\\.tex\\'" tex-file)
     ("\\.texi\\'" . "makeinfo %f")
     ("\\.mp\\'" . "mptopdf %f")
     ("\\.pl\\'" . "perl -cw %f")
     ("\\.rb\\'" . "ruby -cw %f"))))
 '(smtpmail-smtp-server "smtp.163.com")
 '(smtpmail-smtp-service 25)
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
 '(tramp-auto-save-directory "Z:\\TEMP\\")
 '(tramp-default-method "sshx")
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(visible-bell t)
 '(vlfi-batch-size 1048576)
 '(woman-manpath
   (quote
    ("I:/msys64/usr/man" "I:/msys64/usr/share/man" "I:/msys64/usr/local/share/man"
     ("/bin" . "/usr/share/man")
     ("/usr/bin" . "/usr/share/man")
     ("/sbin" . "/usr/share/man")
     ("/usr/sbin" . "/usr/share/man")
     ("/usr/local/bin" . "/usr/local/man")
     ("/usr/local/bin" . "/usr/local/share/man")
     ("/usr/local/sbin" . "/usr/local/man")
     ("/usr/local/sbin" . "/usr/local/share/man")
     ("/usr/X11R6/bin" . "/usr/X11R6/man")
     ("/usr/bin/X11" . "/usr/X11R6/man")
     ("/usr/games" . "/usr/share/man")
     ("/opt/bin" . "/opt/man")
     ("/opt/sbin" . "/opt/man")
     "I:/msys64/mingw64/share/man"))))

(unless (daemonp)
  (server-start))

;; (profiler-start 'cpu)

(package-initialize)

(require 'cygwin-mount)
(cygwin-mount-activate)

(require 'alpha)
(transparency-set-value 85)

(global-hl-line-mode)

(prefer-coding-system 'utf-8-unix)

;; 键绑定
(load "~/.emacs.d/.init/my-key-bindings")

;; 一般的设置
(load "~/.emacs.d/.init/common-settings")

;; keyboard macros
(load "~/.emacs.d/.init/.kmacros")

;; 一些函数及键绑定
(load "~/.emacs.d/.init/some-functions")

;; 补全的设置
(when (fboundp 'auto-complete)
  (load "~/.emacs.d/.init/auto-complete-settings"))

;; 字体设置
(when (or (display-graphic-p) (daemonp))
  (load "~/.emacs.d/.init/font-settings"))

;; C语言编程
(load "~/.emacs.d/.init/for-C-language")

;; (load "~/.emacs.d/.init/for-org-mode")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'my-wheatgrass t)
(put 'dired-find-alternate-file 'disabled nil)

;; test
(load "~/.emacs.d/.init/test")

(load "~/.emacs.d/paradox-token.el")
