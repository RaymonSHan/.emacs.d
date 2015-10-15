(add-to-list 'load-path "~/.emacs.d/youdao")

(require 'pos-tip)
(require 'youdao)

(setf youdao-key-from "RaymonSHan-GIT") ;; 有道提供的key-from

(setf youdao-key "1665991319") ;; 有道提供的API key

(global-set-key (kbd "C-M-y") 'youdao-translate-word)
