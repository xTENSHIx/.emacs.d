(use-package avy
  :bind (("M-s" . avy-goto-char-timer))
  :config
  (setq avy-dispatch-alist
        '((?k . avy-action-kill-stay)
          (?K . avy-action-kill-move)
          (?w . avy-action-copy)
          (?t . avy-action-teleport)
          (?y . avy-action-yank)
          (?z . avy-action-zap-to-char)))
  (setq avy-timeout-seconds 0.3))

(use-package multiple-cursors
  :ensure t
  :config
  (require 'multiple-cursors))

(provide 'regular-editing-setup)
