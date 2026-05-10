(use-package dictionary
  :ensure nil
  :custom
  (dictionary-server "dict.org")
  (dictionary-default-dictionary "gcide")
  :bind
  ("C-c d" . dictionary-search))

(use-package pdf-tools
  :ensure nil
  :mode ("\\.pdf\\'" . pdf-view-mode)
  :hook (pdf-view-mode . (lambda () (display-line-numbers-mode -1)))
  :config
  (pdf-tools-install))

(provide 'pdf-reading-setup)
