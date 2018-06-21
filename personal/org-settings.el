;; org-mode support for imenu
(add-hook 'org-mode-hook
          (lambda ()
            (interactive)               ; for prefix arguments to work
            (linum-mode -1)             ; get very slow on large files
            (imenu-add-to-menubar "Imenu")
            (face-remap-add-relative 'bold 'font-lock-builtin-face)
            (face-remap-add-relative 'italic 'font-lock-keyword-face)
            ;; (flyspell-mode-off)
            (let ((current-prefix-arg '(-1)))
              (call-interactively 'flycheck-mode)
              (call-interactively 'electric-indent-mode)
              (call-interactively 'company-mode))
            ))
;; see https://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Remapping.html
;; for remapping fonts

;; four spaces indentation in lists
(setq-default org-list-indent-offset 2) ; 2 in addition to default 2

;; fontify code in code blocks
(setq org-src-fontify-natively t)

;; Disable Ivy for tags completion since it breaks it, see:
;; https://github.com/abo-abo/swiper/issues/1191#issuecomment-328114345
(add-to-list
 'ivy-completing-read-handlers-alist
 '(org-set-tags . completing-read-default))

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

