;;; 

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(global-set-key (kbd "<C-tab>") 'switch-to-next-buffer)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-w") 'save-buffer)
(global-set-key (kbd "C-i") 'kill-region)
(global-set-key (kbd "C-j") 'kill-ring-save)

(setq org-log-done 'time)
(setq column-number-mode t)
(setq line-number-mode t)
(setq display-time-24hr-format t)
(setq display-time-format "%02m/%02d %a %02H:%02M")
(display-time-mode t)
(global-linum-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'dash)

(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'ido)
(ido-mode t)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-classic)))
(let ((spec '((t (:family "DejaVu Sans Mono" :height 78)))))
   (mapc (lambda (face)
   (face-spec-set face spec)
   (put face 'face-defface-spec spec))
   '(default menu)))

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20150618.1949/dict")
(ac-config-default)
(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)
(setq ac-trigger-commands
   (cons 'backward-delete-char-untabify ac-trigger-commands))
;; the following do nothing ?
(defun auto-complete-settings ()
   (apply-define-key
      ac-complete-mode-map
   `   (("<return>"   nil)
        ("RET"        nil)
        ("<C-return>" ac-complete)
        ("C-n"        ac-next)
        ("C-p"        ac-previous))))

(require 'window-numbering)
(window-numbering-mode 1)
(winner-mode 1)
(global-set-key (kbd "M-u") 'winner-undo)
(global-set-key (kbd "M-r") 'winner-redo)

;; (require 'flycheck)
;; (require 'flycheck-color-mode-line)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode)

(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'c-mode-hook 'hs-minor-mode) 
(add-hook 'c++-mode-hook 'hs-minor-mode)  

(global-set-key (kbd "M-p h") 'hs-hide-block)
(global-set-key (kbd "M-p s") 'hs-show-block)
(global-set-key (kbd "M-p l") 'hs-hide-level)
(global-set-key (kbd "M-p a") 'hs-show-all)

;;(load-file "~/.emacs.d/init-key-chord.el")	;; so cool
;;(load-file "~/.emacs.d/init-cedet.el")
;;(load-file "~/.emacs.d/init-ecb.el")

;;(load-file "~/.emacs.d/init-ido.el")
;;(load-file "~/.emacs.d/init-youdao.el")
;;(load-file "~/.emacs.d/init-eim.el")
;;(load-file "~/.emacs.d/init-w3m.el")
;;(load-file "~/.emacs.d/init-color-theme.el")
;;(load-file "~/.emacs.d/init-expand-region.el")
;;(load-file "~/.emacs.d/init-yasnippet.el")
;;(load-file "~/.emacs.d/init-flycheck.el")	;; request dash
;;(load-file "~/.emacs.d/init-smartparens.el")	;; request dash too
;;(load-file "~/.emacs.d/init-magit.el")
;;(load-file "~/.emacs.d/init-evil.el")
;;(load-file "~/.emacs.d/init-keybind.el")
;;(load-file "~/.emacs.d/init-keybindsimple.el")
;;(load-file "~/.emacs.d/init-auto-complete.el")
;;(load-file "~/.emacs.d/init-window-numbering.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(ede-project-directories (quote ("/home/raymon/celltest" "/home/raymon/GLdb" "/home/raymon/start-stop-daemon" "/home/raymon/content.d/include" "/home/raymon/content.d/src" "/home/raymon/content.d")))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(desktop-read)

(provide 'init)
;;; init.el ends here















