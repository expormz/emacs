(provide 'auto-compile)
(defun autocompile nil
  "compile itself if ~/.emacs"
  (interactive)
  (if (string= (buffer-file-name) (concat default-directory ".emacs"))
	  (byte-compile-file (buffer-file-name))
	)
  )
(add-hook 'after-save-hook 'autocompile)
