(add-hook 'after-init-hook #'(lambda ()
							   (add-to-list 'load-path "~/.emacs.d")
							   (require 'init-theme)
							   (require 'init-basic)
							   (require 'init-pkgmgr)
							   (require 'init-path)
							   (require 'init-package)
							   (require 'init-bindings)
							   )
		  )


