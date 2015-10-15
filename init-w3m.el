
(add-to-list 'load-path "~/.emacs.d/emacs-w3m")

(require 'w3m)
(setq w3m-coding-system 'utf-8
      w3m-file-coding-system 'utf-8
      w3m-file-name-coding-system 'utf-8
      w3m-input-coding-system 'utf-8
      w3m-output-coding-system 'utf-8
      w3m-terminal-coding-system 'utf-8)

(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)

;; ... in a new tab ...
(setq browse-url-browser-function 'w3m-browse-url
      browse-url-new-window-flag t)

;; display image default
;;(setq w3m-default-display-inline-images t)

(setq w3m-use-cookies t)
