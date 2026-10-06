;; Convert assignments from ipynb to org
(defun my-ipynb-to-org (file-path)
  (let* ((expanded-file (expand-file-path file-path))
         (output-file (file-name-with-extension expanded-file "org"))
         (exit-code (call-process "pandoc" nil "*pandoc-errors*" nil
                                  expanded-file
                                  "-o"
                                  output-file)))
    (unless (zerop exit-code)
      (error "Pandoc failed!"))
    (with-temp-file output-file
      (insert-file-contents output-file)
      (goto-char (point-min))

      (while (re-search-forward "#\\+begin_src jupyter-python" nil t)
        (replace-match "#+begin_src jupyter-python :session py :async yes")))
    output-file))

(use-package jupyter
  :after org
  :config
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (jupyter . t)))

(provide 'jupyter-setup)
