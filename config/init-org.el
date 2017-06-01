
(require 'org)
(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/Documents/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

;; auto truncate-lines
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(setq org-support-shift-select t)


(provide 'init-org)
