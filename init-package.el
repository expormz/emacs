(provide 'init-package)
										;powerline
;;(add-to-list 'load-path "~/.emacs.d/lib/powerline")
;;(require 'powerline)

;;ace-jump-mode
;;(add-to-list 'load-path "~/.emacs.d/lib/ace-jump-mode")
(when (not (require 'ace-jump-mode nil t))    (package-install 'ace-jump-mode))
(autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
(autoload 'ace-jump-mode-pop-mark "ace-jump-mode" "ace jump back" t)
(eval-after-load "ace-jump-mode" '(ace-jump-mode-enable-mark-sync))
;;heml mode
;;(add-to-list 'load-path "~/.emacs.d/lib/helm")
(when (not (require 'helm-config nil t))    (package-install 'helm))
;;emmet
;;(add-to-list 'load-path "~/.emacs.d/lib/emmet-mode")
(when (not (require 'emmet-mode nil t))    (package-install 'emmet-mode))
(add-hook 'emmet-mode-hook (lambda () (
									   setq emmet-indentation 4
											)))

;;helm-emmet


(helm-mode 1)
;;(add-to-list 'load-path "~/.emacs.d/lib/helm-emmet")
;;magit
(when (not (require 'magit nil t))    (package-install 'magit))
;;browse kill ring
;;(add-to-list 'load-path "~/.emacs.d/lib/browse-king-ring")
(when (not (require 'browse-kill-ring nil t))    (package-install 'browse-kill-ring))
(browse-kill-ring-default-keybindings)
(setq browse-kill-ring-highlight-current-entry t)
(setq browse-kill-ring-no-duplicates t)
(setq browse-kill-ring-display-duplicates nil)
(setq browse-kill-ring-highlight-inserted-item nil)

;;yasnapper
;;(add-to-list 'load-path "~/.emacs.d/lib/yasnippet")
(when (not (require 'yasnippet nil t))    (package-install 'yasnippet))
(setq yas-snippet-dirs '("~/.emacs.d/snippets"))
(yas-global-mode 1)
;;evil-mode
(when (not (require 'evil nil t))    (package-install 'evil))
(when (not (require 'evil-leader nil t))    (package-install 'evil-leader))
(evil-mode 1)
(global-evil-leader-mode)


;;auto-complete
(add-to-list 'load-path "~/.emacs.d/lib")
(when (not (require 'go-autocomplete nil t))    (package-install 'go-autocomplete))
(when (not (require 'popup nil t))    (package-install 'popup))
(when (not (require 'fuzzy nil t))    (package-install 'fuzzy))
(when (not (require 'auto-complete nil t))    (package-install 'auto-complete))
(require 'auto-complete-config)
(ac-config-default)
(ac-flyspell-workaround)
(global-auto-complete-mode t)
(setq ac-auto-show-menu t)
(setq ac-dwim t)
(setq ac-use-menu-map t)
(setq ac-quick-help-delay 1)
(setq ac-quick-help-height 60)
(setq ac-show-menu-immediately-on-auto-complete t)
(setq ac-auto-start 2)
(setq ac-candidate-menu-min 0)
(setq ac-sources '(ac-source-filename
		   ac-source-functions
		   ac-source-yasnippet
		   ac-source-variables
		   ac-source-symbols
		   ac-source-features
		   ac-source-abbrev
		   ac-source-words-in-same-mode-buffers
		   ac-source-dictionary
		   ac-source-filename
		   ac-source-files-in-current-dir
		   ac-source-imenu
		   ac-source-words-in-all-buffer
		   ac-source-words-in-buffer))

;;popwin
(when (not (require 'popwin nil t))    (package-install 'popwin))
(popwin-mode 1)
;;undo tree mode
(when (not (require 'undo-tree nil t))    (package-install 'undo-tree))
(global-undo-tree-mode)
;;js2 mode
;;(add-to-list 'load-path "~/.emacs.d/lib/js2")
(when (not (require 'js2-mode nil t))    (package-install 'js2-mode))

;;go-mode
(require 'go-mode-load)
(when (not (require 'go-mode nil t))    (package-install 'go-mode))

(add-hook 'before-save-hook #'gofmt-before-save)
(add-hook
'go-mode-hook
'(lambda ()
    ;; gocode
   (auto-complete-mode 1)
   (electric-pair-mode 1)
    (setq ac-sources '(ac-source-go))
    ;; Imenu & Speedbar
    (setq imenu-generic-expression
        '(("type" "^type *\\([^ \t\n\r\f]*\\)" 1)
        ("func" "^func *\\(.*\\) {" 1)))
    (imenu-add-to-menubar "Index")
    ;; Outline mode
    (make-local-variable 'outline-regexp)
    (setq outline-regexp "//\\.\\|//[^\r\n\f][^\r\n\f]\\|pack\\|func\\|impo\\|cons\\|var.\\|type\\|\t\t*....")
    (outline-minor-mode 1)
    (local-set-key "\M-a" 'outline-previous-visible-heading)
    (local-set-key "\M-e" 'outline-next-visible-heading)
    ;; Menu bar
    (require 'easymenu)
    (defconst go-hooked-menu
        '("Go tools"
        ["Go run buffer" go t]
        ["Go reformat buffer" go-fmt-buffer t]
        ["Go check buffer" go-fix-buffer t]))
    (easy-menu-define
        go-added-menu
        (current-local-map)
        "Go tools"
        go-hooked-menu)

    ;; Other
    (setq show-trailing-whitespace t)
    ))
;; helper function
;;path config
;mode-hook
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)

;;auto-modes
(setq auto-mode-alist (cons '("\\.ejs$" . html-mode) auto-mode-alist))
(add-to-list 'load-path "~/.emacs.d/lib/npm")
(require 'npm)
(when (not (require 'coffee-mode nil t))    (package-install 'coffee-mode))
;;(add-to-list 'load-path "~/.emacs.d/lib/sourcemap")
(when (not (require 'sourcemap nil t))    (package-install 'sourcemap))
(setq coffee-args-compile '("-c" "-m"))
(add-hook 'coffee-after-compile-hook 'sourcemap-goto-corresponding-point)

(when (not (require 'cider nil t))    (package-install 'cider))
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq nrepl-hide-special-buffers t)
(setq cider-repl-display-in-current-window t)
(setq cider-repl-result-prefix ";;=>")
(when (not (require 'paredit nil t))    (package-install 'paredit))
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'subword-mode)
;;(add-to-list 'load-path "~/.emacs.d/lib/ac-cider")
(when (not (require 'ac-cider nil t))    (package-install 'ac-cider))
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-mode))
(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))

(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)



















































