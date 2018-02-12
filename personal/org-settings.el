;; org-mode support for imenu
(add-hook 'org-mode-hook
          (lambda () (imenu-add-to-menubar "Imenu")))

;; fontify code in code blocks
(setq org-src-fontify-natively t)

;; automate creation if IDs
(require 'org-id)
(setq org-id-link-to-org-use-id 'create-if-interactive-and-no-custom-id)

;; Faces for priority markers (number is ASCI code)
(setq org-priority-faces
      '((65 . (:foreground "deep pink" :weight bold))
        (66 . (:foreground "deep pink" :weight bold))
        (67 . (:foreground "deep pink" :weight bold))))

;; TODO keyword colors, see http://raebear.net/comp/emacscolors.html
(setq org-todo-keyword-faces
      '(("TOREAD" . (:foreground "royal blue" :weight bold))
        ("READING" . (:foreground "orange" :weight bold))
        ("SUMMARIZED" . (:foreground "chartreuse1" :weight bold))
        ("TODO" . org-warning)
        ("STARTED" . "yellow")
        ("CANCELED" . (:foreground "blue" :weight bold))))

