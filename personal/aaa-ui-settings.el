;; ======================================================================
;; Themes
;; ======================================================================

;; Load custon themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Install custom themes for repository
(prelude-require-package 'gruvbox-theme)
;; Activate in preload folder using (setq prelude-theme '<monokai/gruvbox-dark-medium>)


;; ======================================================================
;; Global modes
;; ======================================================================

;; Disable some prelude default modes
;; Disable beacon light that follows cursor
(beacon-mode -1)
(flyspell-mode -1)

;; Marked region is active and highlighted (default setting)
(transient-mark-mode 1)

;; ======================================================================
;; Menus and toolbars
;; ======================================================================

;; Enable menu bar
(menu-bar-mode -1)
;; (tool-bar-mode -1)

;; Add imenu to menubar in several modes
(if (display-graphic-p)
  (add-hook 'markdown-mode-hook
            (lambda ()
              (imenu-add-to-menubar "Imenu")))


  (add-hook 'prog-mode-hook
            (lambda ()
              (imenu-add-to-menubar "Imenu")
              (linum-mode)
              (flyspell-mode -1))))

;; Tabbar
(if (display-graphic-p)
    (progn
      (prelude-require-package 'tabbar)
      (require 'tabbar)
      ;; Tabbar settings
      ;; see https://gist.github.com/3demax/1264635/91ccb6c423effd811dbdb1412b70c15e95fa700d
      (tabbar-mode 1)))

;; ======================================================================
;; Wrapping and Indenting
;; ======================================================================

;; Aggressive indent works better than electric indent mode with LISP
(prelude-require-package 'aggressive-indent)

;; Choose which indent mode to enable
;; (add-hook 'prog-mode-hook
;;           (lambda ()
;;             (electric-indent-mode -1)
;;             (aggressive-indent-mode)))

;; Adaptive-wrap (for indenting wrapped lines)
;; (prelude-require-package 'adaptive-wrap)
;; (require 'adaptive-wrap)

;; Visual line mode wraps text without altering the buffer
(global-visual-line-mode +1)
(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

;; Auto indent wrapped lines in visual line mode
(add-hook 'visual-line-mode-hook
          (lambda ()
            ;; (adaptive-wrap-prefix-mode +1)
            (diminish 'visual-line-mode)))

;; Tab stops, see https://www.emacswiki.org/emacs/TabStopList
(setq tab-stop-list (number-sequence 4 120 4))
(setq-default fill-column 90)

;; Following should be set by default in Prelude
(setq-default indent-tabs-mode nil) ; turn off TAB for indentation
(setq-default tab-width 4) ; a tab is equal to four spaces
;; (setq indent-line-function 'insert-tab)

;; ======================================================================
;; UI Improvements
;; ======================================================================

;; Enable successive C-<SPC> (after C-u) to cycle backward through mark ring
(setq set-mark-command-repeat-pop 1)


;; ======================================================================
;; Modeline
;; ======================================================================

; ;; Fancy modeline from spacemacs distribution
(prelude-require-package 'spaceline)
(require 'spaceline-config)
(spaceline-emacs-theme)
(spaceline-toggle-which-function-off) ; turn off segment

;; Fancy modeline from powerline
;; (prelude-require-package 'powerline)
;; (powerline-default-theme)


;; Automatic desktop/session saving
(desktop-save-mode 1)
(setq desktop-restore-frames nil) ;; don't save frame and window configuration

;; Settings for package imenu-list
;; Put cursor on top of buffer rather than center
(setq imenu-list-after-jump-hook nil)
(add-hook 'imenu-list-after-jump-hook #'recenter-top-bottom)

;; Tree view on left side by default
(setq imenu-list-position 'left)

;; Smex enhances M-x to list most recent/frequently used commands first
(prelude-require-package 'smex)




;; multiple cursors : https://github.com/magnars/multiple-cursors.el
;; (prelude-require-package 'multiple-cursors)
;; (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; Personal packages
;; (require 'latte-mode)
