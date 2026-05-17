(use-package org-mode
  :ensure nil
  :config
  (add-to-list 'org-modules 'org-habit t))

(use-package org-noter)

(use-package org-roam
  :after org-mode)

(provide 'org-setup)
