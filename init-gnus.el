(provide 'init-gnus)

(setq user-full-name "iCavx")   
(setq user-mail-address "icavx@qq.com")   
  
  
;;;;;;;;;;;;;;;;;;;;  
;;自动显示图片  
;;;;;;;;;;;;;;;;;;;;  
(auto-image-file-mode)  
(setq mm-inline-large-images t)  
  
(setq gnus-select-method  
      '(nnimap "qq.com"  
           (nnimap-address "imap.qq.com")  
           (nnimap-server-port 993)  
           (nnimap-stream ssl)))  
  
(setq message-send-mail-function 'smtpmail-send-it  
      smtpmail-starttls-credentials '(("smtp.qq.com" 465 nil nil))  
      smtpmail-auth-credentials '(("smtp.qq.com" 465 
                   "icavx@qq.com" nil))  
      smtpmail-default-smtp-server "smtp.qq.com"  
      smtpmail-smtp-server "smtp.qq.com"  
      smtpmail-smtp-service 465
	  nnimap-stream ssl)  
