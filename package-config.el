
;; Load up evil mode for vim emulation
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; Init dashboard config
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Init helm config
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)


;; Projectile
(projectile-mode 1)
