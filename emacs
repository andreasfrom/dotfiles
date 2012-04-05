;; load-path
(let ((default-directory "~/.emacs.d/site-lisp"))
  (normal-top-level-add-subdirs-to-load-path))

;; general
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq backup-directory-alist `(("." .  "~/.emacsbackup")))
(prefer-coding-system 'utf-8)
(fset 'yes-or-no-p 'y-or-n-p)
(setq default-directory "~")

;; appearence
(require 'color-theme)
(require 'color-theme-solarized)
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

;; auctex
(require 'tex-site)
(setq Tex-auto-save t)
(setq Tex-parse-self t)
(setq TeX-PDF-mode t)

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

;; latex-source
(require 'ac-math)

(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of {{{latex-mode}}}

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources))
)
(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)
