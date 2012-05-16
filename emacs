;; load-path
(let ((default-directory "~/.emacs.d/site-lisp"))
  (normal-top-level-add-subdirs-to-load-path))

;; general
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq backup-directory-alist `(("." .  "~/.emacsbackup")))
(prefer-coding-system 'utf-8)
(fset 'yes-or-no-p 'y-or-n-p)
(setq default-directory "~/")

;; appearence
;(require 'color-theme)
;(require 'color-theme-solarized)
(color-theme-solarized-dark)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(setq inhibit-startup-message t
  inhibit-startup-echo-area-message t)
(show-paren-mode t)
(blink-cursor-mode 0)

;; savespace
(setq save-place-file "~/.emacsbackup/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete//ac-dict")
(ac-config-default)

;; ido-mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; tramp-mode
(setq tramp-default-method "ssh")

;; zencoding
(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)