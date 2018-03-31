;; org-mode support for imenu
(add-hook 'markdown-mode-hook
          (lambda ()
            (imenu-add-to-menubar "Imenu")))
