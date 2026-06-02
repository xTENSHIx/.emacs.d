;; 1. Core Vertico
(use-package vertico
  :ensure t
  :init
  (vertico-mode 1))

;; 2. The Telescope Popup (Posframe)
(use-package vertico-posframe
  :ensure t
  :after vertico
  :config
  ;; Turn it on globally! (Perfectly safe since we dropped multiform)
  (vertico-posframe-mode 1)
  
  ;; Force it to the top-center of the screen
  (setq vertico-posframe-poshandler #'posframe-poshandler-frame-center)
  
  ;; Optional: Add some padding so it looks nice
  (setq vertico-posframe-parameters
        '((left-fringe . 8)
          (right-fringe . 8))))

(provide 'vertico-conf)
;; (use-package vertico
;;   :ensure (vertico :files (:defaults "extensions/*"))
;;   :init
;;   (vertico-mode 1))

;; (use-package vertico-multiform
;;   :ensure nil)

;; (use-package vertico-posframe
;;   :ensure t
;;   :after vertico
;;   :config
;;   (vertico-posframe-mode 1)
;;   ;; (setq vertico-posframe-poshandler #'posframe-poshandler-frame-top-center)
;;   )  



;; (provide 'vertico-conf)
