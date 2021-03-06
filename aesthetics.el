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

;; Smart paranthesis
(require 'smartparens-config)
(add-hook 'js-mode-hook #'smartparens-mode)

;; Show matching paranthesis in the editor
(setq show-paren-delay 0)
(show-paren-mode 1)

;; enable editor config
(require 'editorconfig)
(editorconfig-mode 1)

(fringe-mode '(0 . 0))

(set-face-attribute 'default nil
                    :family "IBM Plex Mono"
                    :height 130
                    :weight 'normal
                    :width 'normal)
