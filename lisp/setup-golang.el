(require 'go-mode)
(require 'auto-complete-config)

(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))
(setenv "GOPATH" "/home/zeko/src/go")
(add-to-list 'exec-path "/home/zeko/src/go/bin")

(add-hook 'before-save-hook 'gofmt-before-save)

(defun my-go-mode-hook ()
  ; Call Gofmt before saving             
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding                               
  (local-set-key (kbd "M-.") 'godef-jump))
(add-hook 'go-mode-hook 'my-go-mode-hook)

(defun auto-complete-for-go ()
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)

(with-eval-after-load 'go-mode
  (ac-config-default)
  (require 'auto-complete-config)
  (require 'go-autocomplete))

(provide 'setup-golang)

