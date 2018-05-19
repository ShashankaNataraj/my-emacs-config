(require 'evil-magit)
(general-create-definer git-keymap
  :prefix "SPC g")
(git-keymap
  :states 'normal
  "s" 'magit-status
  )
