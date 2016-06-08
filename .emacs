;; To reload this file use
;; M-x load-file

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)

;; Remove tool bar
(tool-bar-mode -1)

;; Set browser
(setq browse-url-browser-function 'browse-url-generic
            browse-url-generic-program "chromium")
;            browse-url-generic-program "google-chrome")
;            browse-url-generic-program "firefox")
;            browse-url-generic-program "epiphany")

;; No tabs
(setq-default indent-tabs-mode nil)

;; Fill mode
(add-hook 'text-mode-hook 'turn-on-auto-fill)

; Address book, BBDB
;
; Add path to lisp files (if not installed globally.
(add-to-list 'load-path "~/.emacs.d/bbdb")
; Load BBDB
(require 'bbdb-autoloads)
(require 'bbdb)
(bbdb-initialize 'gnus 'message)
(add-hook 'message-setup-hook 'bbdb-define-all-aliases)
; Set correct phone number format
(setq bbdb-north-american-phone-numbers-p nil)

; BBDB Vcard
;
; In Emacs run "M-x bbdb-vcard-import-file" and input the full path of
; contacts.vcf
;
; In Emacs run "M-x bbdb-save-db".
;(add-to-list 'load-path "~/.emacs.d/bbdb-vcard/")
;(require 'bbdb-vcard)


;; Global configuration for Org
(setq org-log-done 'time)
(setq org-enforce-todo-dependencies t)
(setq org-agenda-include-diary t)

;; If you would like a TODO entry to automatically change to DONE when all children are done, you can use the following setup:
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)


;; Global key for Org commands
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;; format string used when creating CLOCKSUM lines and when generating a
;; time duration (avoid showing days)
(setq org-time-clocksum-format
            '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes nil)
 '(org-agenda-files (quote ("~/SSI/ssi.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("m" "Template for task related with email" entry (file "~/org/home.org")
         "* TODO %?\n  %i\n  %a")))

