;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config/")

(require 'init-packages)
(require 'init-ui)

(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)

(global-auto-revert-mode t)


 
(global-linum-mode t)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("24qi" "Cha0res.K")
					    ;; Microsoft
					    ("24ms" "Microsoft")
					    ))

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 25)
(global-set-key (kbd "<f7>") 'recentf-open-files)

;; auto truncate-lines
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(require 'org)
(setq org-src-fontify-natively t)

(setq org-support-shift-select t)

(delete-selection-mode 1)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)




(setq make-backup-files nil)
(setq auto-save-default nil)

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(setq org-agenda-files '("~/Documents/org"))
(global-set-key (kbd "C-c a") 'org-agenda)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-minimum-prefix-length 2)
 '(company-tooltip-idle-delay 0.08))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
