;; Personal minor mode so keybindings don't clash with other modes

(defvar lkmn-mode-map (make-sparse-keymap)
  "Keymap for `lkmn-mode'.")

;; (global-set-key "\C-x\C-k" 'kill-buffer-and-window)
(define-key lkmn-mode-map (kbd "C-x C-k") 'kill-this-buffer)
(define-key lkmn-mode-map (kbd "M-RET") 'newline-and-indent)
(define-key lkmn-mode-map (kbd "M-S-RET") 'newline-and-indent)
(define-key lkmn-mode-map (kbd "M-j") 'ivy-imenu-anywhere)

;; Move multiple lines (use forward-line or next-line)
(define-key lkmn-mode-map (kbd "M-n")
  (lambda () (interactive) (forward-line  5)))

(define-key lkmn-mode-map (kbd "M-p")
  (lambda () (interactive) (forward-line -5)))



;;;###autoload
(define-minor-mode lkmn-mode
  "A minor mode so that my key settings override annoying major modes."
  ;; If init-value is not set to t, this mode does not get enabled in
  ;; `fundamental-mode' buffers even after doing \"(global-lkmn-mode 1)\".
  ;; More info: http://emacs.stackexchange.com/q/16693/115
  :init-value t
  :lighter " lkmn-mode"
  :keymap lkmn-mode-map)

;;;###autoload
(define-globalized-minor-mode global-lkmn-mode lkmn-mode lkmn-mode)

;; https://github.com/jwiegley/use-package/blob/master/bind-key.el
;; The keymaps in `emulation-mode-map-alists' take precedence over
;; `minor-mode-map-alist'
(add-to-list 'emulation-mode-map-alists `((lkmn-mode . ,lkmn-mode-map)))

;; Turn off the minor mode in the minibuffer
(defun turn-off-lkmn-mode ()
  "Turn off lkmn-mode."
  (lkmn-mode -1))
(add-hook 'minibuffer-setup-hook #'turn-off-lkmn-mode)

(provide 'lkmn-mode)

;; Minor mode tutorial: http://nullprogram.com/blog/2013/02/06/
