;; Install packages that do not ship with Prelude Emacs dsitribution

;; monokai theme
(prelude-require-package 'monokai-theme)
(prelude-require-package 'gruvbox-theme)
; (setq prelude-theme '<monokai/gruvbox-dark-medium>) ; put this line in personal/preload/ui-preload.el

;; package Adaptive-wrap (for reflowing wrapped lines)
(prelude-require-package 'adaptive-wrap)
(require 'adaptive-wrap)

;; modeline from spacemacs distribution
(prelude-require-package 'spaceline)
(require 'spaceline-config)
(spaceline-emacs-theme)
(spaceline-toggle-which-function-off) ; turn off segment

;; Fancy modeline
;; (prelude-require-package 'powerline)
;; (powerline-default-theme)

;; multiple cursors : https://github.com/magnars/multiple-cursors.el
(prelude-require-package 'multiple-cursors)
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

