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

;;;;---------------------------------------------------------------------;;;;

(use-package cl :ensure t :pin melpa)
(use-package move-text :ensure t :pin melpa)
(use-package duplicate-thing :ensure t :pin melpa)
(use-package multiple-cursors :ensure t :pin melpa)
(use-package neotree :ensure t)
(use-package windmove :ensure t :pin melpa)
(use-package smex :ensure t :pin melpa)
(use-package ibuffer :ensure t :pin melpa)
(use-package ido  :ensure t :pin melpa)
(use-package flx :ensure t :pin melpa)
(use-package flx-ido :ensure t :defer t :pin melpa)
(use-package nasm-mode :ensure t :defer t :pin melpa)
(use-package erlang :ensure t :defer t :pin melpa)
(use-package popup :ensure t :defer t :pin melpa)
(use-package company :ensure t :defer t :pin melpa)
(use-package flycheck :ensure t :defer t :pin melpa)
(use-package flycheck-tip :ensure t :defer t :pin melpa)

;; Additional packages
(require 'setup-ido)
(require 'setup-ibuffer)
(require 'setup-trump)
(require 'setup-nasm)


;; Custom functions and keybindings
(require 'my-functions)
(require 'my-keybindings)


