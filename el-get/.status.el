((coffee-mode status "installed" recipe
			  (:name coffee-mode :website "http://ozmm.org/posts/coffee_mode.html" :description "Emacs Major Mode for CoffeeScript" :type github :pkgname "defunkt/coffee-mode" :features coffee-mode :post-init
					 (progn
					   (add-to-list 'auto-mode-alist
									'("\\.coffee$" . coffee-mode))
					   (add-to-list 'auto-mode-alist
									'("Cakefile" . coffee-mode))
					   (setq coffee-js-mode 'javascript-mode))))
 (el-get status "installed" recipe
		 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
				("el-get.*\\.el$" "methods/")
				:load "el-get.el")))
