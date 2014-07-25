(provide 'init-basic)
;;font config
(when (display-graphic-p)
  (setq fonts
        (cond ((eq system-type 'darwin)     '("Ubuntu Mono"     "STHeiti"))
              ((eq system-type 'gnu/linux)  '("Menlo"     "WenQuanYi Zen Hei"))
              ((eq system-type 'windows-nt) '("Consolas"  "Microsoft Yahei"))))

  (setq face-font-rescale-alist '(("STHeiti" . 1.1) ("Microsoft Yahei" . 1.1) ("WenQuanYi Zen Hei" . 1.1)))
  (set-face-attribute 'default nil :font
                      (format "%s:pixelsize=%d" (car fonts) 14))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family (car (cdr fonts))))))

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
