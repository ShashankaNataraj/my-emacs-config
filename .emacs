
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (brin)))
 '(custom-safe-themes
   (quote
    ("9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "756ec68798410a2e705dd719c7328af9ecbb782c94130d489b6b3109841833eb" default)))
 '(package-selected-packages
   (quote
    (rjsx-mode sublime-themes general helm projectile dashboard dash python js2-mode helm-ebdb))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Add melpa archives
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)


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


;; Disable the menu bar permanently and other distracting things within the editor
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Disable line wrapping / truncate lines always
(setq-default truncate-lines t)

;; Line height to make code look better
(setq-default line-spacing 7)

;; Register all js files with rjsx mode
(add-to-list 'auto-mode-alist '(".*\.js\'" . rjsx-mode))
(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)
  )
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; The actual keybindings

(require 'general)
(defvar my-leader-map (make-sparse-keymap)
  "Keymap for \"leader key\" shortcuts.")

;; change the "leader" key to space
(define-key evil-normal-state-map "," 'evil-repeat-find-char-reverse)
(define-key evil-normal-state-map (kbd "SPC") my-leader-map)

;; general.el can automate the process of prefix map/command creation
(general-def :states '(normal motion emacs) "SPC" nil)

(general-create-definer my-leader-def
  :prefix "SPC")

;; Buffer ops
(general-create-definer local-switch-backward-leader
  :prefix "[")
(local-switch-backward-leader 'normal
  "b" 'previous-buffer)

(general-create-definer local-switch-forward-leader
  :prefix "]")
(local-switch-forward-leader 'normal
  "b" 'next-buffer)
