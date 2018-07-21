;; Load custon themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Emacs keybindings
;; see lkmn-mode.el for keybindings

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
