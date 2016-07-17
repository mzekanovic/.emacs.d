(use-package ibuffer :ensure t :pin melpa)
(require 'ibuf-ext)
(add-to-list 'ibuffer-never-show-predicates "^\\*")

(provide 'setup-ibuffer)
