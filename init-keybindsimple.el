
;;    (defun search-selection (beg end)
;;      "search for selected text"
;;      (interactive "r")
;;     (let (
;;            (selection (buffer-substring-no-properties beg end))
;;           )
;;        (deactivate-mark)
;;        (isearch-mode t nil nil nil)
;;        (isearch-yank-string selection)
;;      )
;;    )
;;    (define-key global-map (kbd "<C-f3>") 'search-selection)
;; good idea , from http://stackoverflow.com/questions/202803/searching-for-marked-selected-text-in-emacs

;;; Code: my keyborad binging
;; my defined chord, should long after key-chord.el
(key-chord-define evil-emacs-state-map "jk" 'evil-normal-state)            ;; OK

;;(key-chord-define evil-emacs-state-map "kk" 'previous-line)
;;(key-chord-define evil-emacs-state-map "hh" 'backward-char)                ;; remove hh because of ll
;;(key-chord-define evil-emacs-state-map "jj" 'next-line)
;;(key-chord-define evil-emacs-state-map "ll" 'forward-char)                 ;; error input for 'all'

;;(key-chord-define-global               "rr" 'kill-whole-line)              ;; may remove for error input 'add'
;;(key-chord-define-global               "ff" 'scroll-up-command)
;;(key-chord-define-global               "bb" 'scroll-down-command)

(key-chord-define-global               "xx" 'kill-region)
(key-chord-define-global               "cc" 'kill-ring-save)
(key-chord-define-global               "vv" 'yank)
(key-chord-define evil-emacs-state-map "vj" (kbd "C-a C-<SPC> C-e M-w <RET> C-y"));; copy same line

(key-chord-define evil-emacs-state-map "qk" (kbd "C-x C-t C-p C-p"))      ;; OK 'transpos-lines and move cursor
(key-chord-define evil-emacs-state-map "qj" (kbd "C-n C-x C-t C-p"))      ;; OK 'transpos-lines and move cursor

(key-chord-define-global               "fj" 'er/expand-region)            ;; OK 'er/expand-region  
(key-chord-define-global               "uu" 'undo)                        ;; OK 'undo

(key-chord-define-global               "gg" "\C-g\C-g\C-g")                ;; OK

(key-chord-define-global               "ww" 'save-buffer)                  ;; OK
(key-chord-define-global               "yy" 'youdao-translate-word)


(provide 'init-keybind)

;;; init-keybind.el ends here
