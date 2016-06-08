; BBDB
(add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)

(setq user-full-name "Raniere Silva")
(setq user-mail-address  "raniere@rgaiacs.com")

(setq my-email-addresses '("raniere@rgaiacs.com"
                           "raniere@riseup.net"
                           "r.gaia.cs@gmail.com"
                           "raniere.silva@manchester.ac.uk"
                           "r.silva@manchester.ac.uk"
                           "raniere.silva@software.ac.uk"
                           "r.silva@software.ac.uk"
                           "ra092767@ime.unicamp.br"
                           "raniere@ime.unicamp.br"))
(setq message-alternative-emails
     (regexp-opt my-email-addresses))

(setq gnus-posting-styles
       '((".*" ; For all groups
  (name "Raniere Silva")
  (address "raniere@rgaiacs.com"))
         ("manchester" ; For university
  (name "Raniere Silva")
  (address "raniere.silva@software.ac.uk"))
)
)

; https://www.emacswiki.org/emacs/GnusTutorial
(setq gnus-from-selected-index 0)
(defun gnus-loop-from ()
  (interactive)
  (setq gnus-article-current-point (point))
  (goto-char (point-min))
  (if (eq gnus-from-selected-index (length my-email-addresses))
      (setq gnus-from-selected-index 0) nil)
  (while (re-search-forward "^From:.*$" nil t)
    (replace-match (concat "From: " user-full-name " <" (nth gnus-from-selected-index my-email-addresses) ">")))
  (goto-char gnus-article-current-point)
  (setq gnus-from-selected-index (+ gnus-from-selected-index 1)))
(global-set-key (kbd "C-c f") 'gnus-loop-from)

;; set a copy on the out box
(setq gnus-parameters
    '((".*"
        (gcc-self . t)
        (setq gnus-gcc-mark-as-read t))))

; Suggestion from http://www.cataclysmicmutation.com/2010/11/multiple-gmail-accounts-in-gnus/
(setq message-send-mail-function 'message-send-mail-with-sendmail)
(setq sendmail-program "/usr/bin/msmtp")

;; set up smtp so we can send from gmail too:
;; working!!!
;(setq message-send-mail-function 'smtpmail-send-it
;     smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;     smtpmail-auth-credentials '(("smtp.gmail.com" 587 "r.gaia.cs@gmail.com" nil))
;     smtpmail-default-smtp-server "smtp.gmail.com"
;     smtpmail-smtp-server "smtp.gmail.com"
;     smtpmail-smtp-service 587)
;(setq message-send-mail-function 'smtpmail-send-it
;     smtpmail-starttls-credentials '(("mail.gandi.net" 587 nil nil))
;     smtpmail-auth-credentials '(("mail.gandi.net" 587 "raniere@rgaiacs.com" nil))
;     smtpmail-default-smtp-server "mail.gandi.net"
;     smtpmail-smtp-server "mail.gandi.net"
;     smtpmail-smtp-service 587)

(setq gnus-select-method '(nnnil))

;(add-to-list 'gnus-secondary-select-methods
;    '(nnmaildir "old"
;        (directory "~/mail/")))
;    '(nnmaildir "local"
;        (directory "~/maildir/")))
; Waiting to imap access be allowed
(add-to-list 'gnus-secondary-select-methods
    '(nnimap "imap.manchester.ac.uk"))
(add-to-list 'gnus-secondary-select-methods
    '(nnimap "mail.gandi.net"))
(add-to-list 'gnus-secondary-select-methods
    '(nnimap "mail.riseup.net"))
(add-to-list 'gnus-secondary-select-methods
             '(nnimap "imap.googlemail.com"))
(add-to-list 'gnus-secondary-select-methods
    '(nnimap "gator3092.hostgator.com"))

(gnus-demon-init)
