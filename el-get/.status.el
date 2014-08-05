((cider status "installed" recipe
		(:name cider :description "CIDER is a Clojure IDE and REPL." :type github :pkgname "clojure-emacs/cider" :depends
			   (dash clojure-mode pkg-info)))
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
 (dash status "installed" recipe
	   (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
		 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
				("el-get.*\\.el$" "methods/")
				:load "el-get.el"))
 (epl status "installed" recipe
	  (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (paredit status "installed" recipe
		  (:name paredit :description "Minor mode for editing parentheses" :type http :prepare
				 (progn
				   (autoload 'enable-paredit-mode "paredit")
				   (autoload 'disable-paredit-mode "paredit"))
				 :url "http://mumble.net/~campbell/emacs/paredit.el"))
 (pkg-info status "installed" recipe
		   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
				  (dash epl))))
