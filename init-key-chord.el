(add-to-list 'load-path "~/.emacs.d/key-chord")

(require 'key-chord)
(key-chord-mode 1)

(setq key-chord-two-keys-delay 0.05)
(setq key-chord-one-keys-delay 0.1)

;;;; The following is for only enable key-chord after some idle time, but fail
;; Helper functions to be used in timers and hooks
(defun my-enable-chords () (setq input-method-function 'key-chord-input-method))
(defun my-disable-chords () (setq input-method-function nil))
;; Start test
(add-hook 'post-command-hook 'my-disable-chords)
(setq my-timer (run-with-idle-timer 0.5 'repeat 'my-enable-chords))
;; Finish test
(remove-hook 'post-command-hook 'my-disable-chords)
(cancel-timer my-timer)



