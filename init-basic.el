(provide 'init-basic)
;;font config
(defun setup-fonts ()
  (interactive)
  (when (display-graphic-p)
	(setq fonts
		  (cond ((eq system-type 'darwin)     '("Inconsolata"     "STHeiti"))
				((eq system-type 'gnu/linux)  '("Inconsolata"     "文泉驿等宽微米黑"))
				((eq system-type 'windows-nt) '("Consolas"  "Microsoft Yahei"))))

	(setq face-font-rescale-alist '(("STHeiti" . 1.1) ("Microsoft Yahei" . 1.1) ("WenQuanYi Zen Hei" . 1.1)))
	(set-face-attribute 'default nil :font
						(format "%s:pixelsize=%d" (car fonts) 15))
	(cond ((eq system-type 'gnu/linux) (set-face-attribute 'default nil :font
														   (format "%s:pixelsize=%d" (car fonts) 18))))
	(dolist (charset '(kana han symbol cjk-misc bopomofo))
	  (set-fontset-font (frame-parameter nil 'font) charset
						(font-spec :family (car (cdr fonts))))))
  )
(add-hook 'after-make-frame-functions
		  (lambda (new-frame)
			(select-frame new-frame)
			(setup-fonts)
			(tool-bar-mode 0)
			)
)
(setup-fonts)

(global-linum-mode 1)
(column-number-mode 1)
;;(global-hl-line-mode 1)
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
;
