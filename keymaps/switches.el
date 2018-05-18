(require 'general)
(defvar my-leader-map (make-sparse-keymap)
  "Keymap for \"leader key\" shortcuts.")

;; change the "leader" key to space
(define-key evil-normal-state-map "," 'evil-repeat-find-char-reverse)
(define-key evil-normal-state-map (kbd "SPC") my-leader-map)

;; Define map leader
(general-def :states '(normal motion emacs) "SPC" nil)
(general-create-definer my-leader-def
  :prefix "SPC")

;; Switch backward through usage of "["
(general-create-definer local-switch-backward-leader
  :prefix "[")
;; Buffer handler for previous switches
(local-switch-backward-leader 'normal
  "b" 'previous-buffer)

;; Switch forward through usage of "]"
(general-create-definer local-switch-forward-leader
  :prefix "]")
;; Buffer handler for next switches
(local-switch-forward-leader 'normal
  "b" 'next-buffer)
