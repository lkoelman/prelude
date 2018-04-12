;; Load custon themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Emacs keybindings
; (global-set-key "\C-x\C-k" 'kill-buffer-and-window)
(global-set-key "\C-x\C-k" 'kill-this-buffer)
(global-set-key (kbd "M-RET") 'newline-and-indent)
(global-set-key (kbd "M-S-RET") 'newline-and-indent)

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

;; Show line numbers
(global-linum-mode) ;; always show line numbers
;; (add-hook 'prog-mode-hook 'linum-mode) ;; show line numbers in programming modes only

;; Disable some prelude default modes
;; Disable beacon light that follows cursor
(beacon-mode -1)
(flyspell-mode -1)

;; Set fonts (can use menu `Options > set default font`)
;; (set-face-font 'default "Monospace-10")

;; Tab stops, see https://www.emacswiki.org/emacs/TabStopList
(setq tab-stop-list (number-sequence 4 120 4))
;; Following should be set by default in Prelude
;; (setq-default indent-tabs-mode 0) ; turn off TAB for indentation
;; (setq-default tab-width 4) ; a tab is equal to four spaces
;; (setq indent-line-function 'insert-tab)

;; Automatic desktop/session saving
(desktop-save-mode 1)
(setq desktop-restore-frames nil) ;; don't save frame and window configuration

;; for auto indent of wrapped lines:
;; M-x visual-line-mode
;; M-x adaptive-wrap-prefix-mode
(add-hook 'visual-line-mode-hook
          (lambda ()
            (adaptive-wrap-prefix-mode +1)
            (diminish 'visual-line-mode)))

;; Visual line mode wraps text without altering the buffer
(global-visual-line-mode +1)

;; Enable menu bar
(menu-bar-mode 1)
(tool-bar-mode 1)

;; Enable transient mark mode
(transient-mark-mode 1) ;; (default setting) the marked region is active and highlighted

;; Enable successive C-<SPC> (after C-u) to cycle backward through mark ring
(setq set-mark-command-repeat-pop 1)

;; Settings for package imenu-list
;; Put cursor on top of buffer rather than center
(setq imenu-list-after-jump-hook nil)
(add-hook 'imenu-list-after-jump-hook #'recenter-top-bottom)
;; Tree view on left side by default
(setq imenu-list-position 'left)
