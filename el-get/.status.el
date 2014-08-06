((ace-jump-mode status "installed" recipe
				(:name ace-jump-mode :website "https://github.com/winterTTr/ace-jump-mode/wiki" :description "A quick cursor location minor mode for emacs." :type github :pkgname "winterTTr/ace-jump-mode"))
 (auto-complete status "installed" recipe
				(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
					   (popup fuzzy)
					   :features auto-complete-config :post-init
					   (progn
						 (add-to-list 'ac-dictionary-directories
									  (expand-file-name "dict" default-directory))
						 (ac-config-default))))
 (auto-complete-etags status "installed" recipe
					  (:name auto-complete-etags :type emacswiki :description "Auto-complete sources for etags" :depends auto-complete))
 (browse-kill-ring status "installed" recipe
				   (:name browse-kill-ring :description "Interactively insert items from kill-ring" :type github :pkgname "browse-kill-ring/browse-kill-ring" :prepare
						  (progn
							(autoload 'browse-kill-ring-default-keybindings "browse-kill-ring"))))
 (cider status "installed" recipe
		(:name cider :description "CIDER is a Clojure IDE and REPL." :type github :pkgname "clojure-emacs/cider" :depends
			   (dash clojure-mode pkg-info)))
 (cl-lib status "installed" recipe
		 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (clojure-mode status "installed" recipe
			   (:name clojure-mode :website "https://github.com/clojure-emacs/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "clojure-emacs/clojure-mode"))
 (coffee-mode status "installed" recipe
			  (:name coffee-mode :website "http://ozmm.org/posts/coffee_mode.html" :description "Emacs Major Mode for CoffeeScript" :type github :pkgname "defunkt/coffee-mode" :features coffee-mode :post-init
					 (progn
					   (add-to-list 'auto-mode-alist
									'("\\.coffee$" . coffee-mode))
					   (add-to-list 'auto-mode-alist
									'("Cakefile" . coffee-mode))
					   (setq coffee-js-mode 'javascript-mode))))
 (color-theme status "installed" recipe
			  (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
					 ("xzf")
					 :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
					 (progn
					   (color-theme-initialize)
					   (setq color-theme-is-global t))))
 (dash status "installed" recipe
	   (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
		 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
				("el-get.*\\.el$" "methods/")
				:load "el-get.el"))
 (emmet-mode status "installed" recipe
			 (:name emmet-mode :website "https://github.com/smihica/emmet-mode" :description "Produce HTML from CSS-like selectors." :type "github" :branch "master" :pkgname "smihica/emmet-mode"))
 (epl status "installed" recipe
	  (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (evil status "installed" recipe
	   (:name evil :website "http://gitorious.org/evil/pages/Home" :description "Evil is an extensible vi layer for Emacs. It\n       emulates the main features of Vim, and provides facilities\n       for writing custom extensions." :type git :url "git://gitorious.org/evil/evil.git" :features evil :depends
			  (undo-tree goto-chg)
			  :build
			  (("make" "all" "info"))
			  :build/berkeley-unix
			  (("gmake" "all" "info"))
			  :build/darwin
			  `(("make" ,(format "EMACS=%s" el-get-emacs)
				 "all" "info"))
			  :info "doc"))
 (evil-leader status "installed" recipe
			  (:name evil-leader :website "http://github.com/cofi/evil-leader" :description "Add <leader> shortcuts to Evil, the extensible vim\n       emulation layer" :type github :pkgname "cofi/evil-leader" :features evil-leader :depends evil))
 (evil-nerd-commenter status "installed" recipe
					  (:name evil-nerd-commenter :website "http://github.com/redguardtoo/evil-nerd-commenter" :description "Comment/uncomment lines efficiently. Like Nerd Commenter in Vim" :type github :pkgname "redguardtoo/evil-nerd-commenter" :depends evil))
 (fuzzy status "installed" recipe
		(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (git-commit-mode status "installed" recipe
				  (:name git-commit-mode :description "Major mode for editing git commit messages" :type github :pkgname "rafl/git-commit-mode" :features git-commit))
 (git-modes status "installed" recipe
			(:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :pkgname "magit/git-modes"))
 (git-rebase-mode status "installed" recipe
				  (:name git-rebase-mode :description "Major mode for editing Git rebase files." :type http :url "https://raw.github.com/magit/git-modes/master/git-rebase-mode.el"))
 (goto-chg status "installed" recipe
		   (:name goto-chg :description "Goto the point of the most recent edit in the buffer." :type emacswiki :features goto-chg))
 (helm status "installed" recipe
	   (:name helm :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :compile nil))
 (helm-cmd-t status "installed" recipe
			 (:name helm-cmd-t :description "Cmd-t style completion of files in repository." :type github :pkgname "lewang/helm-cmd-t" :depends
					(helm)))
 (js2-mode status "installed" recipe
		   (:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
				  (autoload 'js2-mode "js2-mode" nil t)))
 (magit status "installed" recipe
		(:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :depends
			   (cl-lib git-modes)
			   :info "." :build
			   (if
				   (version<= "24.3" emacs-version)
				   `(("make" ,(format "EMACS=%s" el-get-emacs)
					  "all"))
				 `(("make" ,(format "EMACS=%s" el-get-emacs)
					"docs")))
			   :build/berkeley-unix
			   (("touch" "`find . -name Makefile`")
				("gmake"))))
 (paredit status "installed" recipe
		  (:name paredit :description "Minor mode for editing parentheses" :type http :prepare
				 (progn
				   (autoload 'enable-paredit-mode "paredit")
				   (autoload 'disable-paredit-mode "paredit"))
				 :url "http://mumble.net/~campbell/emacs/paredit.el"))
 (pkg-info status "installed" recipe
		   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
				  (dash epl)))
 (popup status "installed" recipe
		(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
 (popwin status "installed" recipe
		 (:name popwin :description "Popup Window Manager." :website "https://github.com/m2ym/popwin-el" :type github :pkgname "m2ym/popwin-el" :load-path
				("." "misc")))
 (undo-tree status "installed" recipe
			(:name undo-tree :description "Treat undo history as a tree" :website "http://www.dr-qubit.org/emacs.php" :type git :url "http://www.dr-qubit.org/git/undo-tree.git/"))
 (yasnippet status "installed" recipe
			(:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
				   (("git" "submodule" "update" "--init" "--" "snippets")))))
