;; Line movement (require 'move-text)
(global-set-key (kbd "<C-S-down>") 'move-text-down)
(global-set-key (kbd "<C-S-up>") 'move-text-up)

;; Duplicate lines or regions (require 'duplicate-thing)
(global-set-key (kbd "C-c d") 'duplicate-thing)

;; Multiple cursors (require 'multiple-cursor)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; Directory tree sidebar (require 'neotree)
(global-set-key (kbd "<M-RET>") 'neotree-toggle)

;; Switch window buffers (require 'windmove)
(global-set-key (kbd "C-c <left>")
		(ignore-error-wrapper 'windmove-left))
(global-set-key (kbd "C-c <right>")
		(ignore-error-wrapper 'windmove-right))
(global-set-key (kbd "C-c <up>")
		(ignore-error-wrapper 'windmove-up))
(global-set-key (kbd "C-c <down>")
		(ignore-error-wrapper 'windmove-down))

;; Extendend M-x (require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<M-S-x>") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;;;Old M-x

;; Ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;Tabbar
(global-set-key [C-iso-lefttab] 'tabbar-backward-tab)
(global-set-key [C-tab] 'tabbar-forward-tab)

(provide 'my-keybindings)
