(when (and (require 'cygwin-mount)
	   (featurep 'cygwin-mount))
  (cygwin-mount-activate))

(prefer-coding-system 'utf-8-unix)

(set-default 'process-coding-system-alist
      '(("[pP][lL][iI][nN][kK]" gbk-dos . gbk-dos)
	("[cC][mM][dD][pP][rR][oO][xX][yY]" gbk-dos . gbk-dos)))

(setq TeX-print-command "start \"\" %f")
(setq auto-save-file-name-transforms
      '(("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" "z:/TEMP/\\2" t)
	("/[^/]*:\\([^/]*/\\)*\\([^/]*\\)" "z:/TEMP/\\2" t)))
(setq TeX-shell "bash")
;; (setq doc-view-ghostscript-program "gswin64c.exe")
(setq ess-directory-containing-R "C:")
(setq explicit-bash-args (quote ("--noediting" "--login" "-i")))
(setq explicit-shell-file-name "bash")
(setenv "PATH" "C:\\msys64\\mingw64\\bin;C:\\msys64\\usr\\bin;C:\\msys64\\bin;C:\\Users\\Kel\\AppData\\Local\\Pandoc\\;C:\\Program Files\\MiKTeX 2.9\\miktex\\bin\\x64\\;E:\\msys\\opt\\Bin;E:\\autodock;C:\\Program Files\\7-zip;C:\\octave\\bin;C:\\Windows\\System32")
(setenv "MSYSTEM" "MINGW64")
(setq gnutls-trustfiles '("C:/msys64/usr/ssl/certs/ca-bundle.crt"))
(setq langtool-language-tool-jar "C:/LanguageTool-3.1/languagetool-commandline.jar")
(setq preview-gs-command "gswin32c.exe")
;; Print support.
(setq-default ps-lpr-command (expand-file-name "C:/Program Files/Ghostgum/gsview/gsprint.exe"))
(setq-default ps-printer-name t)
(setq-default ps-printer-name-option nil)
(setq ps-lpr-switches '("-query")) ; show printer dialog
(setq python-shell-interpreter "C:/Python27/Scripts/ipython.exe")
(setq python-shell-interpreter-args "-i")
(setq semantic-c-dependency-system-include-path
      '("/mingw64/x86_64-w64-mingw32/include" "/mingw64/include"))
(setq tramp-auto-save-directory "Z:\\TEMP\\")
(setq woman-manpath
      (quote
       ("C:/msys64/usr/man" "C:/msys64/usr/share/man" "C:/msys64/usr/local/share/man"
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
	"C:/msys64/mingw64/share/man")))

(when (and
       (featurep 'tex-site)
       (featurep 'tex-mik)
       (featurep 'texmathp))
  (require 'tex-site)
  (require 'tex-mik)
  (require 'texmathp))

(mapc (lambda (mode-hook)
	(add-hook mode-hook
		  '(lambda ()
		     (set-buffer-process-coding-system
		      'utf-8-unix 'utf-8-unix))))
      '(inferior-js-mode-hook))

(autoload 'dired-async-mode "dired-async.el" nil t)
(dired-async-mode 1)
