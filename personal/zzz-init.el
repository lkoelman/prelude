;; Start the emacs server/daemon so clients can connect to it
;; NOTE: this breaks command `emacsclient -t -a ""'
;; (if (display-graphic-p)
;;     (progn
;;       (load "server")
;;       (unless (server-running-p) (server-start))))

