;; Switch backward through usage of "["
(general-create-definer mode-switcher
  :prefix "SPC m")
(mode-switcher
  :states 'normal
  "e" 'eshell
  )
(mode-switcher
  :states 'normal
  "n"  'neotree-toggle
  )
