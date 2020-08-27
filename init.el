;;;;---------------------------------------------------------------------;;;;
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode 0))
(if (fboundp 'tool-bar-mode) (tool-bar-mode 0))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode 0))

;;;;---------------------------------------------------------------------;;;;

;; package.el
(require 'package)
(setq package-user-dir (concat user-emacs-directory
        (convert-standard-filename "elpa/")))
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; load use-package and check if it's installed, if not downloads it
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; My repositories
(let ((default-directory (concat user-emacs-directory
        (convert-standard-filename "lisp/"))))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

;;;;---------------------------------------------------------------------;;;;

(use-package lush-theme :ensure t :pin melpa)

;;;;---------------------------------------------------------------------;;;;

;; Write backup and autosave files to temp directory
;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir
  (format "%s%s%s/" temporary-file-directory "emacs" (user-uid)))
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix emacs-tmp-dir)
;;;;---------------------------------------------------------------------;;;;

;; Remove scratch message
(setq initial-scratch-message "")
;; No splash screen please ... jeez
(setq inhibit-startup-message t)
;; Show line-number in the mode line
(line-number-mode t)
;; Show column-number in the mode line
(column-number-mode t)
;; Show line numbers in buffer
(global-linum-mode 1)
;; Allows one to see matching pairs of parentheses
(show-paren-mode 1)
;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
;; No cursor blinking, it's distracting
(blink-cursor-mode 0)
;; full path in title bar
(setq-default frame-title-format "%b (%f)")
;; new buffer is in text-mode
(setq initial-major-mode (quote text-mode))
;;;;---------------------------------------------------------------------;;;;

(use-package move-text :ensure t :pin melpa)
(use-package duplicate-thing :ensure t :pin melpa)
(use-package multiple-cursors :ensure t :pin melpa)
(use-package neotree :ensure t)
(use-package smex :ensure t :pin melpa)
(use-package ivy :ensure t :pin melpa)
(use-package counsel :ensure t :pin melpa)
(use-package swiper :ensure t :pin melpa)
(use-package all-the-icons :ensure t :pin melpa)
(use-package projectile :ensure t :pin melpa)
(use-package counsel-projectile :ensure t :pin melpa)
(use-package dashboard :ensure t :pin melpa)
(use-package paredit :ensure t :pin melpa)
(use-package clojure-mode :ensure t :pin melpa)
(use-package clojure-mode-extra-font-locking :ensure t :pin melpa)
(use-package cider :ensure t :pin melpa)
(use-package rainbow-delimiters :ensure t :pin melpa)
(use-package company :ensure t :pin melpa)

;; Additional packages
(require 'setup-ivy)
(require 'setup-swiper)  ;; set up counsel also
(require 'setup-projectile)
(require 'setup-dashboard)
(require 'setup-clojure)

;; Custom functions and keybindings
(require 'my-functions)
(require 'my-keybindings)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-fuzzy dashboard use-package tabbar smex neotree multiple-cursors move-text lush-theme flycheck-tip flx-ido exec-path-from-shell edts duplicate-thing counsel company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
