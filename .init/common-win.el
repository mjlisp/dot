(when (featurep 'cygwin-mount)
  (require 'cygwin-mount)
  (cygwin-mount-activate))

(setq TeX-print-command "start \"\" %f")
(setq auto-save-file-name-transforms
      '(("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" "z:/TEMP/\\2" t)
	("/[^/]*:\\([^/]*/\\)*\\([^/]*\\)" "z:/TEMP/\\2" t)))
(setq TeX-shell "bash")
(setq doc-view-ghostscript-program "gswin64c.exe")
(setq ess-directory-containing-R "E:")
(setq gnutls-trustfiles '("I:/msys64/usr/ssl/certs/ca-bundle.crt"))
(setq preview-gs-command "gswin64c.exe")
(setq ps-lpr-command "gswin64c.exe")
(setq python-shell-interpreter "I:/Python27/Scripts/ipython.exe")
(setq semantic-c-dependency-system-include-path
      '("/mingw64/x86_64-w64-mingw32/include" "/mingw64/include"))
(setq tramp-auto-save-directory "Z:\\TEMP\\")
(setq woman-manpath
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
	"I:/msys64/mingw64/share/man")))
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
