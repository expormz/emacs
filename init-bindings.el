(provide 'init-bindings)

;;key bindings
(global-set-key (kbd "C-c r") 'helm-recentf)
(global-set-key (kbd "C-c p") 'helm-projectile)
(global-set-key (kbd "C-c l") 'helm-locate)
(global-set-key (kbd "C-c i") 'helm-imenu)
(global-set-key (kbd "C-,") 'set-mark-command)
(global-set-key (kbd "C-c f") 'helm-for-files)
(global-set-key (kbd "C-c o") 'ffap-menu)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "C-x r") 'refresh-file)
(global-set-key (kbd "C-c m") 'helm-mini)
(global-set-key (kbd "C-c o") 'my-helm-omni)
;;other window global
(global-set-key (kbd "C-M-]") 'scroll-other-window)
(global-set-key (kbd "C-M-[") 'scroll-other-window-down)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'keyboard-quit)
;;go-mode keys
(define-key go-mode-map (kbd "C-x e") 'go)
;;ace-jump-mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)
;;evil-mode&evil-leader
(evil-leader/set-leader ",")
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer
  "w" 'save-buffer
  "q" 'save-buffers-kill-emacs
  "r"'helm-recentf
  "y" 'evil-paste-pop
  "f" 'ace-jump-mode
  "h" 'refresh-file
  "p" 'helm-projectile)

(global-set-key (kbd "M-n i") 'npm-instal)
(global-set-key (kbd "M-n n") 'npm-new)
(global-set-key (kbd "M-n d") 'npm-new-dependency)
(global-set-key (kbd "M-n e") 'npm-nodemon-exec)
(global-set-key (kbd "M-n p") 'npm-publish)
(global-set-key (kbd "M-n t") 'npm-test)
(global-set-key (kbd "M-n v") 'npm-version)
