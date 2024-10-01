(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))

(mood-line-mode)
(ac-config-default)

;; copilot
(add-to-list 'load-path "~/.emacs.d/dash.el")
(add-to-list 'load-path "~/.emacs.d/s.el")
(add-to-list 'load-path "~/.emacs.d/editorconfig-emacs")
(add-to-list 'load-path "~/.emacs.d/f.el")
(add-to-list 'load-path "~/.emacs.d/copilot.el")

(require 'copilot)
(add-hook 'prog-mode-hook 'copilot-mode)

; complete by copilot first, then auto-complete
(defun my-tab ()
  (interactive)
  (or (copilot-accept-completion)
      (ac-expand nil)))

(with-eval-after-load 'auto-complete
  ; disable inline preview
  (setq ac-disable-inline t)
  ; show menu if have only one candidate
  (setq ac-candidate-menu-min 0))
(define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
(define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)

;; global variables
(setq make-backup-files nil)
(setq x-alt-keysym 'meta)
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)
