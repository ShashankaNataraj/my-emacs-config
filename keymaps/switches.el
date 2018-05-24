;; Switch backward through usage of "["
(general-create-definer local-switch-backward-leader
  :prefix "[")
;; Buffer handler for previous switches
(local-switch-backward-leader 'normal
  "b" 'previous-buffer)
(local-switch-backward-leader 'normal
  "w" 'evil-window-prev)

;; Switch forward through usage of "]"
(general-create-definer local-switch-forward-leader
  :prefix "]")
;; Buffer handler for next switches
(local-switch-forward-leader 'normal
  "b" 'next-buffer)
(local-switch-forward-leader 'normal
  "w" 'evil-window-next)
