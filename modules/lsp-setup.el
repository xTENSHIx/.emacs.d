(use-package zig-mode)

(use-package markdown-mode)

(defun my-eglot-disable-eldoc-noise ()
  (setq-local eldoc-documentation-functions
              (remove #'eglot-code-action-suggestion
                      eldoc-documentation-functions))
  (setq-local eldoc-documentation-functions
              (remove #'eglot-highlight-eldoc-function
                      eldoc-documentation-functions))
  (setq-local eldoc-documentation-functions
              (remove #'eglot-display-in-echo-area
                      eldoc-documentation-functions)))

(use-package eglot
  :ensure nil
  :bind (("C-c l a" . eglot-code-action))
  :config
  (add-hook 'eglot-managed-mode-hook #'my-eglot-disable-eldoc-noise)
  (add-hook 'eglot-managed-mode-hook (lambda () (eglot-inlay-hints-mode -1))))


(use-package eldoc-box
  :after eglot
  :bind (("C-c h" . eldoc-box-help-at-point))
  :config
  ;; (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode t)
  )

(use-package dape)

(provide 'lsp-setup)
