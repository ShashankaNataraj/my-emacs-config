(general-create-definer mode-switcher
  :prefix "SPC s w")
(mode-switcher
  :states 'normal
  "r" 'split-window-right
  )

(mode-switcher
  :states 'normal
  "v" 'split-window-vertically
  )
