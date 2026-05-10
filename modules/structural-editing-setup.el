(use-package expreg
  :bind (("C-=" . expreg-expand)
         ("C--" . expreg-contract)))

;; (use-package puni
;;   :init
;;   (puni-global-mode)
;;   :bind (:map puni-mode-map
;;               ("M-[" . puni-backward-sexp)
;;               ("M-]" . puni-forward-sexp)
;;               ("C-<right>" . puni-slurp-forward)
;;               ("C-<left>" . puni-barf-forward)
;;               ("C-M-<left>" . puni-slurp-backward)
;;               ("C-M-<right>" . puni-barf-backward)
;;               ("C-. (" . puni-wrap-round)
;;               ("C-. [" . puni-wrap-square)
;;               ("C-. {" . puni-wrap-curly)
;;               ("C-. s" . puni-splice)
;;               ("C-. c" . puni-squeeze)))

;; (use-package combobulate
;;   :load-path ("~/.emacs.d/combobulate"
;;               "~/.emacs.d/combobulate/tests/")
;;   :preface
;;   (setq combobulate-key-prefix "C-c o")
;;   :hook
;;   ((c-ts-mode . combobulate-mode))
;;   :config
;;  ;; (require 'combobulate-test-prelude)
;;   (require 'combobulate-debug)
;;   )

(provide 'structural-editing-setup)
