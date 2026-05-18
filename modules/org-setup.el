(use-package org
  :ensure nil
  :bind (("C-c c" . org-capture))
  :config
  (add-to-list 'org-modules 'org-habit t)
  (setq org-directory "~/org/"))

(use-package org-noter)

(use-package org-roam
  :bind (("C-c n f" . org-roam-node-find)
         ("C-c n n" . org-roam-capture)
         ("C-c n i" . org-roam-node-insert))
  :config
  (setq org-roam-directory "~/org-roam/"))

(provide 'org-setup)
