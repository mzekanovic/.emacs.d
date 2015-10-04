;; Line movement (require 'move-text)
(global-set-key (kbd "<C-S-down>") 'move-text-down)
(global-set-key (kbd "<C-S-up>") 'move-text-up)

;; Duplicate lines or regions (require 'duplicate-thing)
(global-set-key (kbd "C-c d") 'duplicate-thing)

;; Multiple cursors (require 'multiple-cursor)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Directory tree sidebar (require 'neotree)
(global-set-key (kbd "<C-M-return>") 'neotree-toggle)

;; Switch window buffers (require 'windmove)
(global-set-key (kbd "C-c <C-left>")
		(ignore-error-wrapper 'windmove-left))
(global-set-key (kbd "C-c <C-right>")
		(ignore-error-wrapper 'windmove-right))
(global-set-key (kbd "C-c <C-up>")
		(ignore-error-wrapper 'windmove-up))
(global-set-key (kbd "C-c <C-down>")
		(ignore-error-wrapper 'windmove-down))

;; Extendend M-x (require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;;;Old M-x

;; Ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;Iterate over file buffers
(global-set-key (kbd "<C-tab>") 'my-next-buffer)
(global-set-key (kbd "<C-iso-lefttab>") 'my-previous-buffer)

(provide 'my-keybindings)
