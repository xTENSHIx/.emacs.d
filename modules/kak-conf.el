(use-package ryo-modal
  :commands ryo-modal-mode
  :bind ("C-c ESC" . ryo-modal-mode)
  :config
  (ryo-modal-keys
   ("i" ryo-modal-mode)
   ("h" "C-b")
   ("l" "C-f")
   ("k" "C-p")
   ("j" "C-n")))


(provide 'kak-conf)
