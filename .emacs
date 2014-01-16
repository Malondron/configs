(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(require 'color-theme)
(add-to-list 'load-path "~/.emacs.d/php-mode-1.5.0/")
(require 'php-mode)


(add-to-list 'load-path "~/.emacs.d/evil/")
(require 'evil)
(evil-mode 1)
(add-to-list 'load-path "~/.emacs.d/elpa/clojure-mode-1.11.5/")
(require 'clojure-mode)

(add-to-list 'load-path "~/.emacs.d/elpa/nrepl-0.1.5/")
(require 'nrepl)

(add-to-list 'load-path "~/.emacs.d/")
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(set-default 'cursor-type 'bar)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;(set-default-font "-outline-Consolas-normal-normal-normal-mono-13-*-*-*-c-*-iso8859-1")
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-dark-kiss)))

;(setq inferior-lisp-program "~/users/andreas/clisp/clisp")
;(add-to-list 'load-path "~/users/andreas/slime/")
;(require 'slime)
;(slime-setup)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(add-to-list 'auto-mode-alist '("\\.f\\'" . f90-mode))
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

;(setq default-directory "C:/Users/andreas/")

;; auto complete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ac-delay 0.5) ;; eclipse uses 500ms
 
;; configure auto complete to work in slime
(add-to-list 'load-path "~/.emacs.d/ac-slime")
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
