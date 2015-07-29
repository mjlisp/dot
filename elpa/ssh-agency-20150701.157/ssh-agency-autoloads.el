;;; ssh-agency-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ssh-agency" "ssh-agency.el" (21944 13555 0
;;;;;;  0))
;;; Generated autoloads from ssh-agency.el

(autoload 'ssh-agency-ensure "ssh-agency" "\
Start ssh-agent and add keys, as needed.

Intended to be used as advice for magit functions that initiate
remote operations.

\(fn &rest _)" nil nil)

(when (eq system-type 'windows-nt) (dolist (sym-fun '(magit-push magit-push-matching magit-push-tag magit-push-tags magit-pull magit-pull-current magit-fetch magit-fetch-current magit-fetch-all)) (advice-add sym-fun :before #'ssh-agency-ensure)))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ssh-agency-autoloads.el ends here
