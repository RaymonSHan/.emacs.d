
    (defun search-selection (beg end)
      "search for selected text"
      (interactive "r")
      (let (
            (selection (buffer-substring-no-properties beg end))
           )
        (deactivate-mark)
        (isearch-mode t nil nil nil)
        (isearch-yank-string selection)
      )
    )
    (define-key global-map (kbd "<C-f3>") 'search-selection)
;; good idea , from http://stackoverflow.com/questions/202803/searching-for-marked-selected-text-in-emacs

;;; Code: my keyborad binging
;; my defined chord, should long after key-chord.el
(key-chord-define evil-emacs-state-map "jk" 'evil-normal-state)            ;; OK

(key-chord-define evil-emacs-state-map "hh" "\C-a")                        ;; OK 'move-beginning-of-line
(key-chord-define evil-emacs-state-map "ii" "\C-p")                        ;; OK 'previous-line
(key-chord-define evil-emacs-state-map "jj" "\C-b")                        ;; OK 'backward-char
(key-chord-define evil-emacs-state-map "kk" "\C-n")                        ;; OK 'next-line
(key-chord-define evil-emacs-state-map "ll" "\C-f")                        ;; OK 'forward-char
(key-chord-define evil-emacs-state-map ";;" "\C-e")                        ;; OK 'move-end-of-line


(key-chord-define evil-emacs-state-map "ha" "\M-v")                        ;; OK 'scroll-down-command
(key-chord-define evil-emacs-state-map "ia" "\C-u3\C-p")                   ;; OK 'previous-line * 3
(key-chord-define evil-emacs-state-map "ja" "\C-u7\C-b")                   ;; OK 'backward-char * 7
(key-chord-define evil-emacs-state-map "ka" "\C-u3\C-n")                   ;; OK 'next-line * 7
(key-chord-define evil-emacs-state-map "la" "\C-u7\C-f")                   ;; OK 'forward-char * 3
(key-chord-define evil-emacs-state-map ";a" "\C-v")                        ;; OK 'scroll-up-command


(key-chord-define evil-emacs-state-map "hz" "\M-<")                        ;; OK 'beginning-of-buffer
(key-chord-define evil-emacs-state-map "iz" "\C-u8\C-p")                   ;; OK 'previous-line * 8
(key-chord-define evil-emacs-state-map "jz" "\C-u17\C-b")                  ;; OK 'backward-char * 17
(key-chord-define evil-emacs-state-map "kz" "\C-u8\C-n")                   ;; OK 'next-line * 17
(key-chord-define evil-emacs-state-map "lz" "\C-u17\C-f")                  ;; OK 'forward-char * 8
(key-chord-define evil-emacs-state-map ";z" "\M->")                        ;; OK 'end-of-buffer


(key-chord-define evil-emacs-state-map "hw" (kbd "M-a"))                   ;; OK backward-sentence        ;; may change
(key-chord-define evil-emacs-state-map "iw" (kbd "C-u 5 C-<left>"))
(key-chord-define evil-emacs-state-map "jw" (kbd "C-<left>"))              ;; OK
(key-chord-define evil-emacs-state-map "kw" (kbd "C-u 6 C-<right> C-<left>"))
(key-chord-define evil-emacs-state-map "lw" (kbd "C-u 2 C-<right> C-<left>"));; OK
(key-chord-define evil-emacs-state-map ";w" (kbd "M-e"))                   ;; OK forward-sentence         ;; may change


(key-chord-define evil-emacs-state-map "hd" (kbd "C-<SPC> C-a <delete>"))
(key-chord-define evil-emacs-state-map "id" (kbd "<right> C-<left> M-d"))
(key-chord-define evil-emacs-state-map "jd" (kbd "<DEL>"))
(key-chord-define evil-emacs-state-map "kd" (kbd "C-<left> C-<right> M-d"))
(key-chord-define evil-emacs-state-map "ld" (kbd "<delete>"))
(key-chord-define evil-emacs-state-map ";d" (kbd "C-k"))

(key-chord-define evil-emacs-state-map "dd" 'kill-whole-line)              ;; OK 'kill-whole-line
(key-chord-define evil-emacs-state-map "ff" "\C-v")                        ;; OK 'scroll-up-command
(key-chord-define evil-emacs-state-map "bb" "\M-v")                        ;; OK 'scroll-down-command

(key-chord-define evil-emacs-state-map "xx" (kbd "C-w"))

(key-chord-define evil-emacs-state-map "cc" (kbd "M-w"))
(key-chord-define evil-emacs-state-map "ci" (kbd "C-a C-<SPC> C-e M-w"))
(key-chord-define evil-emacs-state-map "ck" (kbd "C-a C-<SPC> C-e M-w"))

(key-chord-define evil-emacs-state-map "vv" (kbd "C-y"))
(key-chord-define evil-emacs-state-map "vi" (kbd "C-a C-<SPC> C-e M-w <RET> C-y C-p"))
(key-chord-define evil-emacs-state-map "vk" (kbd "C-a C-<SPC> C-e M-w <RET> C-y"))


(key-chord-define evil-emacs-state-map "is" (kbd "C-<left> C-<SPC> C-<right> M-w <left> C-r C-y"))
(key-chord-define evil-emacs-state-map "js" (kbd "C-r"))
(key-chord-define evil-emacs-state-map "ks" (kbd "C-<left> C-<SPC> C-<right> M-w C-s C-y"))
(key-chord-define evil-emacs-state-map "ls" (kbd "C-s"))

(key-chord-define evil-emacs-state-map "th" (kbd "C-f M-b M-t M-b M-b"))  ;; OK 'transpos-words and move cursor
(key-chord-define evil-emacs-state-map "ti" (kbd "C-x C-t C-p C-p"))      ;; OK 'transpos-lines and move cursor
(key-chord-define evil-emacs-state-map "tj" (kbd "C-t C-b C-b"))          ;; OK 'transpos-chars and move cursor
(key-chord-define evil-emacs-state-map "tk" (kbd "C-n C-x C-t C-p"))      ;; OK 'transpos-lines and move cursor
(key-chord-define evil-emacs-state-map "tl" (kbd "C-f C-t C-b"))          ;; OK 'transpos-chars and move cursor
(key-chord-define evil-emacs-state-map "t;" (kbd "C-f M-b C-f M-t M-b"))  ;; OK 'transpos-words and move cursor

(key-chord-define-global               "fj" 'er/expand-region)            ;; OK 'er/expand-region  
(key-chord-define-global               "uu" 'undo)                        ;; OK 'undo
;;(key-chord-define-global               "r " 'redo)                        ;; OK 'redo

;;(key-chord-define evil-emacs-state-map "l " 'evil-forward-char)
;;(key-chord-define evil-emacs-state-map "l " 'evil-forward-char)
;;(key-chord-define evil-emacs-state-map "l " 'evil-forward-char)

(key-chord-define-global               "gg" "\C-g\C-g\C-g")                ;; OK

(key-chord-define-global               "ss" 'save-buffer)                  ;; OK
(key-chord-define-global               "oo" 'other-window)                 ;; OK

;;(key-chord-define-global               "jk" (kbd "<ESC>"))                 ;; OK


(key-chord-define-global               "yy" 'youdao-translate-word)


(provide 'init-keybind)

;;; init-keybind.el ends here
