(require 'cl)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )

;; add whatever packages
(defvar cha0res/packages '(
                           ;; --- Auto-completion ---
                           company
			   ;; --- Better Editor ---
			   hungry-delete
			   swiper
			   counsel
			   smartparens
			   ;; --- Major Mode ---
			   js2-mode
			   ;; --- Minor Mode ---
			   nodejs-repl
			   exec-path-from-shell
			   popwin
                           ;; --- Themes ---
			   solarized-theme
                           ) "Default packages")

(setq package-selected-packages 'cha0res/packages)


(defun cha0res/packages-installed-p ()
  (loop for pkg in cha0res/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (cha0res/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg cha0res/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(global-hungry-delete-mode)

(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

;; config for swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)


;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode t)

(load-theme 'solarized-dark t)

(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
