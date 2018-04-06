;; Aggressive auto indentation, see
;; `http://emacsredux.com/blog/2016/02/07/auto-indent-your-code-with-aggressive-indent-mode/'
(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (electric-indent-mode -1)
            (aggressive-indent-mode)))
