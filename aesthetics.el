;; Enable company mode on all buffers on startup
(add-hook 'after-init-hook 'global-company-mode)

;; Disable the menu bar permanently and other distracting things within the editor
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Disable line wrapping / truncate lines always
(setq-default truncate-lines t)

;; Line height to make code look better
(setq-default line-spacing 3)

;; Register all js files with rjsx mode
(add-to-list 'auto-mode-alist '(".*\.js\'" . rjsx-mode))
(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)
(evil-set-initial-state 'term-mode 'normal)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(require 'all-the-icons)

;; Set the dashboard startup banner
(setq dashboard-startup-banner "~/Downloads/itachi.png")

;; Helm projectile configs
(setq helm-projectile-fuzzy-match t)
(require 'helm-projectile)
(helm-projectile-on)

;; Always start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Beacon mode enable
(beacon-mode 1)

;; Dimmer mode enable
(dimmer-mode)
(setq dimmer-fraction 0.5)

;; show relative line numbers
(require 'linum-relative)
(linum-relative-mode t)
(linum-on)
(linum-relative-on)
(global-linum-mode 1)

;; Smart paranthesis
(require 'smartparens-config)
(add-hook 'js-mode-hook #'smartparens-mode)
