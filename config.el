;;theme config
(add-to-list 'load-path "~/.emacs.d/lib/color-theme")
(require 'color-theme)
(load-file "~/.emacs.d/lib/cyberpunk.el")
(color-theme-cyberpunk)
;;font config
(when (display-graphic-p)
  (setq fonts
        (cond ((eq system-type 'darwin)     '("Inconsolata"     "STHeiti"))
              ((eq system-type 'gnu/linux)  '("Menlo"     "WenQuanYi Zen Hei"))
              ((eq system-type 'windows-nt) '("Consolas"  "Microsoft Yahei"))))

  (setq face-font-rescale-alist '(("STHeiti" . 1.1) ("Microsoft Yahei" . 1.1) ("WenQuanYi Zen Hei" . 1.1)))
  (set-face-attribute 'default nil :font
                      (format "%s:pixelsize=%d" (car fonts) 15))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family (car (cdr fonts))))))
;;package 
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;;base config
(global-linum-mode 1)
(column-number-mode 1)
(global-hl-line-mode 1)
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)
(setq enable-recursive-minibuffers t)
(show-paren-mode 1)
(tool-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq x-select-enable-clipboard t)
;;(cua-mode 1)
 ;;tab config
(setq-default tab-width 4)
(setq tab-width 4)
(electric-indent-mode 1)
;;exec-path-from-shell
(add-to-list 'load-path "~/.emacs.d/lib/exec-path-from-shell")
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
;;encode config
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(setq utf-translate-cjk-mode nil)
;;powerline
(add-to-list 'load-path "~/.emacs.d/lib/powerline")
(require 'powerline)
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
;;js2 mode
(add-to-list 'load-path "~/.emacs.d/lib/js2")
(require 'js2-mode)
;;go-mode
(require 'go-mode-load)
;;path config
;;(defun my-add-path (path-element)
;;  "Add the specified PATH-ELEMENT to the Emacs PATH."
;;  (interactive "DEnter directory to be added to path: ")
;;  (if (file-directory-p path-element)
;;     (progn
;;       (setenv "PATH" (concat (expand-file-name path-element) path-separator (getenv "PATH")))
;;       (add-to-list 'exec-path (expand-file-name path-element)))))

;;(if (fboundp 'my-add-path)
;;   (let ((my-paths (list "/bin" "/usr/local/go/bin" "/sbin" "/usr/bin" "/usr/local/bin" "/usr/local/git/bin")))
;;      (dolist (path-to-add my-paths (getenv "PATH"))
;;         (my-add-path path-to-add))))
;;mode-hook
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
;;key bindings
(global-set-key (kbd "C-c r") 'helm-recentf)
(global-set-key (kbd "C-c p") 'helm-browse-project)
(global-set-key (kbd "C-c l") 'helm-locate)
(global-set-key (kbd "C-c i") 'helm-imenu)
(global-set-key (kbd "C-,") 'set-mark-command)
;;scroll other window
(global-set-key (kbd "C-M-]") 'scroll-other-window)
(global-set-key (kbd "C-M-[") 'scroll-other-window-down)

;;auto-modes
(setq auto-mode-alist (cons '("\\.ejs$" . html-mode) auto-mode-alist))
























































