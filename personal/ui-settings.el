;; Load custon themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Emacs keybindings
; (global-set-key "\C-x\C-k" 'kill-buffer-and-window)
(global-set-key "\C-x\C-k" 'kill-this-buffer)
(global-set-key (kbd "M-RET") 'newline-and-indent)
(global-set-key (kbd "M-S-RET") 'newline-and-indent)
; Move multiple lines (use forward-line or next-line)
(global-set-key (kbd "M-n")
                (lambda () (interactive) (forward-line  5)))
(global-set-key (kbd "M-p")
                (lambda () (interactive) (forward-line -5)))

;; Clean up modeline: hide minor modes
(require 'diminish)
(prelude-eval-after-init (progn
                           (diminish 'company-mode)
                           (diminish 'ivy-mode)
                           (diminish 'editorconfig-mode)
                           (diminish 'smartparens-mode)
                           (diminish 'which-key-mode)
                           (diminish 'guru-mode)
                           (diminish 'prelude-mode)))


;; Disable some prelude default modes
;; Disable beacon light that follows cursor
(beacon-mode -1)
(flyspell-mode -1)

;; Automatic desktop/session saving
(desktop-save-mode 1)
(setq desktop-restore-frames nil) ;; don't save frame and window configuration


;; Enable menu bar
(menu-bar-mode 1)
(tool-bar-mode 1)

;; Settings for package imenu-list
;; Put cursor on top of buffer rather than center
(setq imenu-list-after-jump-hook nil)
(add-hook 'imenu-list-after-jump-hook #'recenter-top-bottom)
;; Tree view on left side by default
(setq imenu-list-position 'left)
