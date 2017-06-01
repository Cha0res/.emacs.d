
(global-auto-revert-mode t)

(global-linum-mode t)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("24qi" "Cha0res.K")
					    ;; Microsoft
					    ("24ms" "Microsoft")
					    ))

(setq make-backup-files nil)
(setq auto-save-default nil)

(recentf-mode 1)
(setq recentf-max-menu-item 25)


(delete-selection-mode 1)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-better-defaults)
