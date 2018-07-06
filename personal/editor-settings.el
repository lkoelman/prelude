;; Show line numbers
; (global-linum-mode) ;; always show line numbers
;; NOTE: linum mode get very slow on large documents

;; Minor modes common to all programming modes
(add-hook 'prog-mode-hook
          (progn
            (linum-mode)
            (flyspell-mode -1)))

;; Set fonts (can use menu `Options > set default font`)
;; (set-face-font 'default "Monospace-10")

;; Tab stops, see https://www.emacswiki.org/emacs/TabStopList
(setq tab-stop-list (number-sequence 4 120 4))
;; Following should be set by default in Prelude
(setq-default indent-tabs-mode nil) ; turn off TAB for indentation
(setq-default tab-width 4) ; a tab is equal to four spaces
(setq tab-width 4)
;; (setq indent-line-function 'insert-tab)

;; for auto indent of wrapped lines:
;; M-x visual-line-mode
;; M-x adaptive-wrap-prefix-mode
(add-hook 'visual-line-mode-hook
          (lambda ()
            (adaptive-wrap-prefix-mode +1)
            (diminish 'visual-line-mode)))

;; Visual line mode wraps text without altering the buffer
(global-visual-line-mode +1)

;; Enable transient mark mode
(transient-mark-mode 1) ;; (default setting) the marked region is active and highlighted

;; Enable successive C-<SPC> (after C-u) to cycle backward through mark ring
(setq set-mark-command-repeat-pop 1)
