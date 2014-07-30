(provide 'init-package)
										;powerline
;;(add-to-list 'load-path "~/.emacs.d/lib/powerline")
;;(require 'powerline)

;;ace-jump-mode
(add-to-list 'load-path "~/.emacs.d/lib/ace-jump-mode")
(autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
(autoload 'ace-jump-mode-pop-mark "ace-jump-mode" "ace jump back" t)
(eval-after-load "ace-jump-mode" '(ace-jump-mode-enable-mark-sync))
;;heml mode
(add-to-list 'load-path "~/.emacs.d/lib/helm")
(require 'helm-config)
;;emmet
(add-to-list 'load-path "~/.emacs.d/lib/emmet-mode")
(require 'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (
									   setq emmet-indentation 4
											)))

;;helm-emmet


(helm-mode 1)
(add-to-list 'load-path "~/.emacs.d/lib/helm-emmet")
;;magit
(require 'magit)
;;browse kill ring
(add-to-list 'load-path "~/.emacs.d/lib/browse-king-ring")
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
(setq browse-kill-ring-highlight-current-entry t)
(setq browse-kill-ring-no-duplicates t)
(setq browse-kill-ring-display-duplicates nil)
(setq browse-kill-ring-highlight-inserted-item nil)

;;yasnapper
(add-to-list 'load-path "~/.emacs.d/lib/yasnippet")
(require 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/lib/yasnippet/snippets" "~/.emacs.d/lib/yasnippet/yasmate/snippets"))
(yas-global-mode 1)
;;evil-mode
(require 'evil)
(require 'evil-leader)
(evil-mode 1)
(global-evil-leader-mode)


;;auto-complete
(add-to-list 'load-path "~/.emacs.d/lib")
(require 'go-autocomplete)
(require 'popup)
(require 'fuzzy)
(require 'auto-complete)
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
(require 'popwin)
(popwin-mode 1)
;;undo tree mode
(require 'undo-tree)
(global-undo-tree-mode)
;;js2 mode
(add-to-list 'load-path "~/.emacs.d/lib/js2")
(require 'js2-mode)
;;go-mode
(require 'go-mode-load)
(require 'go-mode)
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

(require 'coffee-mode)
(add-to-list 'load-path "~/.emacs.d/lib/sourcemap")
(require 'sourcemap)
(setq coffee-args-compile '("-c" "-m"))
(add-hook 'coffee-after-compile-hook 'sourcemap-goto-corresponding-point)





















































