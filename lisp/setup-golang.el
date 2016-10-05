(require 'go-mode)
(require 'auto-complete)

(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

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

(provide 'setup-golang)

