;; Start the emacs server/daemon so clients can connect to it
(load "server")
(unless (server-running-p) (server-start))

