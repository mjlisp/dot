;;-*-coding: utf-8;-*-
(define-abbrev-table 'Buffer-menu-mode-abbrev-table '())

(define-abbrev-table 'Info-edit-mode-abbrev-table '())

(define-abbrev-table 'SHELX-mode-abbrev-table '())

(define-abbrev-table 'awk-mode-abbrev-table '())

(define-abbrev-table 'bibtex-mode-abbrev-table '())

(define-abbrev-table 'c++-mode-abbrev-table
  '(
    ("intmain" "#include <iostream>

using std::cout;
using std::cin;
using std::endl;

int main(void)
{
	return 0;
}
" nil 1)
   ))

(define-abbrev-table 'c-mode-abbrev-table
  '(
    ("intmain" "#define __USE_MINGW_ANSI_STDIO 1

#include <stdio.h>

int main(void)
{
	setbuf(stdout, NULL);
	return 0;
}" nil 1)
   ))

(define-abbrev-table 'calendar-mode-abbrev-table '())

(define-abbrev-table 'comint-mode-abbrev-table '())

(define-abbrev-table 'completion-list-mode-abbrev-table '())

(define-abbrev-table 'conf-colon-mode-abbrev-table '())

(define-abbrev-table 'conf-javaprop-mode-abbrev-table '())

(define-abbrev-table 'conf-ppd-mode-abbrev-table '())

(define-abbrev-table 'conf-space-mode-abbrev-table '())

(define-abbrev-table 'conf-unix-mode-abbrev-table '())

(define-abbrev-table 'conf-windows-mode-abbrev-table '())

(define-abbrev-table 'conf-xdefaults-mode-abbrev-table '())

(define-abbrev-table 'data-debug-mode-abbrev-table '())

(define-abbrev-table 'debugger-mode-abbrev-table '())

(define-abbrev-table 'diff-mode-abbrev-table '())

(define-abbrev-table 'diredp-w32-drives-mode-abbrev-table '())

(define-abbrev-table 'display-time-world-mode-abbrev-table '())

(define-abbrev-table 'edit-abbrevs-mode-abbrev-table '())

(define-abbrev-table 'elisp-byte-code-mode-abbrev-table '())

(define-abbrev-table 'emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'ftp-mode-abbrev-table '())

(define-abbrev-table 'fundamental-mode-abbrev-table '())

(define-abbrev-table 'gdb-script-mode-abbrev-table '())

(define-abbrev-table 'gfm-mode-abbrev-table '())

(define-abbrev-table 'global-abbrev-table '())

(define-abbrev-table 'gud-mode-abbrev-table '())

(define-abbrev-table 'help-mode-abbrev-table '())

(define-abbrev-table 'ibuffer-mode-abbrev-table '())

(define-abbrev-table 'idl-mode-abbrev-table '())

(define-abbrev-table 'image-dired-display-image-mode-abbrev-table '())

(define-abbrev-table 'image-dired-thumbnail-mode-abbrev-table '())

(define-abbrev-table 'inferior-emacs-lisp-mode-abbrev-table '())

(define-abbrev-table 'internal-ange-ftp-mode-abbrev-table '())

(define-abbrev-table 'java-mode-abbrev-table '())

(define-abbrev-table 'lisp-mode-abbrev-table '())

(define-abbrev-table 'markdown-mode-abbrev-table '())

(define-abbrev-table 'messages-buffer-mode-abbrev-table '())

(define-abbrev-table 'net-utils-mode-abbrev-table '())

(define-abbrev-table 'network-connection-mode-abbrev-table '())

(define-abbrev-table 'nslookup-mode-abbrev-table '())

(define-abbrev-table 'objc-mode-abbrev-table '())

(define-abbrev-table 'occur-edit-mode-abbrev-table '())

(define-abbrev-table 'occur-mode-abbrev-table '())

(define-abbrev-table 'org-mode-abbrev-table '())

(define-abbrev-table 'outline-mode-abbrev-table '())

(define-abbrev-table 'package-menu-mode-abbrev-table '())

(define-abbrev-table 'pandoc-@-mode-abbrev-table '())

(define-abbrev-table 'pike-mode-abbrev-table '())

(define-abbrev-table 'process-menu-mode-abbrev-table '())

(define-abbrev-table 'prog-mode-abbrev-table '())

(define-abbrev-table 'shell-mode-abbrev-table
  '(
    ("sock" "export SOCKS_SERVER=127.0.0.1:65500" nil 0)
   ))

(define-abbrev-table 'smbclient-mode-abbrev-table '())

(define-abbrev-table 'snippet-mode-abbrev-table '())

(define-abbrev-table 'special-mode-abbrev-table '())

(define-abbrev-table 'speedbar-mode-abbrev-table '())

(define-abbrev-table 'tabulated-list-mode-abbrev-table '())

(define-abbrev-table 'text-mode-abbrev-table
  '(
    ("c0" "⓪" nil 0)
    ("c1" "①" nil 0)
    ("c10" "⑩" nil 0)
    ("c11" "⑪" nil 0)
    ("c12" "⑫" nil 0)
    ("c13" "⑬" nil 0)
    ("c14" "⑭" nil 0)
    ("c15" "⑮" nil 0)
    ("c16" "⑯" nil 0)
    ("c17" "⑰" nil 0)
    ("c18" "⑱" nil 0)
    ("c19" "⑲" nil 0)
    ("c2" "②" nil 0)
    ("c20" "⑳" nil 0)
    ("c21" "㉑" nil 0)
    ("c22" "㉒" nil 0)
    ("c23" "㉓" nil 0)
    ("c24" "㉔" nil 0)
    ("c25" "㉕" nil 0)
    ("c26" "㉖" nil 0)
    ("c27" "㉗" nil 0)
    ("c28" "㉘" nil 0)
    ("c29" "㉙" nil 0)
    ("c3" "③" nil 0)
    ("c30" "㉚" nil 0)
    ("c31" "㉛" nil 0)
    ("c32" "㉜" nil 0)
    ("c33" "㉝" nil 0)
    ("c34" "㉞" nil 0)
    ("c35" "㉟" nil 0)
    ("c36" "㊱" nil 0)
    ("c37" "㊲" nil 0)
    ("c38" "㊳" nil 0)
    ("c39" "㊴" nil 0)
    ("c4" "④" nil 0)
    ("c40" "㊵" nil 0)
    ("c41" "㊶" nil 0)
    ("c42" "㊷" nil 0)
    ("c43" "㊸" nil 0)
    ("c44" "㊹" nil 0)
    ("c45" "㊺" nil 0)
    ("c46" "㊻" nil 0)
    ("c47" "㊼" nil 0)
    ("c48" "㊽" nil 0)
    ("c49" "㊾" nil 0)
    ("c5" "⑤" nil 0)
    ("c50" "㊿" nil 0)
    ("c6" "⑥" nil 0)
    ("c7" "⑦" nil 0)
    ("c8" "⑧" nil 0)
    ("c9" "⑨" nil 0)
   ))

(define-abbrev-table 'vc-git-log-edit-mode-abbrev-table '())

(define-abbrev-table 'vc-git-log-view-mode-abbrev-table '())

(define-abbrev-table 'vc-git-region-history-mode-abbrev-table '())
