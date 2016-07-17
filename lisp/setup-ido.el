(use-package ido  :ensure t :pin melpa)
(ido-mode t)
(ido-everywhere t)
(flx-ido-mode t)

(setq ido-case-fold t)
(setq ido-file-extensions-order '(".py" ".el" ".shm" ".c" ".emacs" ".php" ".html"
				  ".js" ".css" ".ini" ".cfg" ".conf"))
(add-to-list 'ido-ignore-buffers "^\*")


(provide 'setup-ido)
