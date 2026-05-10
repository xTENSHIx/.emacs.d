(use-package eglot
  :ensure nil
  :config
  (add-hook 'eglot-managed-mode-hook (lambda () (eglot-inlay-hints-mode -1))))

(use-package eldoc-box
  :after eglot
  :config
  (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode t))

(use-package dape)

(provide 'lsp-setup)
