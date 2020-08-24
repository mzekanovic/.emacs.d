(require 'dashboard)

(dashboard-setup-startup-hook)

;; emacs deamon start with *dashboard* buffer
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

;; Set the title
(setq dashboard-banner-logo-title "Welcome to Zeko's Dashboard")

;; Set the banner
(setq dashboard-startup-banner (expand-file-name "~/.emacs.d/resourcs/img/dashboard_sam.png"))
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" which displays whatever image you would prefer

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts t)

;; What is on the dashboard
(setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)))

;; Set heading icons
(setq dashboard-set-heading-icons t)

;; Set dashboard file icons
(setq dashboard-set-file-icons t)

;; Set navigation inside dashboard
(setq dashboard-set-navigator t)


(provide 'setup-dashboard)
