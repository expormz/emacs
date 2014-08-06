(provide 'init-pkgmgr)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)
;;el-get

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)
(setq my-packages
	  '(ace-jump-mode auto-complete auto-complete-etags browse-kill-ring cider cl-lib clojure-mode coffee-mode color-theme dash el-get emmet-mode epl evil evil-leader evil-nerd-commenter fuzzy git-commit-mode git-modes git-rebase-mode goto-chg helm helm-cmd-t js2-mode magit paredit pkg-info popup popwin undo-tree yasnippet))
(el-get 'sync my-packages)
