(general-create-definer mode-switcher
  :prefix "SPC p f")
(mode-switcher
  :states 'normal
  "f" 'helm-projectile-find-file
  )

(mode-switcher
  :states 'normal
  "r" 'helm-projectile-recentf
  )

(mode-switcher
  :states 'normal
  "p" 'helm-projectile-switch-project
  )


(mode-switcher
  :states 'normal
  "s" 'helm-ag-project-root
  )
