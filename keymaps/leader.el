
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
