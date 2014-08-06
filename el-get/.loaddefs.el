;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ace-jump-mode ace-jump-line-mode ace-jump-word-mode
;;;;;;  ace-jump-char-mode ace-jump-mode-pop-mark) "ace-jump-mode/ace-jump-mode"
;;;;;;  "ace-jump-mode/ace-jump-mode.el" (21473 42766 0 0))
;;; Generated autoloads from ace-jump-mode/ace-jump-mode.el

(autoload 'ace-jump-mode-pop-mark "ace-jump-mode/ace-jump-mode" "\
Pop up a postion from `ace-jump-mode-mark-ring', and jump back to that position

\(fn)" t nil)

(autoload 'ace-jump-char-mode "ace-jump-mode/ace-jump-mode" "\
AceJump char mode

\(fn QUERY-CHAR)" t nil)

(autoload 'ace-jump-word-mode "ace-jump-mode/ace-jump-mode" "\
AceJump word mode.
You can set `ace-jump-word-mode-use-query-char' to nil to prevent
asking for a head char, that will mark all the word in current
buffer.

\(fn HEAD-CHAR)" t nil)

(autoload 'ace-jump-line-mode "ace-jump-mode/ace-jump-mode" "\
AceJump line mode.
Marked each no empty line and move there

\(fn)" t nil)

(autoload 'ace-jump-mode "ace-jump-mode/ace-jump-mode" "\
AceJump mode is a minor mode for you to quick jump to a
position in the curret view.
   There is three submode now:
     `ace-jump-char-mode'
     `ace-jump-word-mode'
     `ace-jump-line-mode'

You can specify the sequence about which mode should enter
by customize `ace-jump-mode-submode-list'.

If you do not want to query char for word mode, you can change
`ace-jump-word-mode-use-query-char' to nil.

If you don't like the default move keys, you can change it by
setting `ace-jump-mode-move-keys'.

You can constrol whether use the case sensitive via
`ace-jump-mode-case-fold'.

\(fn &optional PREFIX)" t nil)

;;;***

;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21473 42032 0 0))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ac-config-default) "auto-complete/auto-complete-config"
;;;;;;  "auto-complete/auto-complete-config.el" (21473 42032 0 0))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (browse-kill-ring browse-kill-ring-default-keybindings)
;;;;;;  "browse-kill-ring/browse-kill-ring" "browse-kill-ring/browse-kill-ring.el"
;;;;;;  (21473 41768 0 0))
;;; Generated autoloads from browse-kill-ring/browse-kill-ring.el

(autoload 'browse-kill-ring-default-keybindings "browse-kill-ring/browse-kill-ring" "\
Set up M-y (`yank-pop') so that it can invoke `browse-kill-ring'.
Normally, if M-y was not preceeded by C-y, then it has no useful
behavior.  This function sets things up so that M-y will invoke
`browse-kill-ring'.

\(fn)" t nil)

(autoload 'browse-kill-ring "browse-kill-ring/browse-kill-ring" "\
Display items in the `kill-ring' in another buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (cider-connect cider-jack-in cider-version) "cider/cider"
;;;;;;  "cider/cider.el" (21472 61298 0 0))
;;; Generated autoloads from cider/cider.el

(autoload 'cider-version "cider/cider" "\
Display CIDER's version.

\(fn)" t nil)

(autoload 'cider-jack-in "cider/cider" "\
Start a nREPL server for the current project and connect to it.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.

\(fn &optional PROMPT-PROJECT)" t nil)

(autoload 'cider-connect "cider/cider" "\
Connect to an nREPL server identified by HOST and PORT.

\(fn HOST PORT)" t nil)

(eval-after-load 'clojure-mode '(progn (define-key clojure-mode-map (kbd "C-c M-j") 'cider-jack-in) (define-key clojure-mode-map (kbd "C-c M-c") 'cider-connect)))

;;;***

;;;### (autoloads (cider-inspect) "cider/cider-inspector" "cider/cider-inspector.el"
;;;;;;  (21472 61298 0 0))
;;; Generated autoloads from cider/cider-inspector.el

(autoload 'cider-inspect "cider/cider-inspector" "\
Eval the string EXPRESSION and inspect the result.

\(fn EXPRESSION)" t nil)

;;;***

;;;### (autoloads (cider-macroexpand-all cider-macroexpand-1) "cider/cider-macroexpansion"
;;;;;;  "cider/cider-macroexpansion.el" (21472 61298 0 0))
;;; Generated autoloads from cider/cider-macroexpansion.el

(autoload 'cider-macroexpand-1 "cider/cider-macroexpansion" "\
Invoke 'macroexpand-1' on the expression preceding point.
If invoked with a PREFIX argument, use 'macroexpand' instead of
'macroexpand-1'.

\(fn &optional PREFIX)" t nil)

(autoload 'cider-macroexpand-all "cider/cider-macroexpansion" "\
Invoke 'clojure.walk/macroexpand-all' on the expression preceding point.

\(fn)" t nil)

;;;***

;;;### (autoloads (cider-mode cider-mode-line) "cider/cider-mode"
;;;;;;  "cider/cider-mode.el" (21472 61298 0 0))
;;; Generated autoloads from cider/cider-mode.el

(defvar cider-mode-line '(" cider" (:eval (format "[%s]" (cider-current-ns)))) "\
Mode line ligher for `cider-mode'.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for
details about mode line templates.

Customize this variable to change how `cider-mode' displays its
status in the mode line.  The default value displays the current ns.
Set this variable to nil to disable the mode line
entirely.")

(custom-autoload 'cider-mode-line "cider/cider-mode" t)

(autoload 'cider-mode "cider/cider-mode" "\
Minor mode for REPL interaction from a Clojure buffer.

\\{cider-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (cider-scratch) "cider/cider-scratch" "cider/cider-scratch.el"
;;;;;;  (21472 61298 0 0))
;;; Generated autoloads from cider/cider-scratch.el

(autoload 'cider-scratch "cider/cider-scratch" "\
Create a scratch buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (cider-selector) "cider/cider-selector" "cider/cider-selector.el"
;;;;;;  (21472 61298 0 0))
;;; Generated autoloads from cider/cider-selector.el

(autoload 'cider-selector "cider/cider-selector" "\
Select a new buffer by type, indicated by a single character.
The user is prompted for a single character indicating the method by
which to choose a new buffer.  The `?' character describes then
available methods.  OTHER-WINDOW provides an optional target.

See `def-cider-selector-method' for defining new methods.

\(fn &optional OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads (clojure-mode) "clojure-mode/clojure-mode" "clojure-mode/clojure-mode.el"
;;;;;;  (21472 61271 0 0))
;;; Generated autoloads from clojure-mode/clojure-mode.el

(autoload 'clojure-mode "clojure-mode/clojure-mode" "\
Major mode for editing Clojure code.

\\{clojure-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(clj[sx]?\\|dtm\\|edn\\)\\'" . clojure-mode))

;;;***

;;;### (autoloads (clojure-find-clojure-test clojure-test-mode) "clojure-mode/clojure-test-mode"
;;;;;;  "clojure-mode/clojure-test-mode.el" (21472 61271 0 0))
;;; Generated autoloads from clojure-mode/clojure-test-mode.el

(autoload 'clojure-test-mode "clojure-mode/clojure-test-mode" "\
A minor mode for running Clojure tests.

\\{clojure-test-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'clojure-find-clojure-test "clojure-mode/clojure-test-mode" "\


\(fn)" nil nil)

(defun clojure-test-maybe-enable nil "\
Enable clojure-test-mode if the current buffer contains a \"clojure.test\" bit in it." (when (clojure-find-clojure-test) (save-window-excursion (clojure-test-mode t))))

(add-hook 'clojure-mode-hook 'clojure-test-maybe-enable)

;;;***

;;;### (autoloads (coffee-mode) "coffee-mode/coffee-mode" "coffee-mode/coffee-mode.el"
;;;;;;  (21439 32815 0 0))
;;; Generated autoloads from coffee-mode/coffee-mode.el

(autoload 'coffee-mode "coffee-mode/coffee-mode" "\
Major mode for editing CoffeeScript.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))

(add-to-list 'auto-mode-alist '("\\.iced\\'" . coffee-mode))

(add-to-list 'auto-mode-alist '("Cakefile\\'" . coffee-mode))

(add-to-list 'auto-mode-alist '("\\.cson\\'" . coffee-mode))

(add-to-list 'interpreter-mode-alist '("coffee" . coffee-mode))

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get/el-get" "el-get/el-get.el" (21430
;;;;;;  42860 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21430 42860 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (emmet-preview emmet-expand-yas emmet-mode emmet-expand-line)
;;;;;;  "emmet-mode/emmet-mode" "emmet-mode/emmet-mode.el" (21473
;;;;;;  41713 0 0))
;;; Generated autoloads from emmet-mode/emmet-mode.el

(autoload 'emmet-expand-line "emmet-mode/emmet-mode" "\
Replace the current line's emmet expression with the corresponding expansion.
If prefix ARG is given or region is visible call `emmet-preview' to start an
interactive preview.

Otherwise expand line directly.

For more information see `emmet-mode'.

\(fn ARG)" t nil)

(autoload 'emmet-mode "emmet-mode/emmet-mode" "\
Minor mode for writing HTML and CSS markup.
With emmet for HTML and CSS you can write a line like

  ul#name>li.item*2

and have it expanded to

  <ul id=\"name\">
    <li class=\"item\"></li>
    <li class=\"item\"></li>
  </ul>

This minor mode defines keys for quick access:

\\{emmet-mode-keymap}

Home page URL `http://www.emacswiki.org/emacs/Emmet'.

See also `emmet-expand-line'.

\(fn &optional ARG)" t nil)

(autoload 'emmet-expand-yas "emmet-mode/emmet-mode" "\


\(fn)" t nil)

(autoload 'emmet-preview "emmet-mode/emmet-mode" "\
Expand emmet between BEG and END interactively.
This will show a preview of the expanded emmet code and you can
accept it or skip it.

\(fn BEG END)" t nil)

;;;***

;;;### (autoloads (evil-leader/set-key-for-mode evil-leader/set-key
;;;;;;  evil-leader-mode global-evil-leader-mode) "evil-leader/evil-leader"
;;;;;;  "evil-leader/evil-leader.el" (21473 42375 0 0))
;;; Generated autoloads from evil-leader/evil-leader.el

(autoload 'global-evil-leader-mode "evil-leader/evil-leader" "\
Global minor mode for <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader-mode "evil-leader/evil-leader" "\
Minor mode to enable <leader> support.

\(fn &optional ARG)" t nil)

(autoload 'evil-leader/set-key "evil-leader/evil-leader" "\
Bind `key' to command `def' in `evil-leader/default-map'.

Key has to be readable by `read-kbd-macro' and `def' a command.
Accepts further `key' `def' pairs.

\(fn KEY DEF &rest BINDINGS)" t nil)

(autoload 'evil-leader/set-key-for-mode "evil-leader/evil-leader" "\
Create keybindings for major-mode `mode' with `key' bound to command `def'.

See `evil-leader/set-key'.

\(fn MODE KEY DEF &rest BINDINGS)" t nil)

;;;***

;;;### (autoloads (evilnc-default-hotkeys evilnc-version evilnc-kill-to-line
;;;;;;  evilnc-copy-to-line evilnc-copy-and-comment-lines evilnc-comment-or-uncomment-lines
;;;;;;  evilnc-toggle-comment-empty-lines evilnc-toggle-invert-comment-line-by-line
;;;;;;  evilnc-quick-comment-or-uncomment-to-the-line evilnc-comment-or-uncomment-to-the-line
;;;;;;  evilnc-comment-or-uncomment-paragraphs) "evil-nerd-commenter/evil-nerd-commenter"
;;;;;;  "evil-nerd-commenter/evil-nerd-commenter.el" (21473 42404
;;;;;;  0 0))
;;; Generated autoloads from evil-nerd-commenter/evil-nerd-commenter.el

(autoload 'evilnc-comment-or-uncomment-paragraphs "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment paragraph(s). A paragraph is a continuation non-empty lines.
Paragraphs are separated by empty lines.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-comment-or-uncomment-to-the-line "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment from the current line to the LINENUM line

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-quick-comment-or-uncomment-to-the-line "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment to line number by specifying its last digit(s)
For exmaple, you can use 'C-u 53 M-x evilnc-quick-comment-or-uncomment-to-the-line'
or 'C-u 3 M-x evilnc-quick-comment-or-uncomment-to-the-line' to comment to the line 6453

\(fn &optional UNITS)" t nil)

(autoload 'evilnc-toggle-invert-comment-line-by-line "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-toggle-comment-empty-lines "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-comment-or-uncomment-lines "evil-nerd-commenter/evil-nerd-commenter" "\
Comment or uncomment NUM lines. NUM could be negative.
   Case 1: If no region selected, comment/uncomment on current line. if NUM>1, comment/uncomment
   extra N-1 lines from next line
   Case 2: If a region selected, the region is expand to make sure the region contain
   whole lines. Then we comment/uncomment the expanded region. NUM is ignored.

\(fn &optional NUM)" t nil)

(autoload 'evilnc-copy-and-comment-lines "evil-nerd-commenter/evil-nerd-commenter" "\
Copy and paste NUM lines. Then comment the original lines. NUM could be negative.
   Case 1: If no region selected, operate on current line. if NUM>1, comment/uncomment
   extra N-1 lines from next line
   Case 2: If a region selected, the region is expand to make sure the region contain
   whole lines. Then we operate the expanded region. NUM is ignored.

\(fn &optional NUM)" nil nil)

(autoload 'evilnc-copy-to-line "evil-nerd-commenter/evil-nerd-commenter" "\
Copy from the current line to the LINENUM line, for non-evil user only

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-kill-to-line "evil-nerd-commenter/evil-nerd-commenter" "\
Kill from the current line to the LINENUM line, for non-evil user only

\(fn &optional LINENUM)" t nil)

(autoload 'evilnc-version "evil-nerd-commenter/evil-nerd-commenter" "\


\(fn)" t nil)

(autoload 'evilnc-default-hotkeys "evil-nerd-commenter/evil-nerd-commenter" "\
Set the hotkeys of evil-nerd-comment

\(fn)" t nil)

;;;***

;;;### (autoloads nil "evil/evil-core" "evil/evil-core.el" (21473
;;;;;;  42349 0 0))
;;; Generated autoloads from evil/evil-core.el
 (autoload 'evil-mode "evil" "Toggle evil in all buffers" t)

;;;***

;;;### (autoloads (git-commit-mode) "git-commit-mode/git-commit"
;;;;;;  "git-commit-mode/git-commit.el" (21473 42474 0 0))
;;; Generated autoloads from git-commit-mode/git-commit.el

(autoload 'git-commit-mode "git-commit-mode/git-commit" "\
Major mode for editing git commit messages.
This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

Commands:\\<git-commit-map>
\\[git-commit-commit]   `git-commit-commit'  Finish editing and commit
\\[git-commit-signoff]   `git-commit-signoff'   Insert a Signed-off-by header
\\[git-commit-ack]   `git-commit-ack'   Insert an Acked-by header
\\[git-commit-test]   `git-commit-test'   Insert a Tested-by header
\\[git-commit-review]   `git-commit-review'   Insert a Reviewed-by header
\\[git-commit-cc]   `git-commit-cc'   Insert a Cc header
\\[git-commit-reported]   `git-commit-reported'   Insert a Reported-by header

Turning on git commit calls the hooks in `git-commit-mode-hook'.

\(fn)" t nil)

(when (boundp 'session-mode-disable-list) (add-to-list 'session-mode-disable-list 'git-commit-mode))

(setq auto-mode-alist (append auto-mode-alist '(("COMMIT_EDITMSG" . git-commit-mode) ("NOTES_EDITMSG" . git-commit-mode) ("MERGE_MSG" . git-commit-mode) ("TAG_EDITMSG" . git-commit-mode))))

;;;***

;;;### (autoloads (git-commit-mode) "git-modes/git-commit-mode" "git-modes/git-commit-mode.el"
;;;;;;  (21473 42439 0 0))
;;; Generated autoloads from git-modes/git-commit-mode.el

(autoload 'git-commit-mode "git-modes/git-commit-mode" "\
Major mode for editing git commit messages.

This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.

\(fn)" t nil)

(dolist (pattern '("/COMMIT_EDITMSG\\'" "/NOTES_EDITMSG\\'" "/MERGE_MSG\\'" "/TAG_EDITMSG\\'" "/PULLREQ_EDITMSG\\'")) (add-to-list 'auto-mode-alist (cons pattern 'git-commit-mode)))

;;;***

;;;### (autoloads (git-rebase-mode) "git-modes/git-rebase-mode" "git-modes/git-rebase-mode.el"
;;;;;;  (21473 42439 0 0))
;;; Generated autoloads from git-modes/git-rebase-mode.el

(autoload 'git-rebase-mode "git-modes/git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads (gitattributes-mode) "git-modes/gitattributes-mode"
;;;;;;  "git-modes/gitattributes-mode.el" (21473 42439 0 0))
;;; Generated autoloads from git-modes/gitattributes-mode.el

(autoload 'gitattributes-mode "git-modes/gitattributes-mode" "\
A major mode for editing .gitattributes files.
\\{gitattributes-mode-map}

\(fn)" t nil)

(dolist (pattern '("/\\.gitattributes\\'" "/\\.git/info/attributes\\'" "/git/attributes\\'")) (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode)))

;;;***

;;;### (autoloads (gitconfig-mode) "git-modes/gitconfig-mode" "git-modes/gitconfig-mode.el"
;;;;;;  (21473 42439 0 0))
;;; Generated autoloads from git-modes/gitconfig-mode.el

(autoload 'gitconfig-mode "git-modes/gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/git/config\\'" "/\\.gitmodules\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;***

;;;### (autoloads (gitignore-mode) "git-modes/gitignore-mode" "git-modes/gitignore-mode.el"
;;;;;;  (21473 42439 0 0))
;;; Generated autoloads from git-modes/gitignore-mode.el

(autoload 'gitignore-mode "git-modes/gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/\\.git/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;***

;;;### (autoloads (git-rebase-mode) "git-rebase-mode/git-rebase-mode"
;;;;;;  "git-rebase-mode/git-rebase-mode.el" (21473 42529 0 0))
;;; Generated autoloads from git-rebase-mode/git-rebase-mode.el

(autoload 'git-rebase-mode "git-rebase-mode/git-rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("/git-rebase-todo\\'" . git-rebase-mode))

;;;***

;;;### (autoloads (goto-last-change-reverse goto-last-change) "goto-chg/goto-chg"
;;;;;;  "goto-chg/goto-chg.el" (21473 42279 0 0))
;;; Generated autoloads from goto-chg/goto-chg.el

(autoload 'goto-last-change "goto-chg/goto-chg" "\
Go to the point where the last edit was made in the current buffer.
Repeat the command to go to the second last edit, etc.

To go back to more recent edit, the reverse of this command, use \\[goto-last-change-reverse]
or precede this command with \\[universal-argument] - (minus).

It does not go to the same point twice even if there has been many edits
there. I call the minimal distance between distinguishable edits \"span\".
Set variable `glc-default-span' to control how close is \"the same point\".
Default span is 8.
The span can be changed temporarily with \\[universal-argument] right before \\[goto-last-change]:
\\[universal-argument] <NUMBER> set current span to that number,
\\[universal-argument] (no number) multiplies span by 4, starting with default.
The so set span remains until it is changed again with \\[universal-argument], or the consecutive
repetition of this command is ended by any other command.

When span is zero (i.e. \\[universal-argument] 0) subsequent \\[goto-last-change] visits each and
every point of edit and a message shows what change was made there.
In this case it may go to the same point twice.

This command uses undo information. If undo is disabled, so is this command.
At times, when undo information becomes too large, the oldest information is
discarded. See variable `undo-limit'.

\(fn ARG)" t nil)

(autoload 'goto-last-change-reverse "goto-chg/goto-chg" "\
Go back to more recent changes after \\[goto-last-change] have been used.
See `goto-last-change' for use of prefix argument.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-cmd-t-git-grep helm-cmd-t-repos helm-cmd-t)
;;;;;;  "helm-cmd-t/helm-cmd-t" "helm-cmd-t/helm-cmd-t.el" (21473
;;;;;;  42916 0 0))
;;; Generated autoloads from helm-cmd-t/helm-cmd-t.el

(autoload 'helm-cmd-t "helm-cmd-t/helm-cmd-t" "\
Choose file from current repo.

With prefix arg C-u, run `helm-cmd-t-repos'.

\(fn &optional ARG)" t nil)

(autoload 'helm-cmd-t-repos "helm-cmd-t/helm-cmd-t" "\
Manage helm-cmd-t caches.

\(fn &optional PRESELECT-ROOT)" t nil)

(autoload 'helm-cmd-t-git-grep "helm-cmd-t/helm-cmd-t" "\
Do git grep.  Accessible as command or from the repos source.

Use C-U to narrow by extensions.

\(fn CACHE-BUFFER &optional GLOBS)" t nil)

;;;***

;;;### (autoloads (helm-other-buffer helm helm-debug-open-last-log
;;;;;;  helm-define-key-with-subkeys helm-multi-key-defun helm-define-multi-key)
;;;;;;  "helm/helm" "helm/helm.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm.el

(autoload 'helm-define-multi-key "helm/helm" "\
In KEYMAP, define key sequence KEY for function list FUNCTIONS.
Each function run sequentialy each time the key KEY is pressed.
If DELAY is specified switch back to initial function of FUNCTIONS list
after DELAY seconds.
The functions in FUNCTIONS list are functions with no args.
e.g
  (defun foo ()
    (message \"Run foo\"))
  (defun bar ()
    (message \"Run bar\"))
  (defun baz ()
    (message \"Run baz\"))

\(helm-define-multi-key global-map \"<f5> q\" '(foo bar baz) 2)

Each time \"<f5> q\" is pressed the next function is executed, if you wait
More than 2 seconds, next hit will run again the first function and so on.

\(fn KEYMAP KEY FUNCTIONS &optional DELAY)" nil nil)

(autoload 'helm-multi-key-defun "helm/helm" "\
Define NAME as a multi-key command running FUNS.
After DELAY seconds the FUNS list is reinitialised.
See `helm-define-multi-key'.

\(fn NAME DOCSTRING FUNS &optional DELAY)" nil t)

(put 'helm-multi-key-defun 'lisp-indent-function '2)

(autoload 'helm-define-key-with-subkeys "helm/helm" "\
Allow defining a KEY without having to type its prefix again on next calls.
Arg MAP is the keymap to use, SUBKEY is the initial long keybinding to
call COMMAND.
Arg OTHER-SUBKEYS is an unquoted alist specifying other short keybindings
to use once started.
e.g:

\(helm-define-key-with-subkeys global-map
      (kbd \"C-x v n\") ?n 'git-gutter:next-hunk ((?p . 'git-gutter:previous-hunk)))


In this example, `C-x v n' will run `git-gutter:next-hunk' subsequent hit on \"n\"
will run this command again and subsequent hit on \"p\" will run `git-gutter:previous-hunk'.

Arg MENU is a string to display in minibuffer to describe SUBKEY and OTHER-SUBKEYS.
Arg EXIT-FN specify a function to run on exit.

Any other keys pressed run their assigned command defined in MAP and exit the loop.

\(fn MAP KEY SUBKEY COMMAND &optional OTHER-SUBKEYS MENU EXIT-FN)" nil t)

(autoload 'helm-debug-open-last-log "helm/helm" "\
Open helm log file of last helm session.
If `helm-last-log-file' is nil, switch to `helm-debug-buffer' .

\(fn)" t nil)

(autoload 'helm "helm/helm" "\
Main function to execute helm sources.

Keywords supported:
:sources :input :prompt :resume :preselect
:buffer :keymap :default :history :allow-nest

Extra LOCAL-VARS keywords are supported, see below.

PLIST is a list like (:key1 val1 :key2 val2 ...) or
\(&optional sources input prompt resume
            preselect buffer keymap default history).

Basic keywords are the following:

:sources

A list of sources used for this session.  It also accepts a
symbol, interpreted as a variable of a helm source
i.e (a symbol can be passed instead of a list of sources).
It also accepts an alist representing a helm source, which is
detected by (assq 'name ANY-SOURCES).
NOTE: In this case the source is embedded in the helm command and
have no symbol name, so it is not reachable from outside.
It will be referenced in `helm-sources' as a whole alist.

:input

Temporary value of `helm-pattern', ie. initial input of minibuffer.

:prompt

Prompt other than \"pattern: \".

:resume

If t, Resurrect previously instance of `helm'.  Skip the initialization.
If 'noresume, this instance of `helm' cannot be resumed.

:preselect

Initially selected candidate.  Specified by exact candidate or a regexp.

:buffer

`helm-buffer' instead of *helm*.

:keymap

`helm-map' for current `helm' session.

:default

A default argument that will be inserted in minibuffer with \\<minibuffer-local-map>\\[next-history-element].
When nil or not present `thing-at-point' will be used instead.
If `helm-maybe-use-default-as-input' is non--nil display will be
updated using :default arg as input unless :input is specified,
which in this case will take precedence on :default
This is a string or a list, in this case the car of the list will
be used as initial default input, but you will be able to cycle in this
list with \\<minibuffer-local-map>\\[next-history-element].

:history

By default all minibuffer input is pushed to `minibuffer-history',
if an argument HISTORY is provided, input will be pushed to HISTORY.
History element should be a symbol.

:allow-nest

Allow running this helm command within a running helm session.

Of course, conventional arguments are supported, the two are same.

\(helm :sources sources :input input :prompt prompt :resume resume
       :preselect preselect :buffer buffer :keymap keymap :default default
       :history history)

and

\(helm sources input prompt resume preselect buffer keymap default history)

are the same.

However the use of non keyword args is deprecated and should not be used.

Other keywords are interpreted as local variables of this helm session.
The `helm-' prefix can be omitted.  For example,

\(helm :sources 'helm-source-buffers-list
       :buffer \"*buffers*\" :candidate-number-limit 10)

means starting helm session with `helm-source-buffers'
source in *buffers* buffer and set variable `helm-candidate-number-limit'
to 10 as session local variable.

\(fn &key SOURCES INPUT PROMPT RESUME PRESELECT BUFFER KEYMAP DEFAULT HISTORY ALLOW-NEST OTHER-LOCAL-VARS)" nil nil)

(autoload 'helm-other-buffer "helm/helm" "\
Simplified interface of `helm' with other `helm-buffer'.
Call `helm' with only ANY-SOURCES and ANY-BUFFER as args.

\(fn ANY-SOURCES ANY-BUFFER)" nil nil)

;;;***

;;;### (autoloads (helm-reset-adaptive-history) "helm/helm-adaptive"
;;;;;;  "helm/helm-adaptive.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-adaptive.el

(autoload 'helm-reset-adaptive-history "helm/helm-adaptive" "\
Delete all `helm-adaptive-history' and his file.
Useful when you have a old or corrupted `helm-adaptive-history-file'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-apt) "helm/helm-apt" "helm/helm-apt.el" (21473
;;;;;;  41674 0 0))
;;; Generated autoloads from helm/helm-apt.el

(autoload 'helm-apt "helm/helm-apt" "\
Preconfigured `helm' : frontend of APT package manager.
With a prefix arg reload cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-bbdb) "helm/helm-bbdb" "helm/helm-bbdb.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-bbdb.el

(autoload 'helm-bbdb "helm/helm-bbdb" "\
Preconfigured `helm' for BBDB.

Needs BBDB.

http://bbdb.sourceforge.net/

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-filtered-bookmarks helm-pp-bookmarks helm-bookmarks)
;;;;;;  "helm/helm-bookmark" "helm/helm-bookmark.el" (21473 41674
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-bookmark.el

(autoload 'helm-bookmarks "helm/helm-bookmark" "\
Preconfigured `helm' for bookmarks.

\(fn)" t nil)

(autoload 'helm-pp-bookmarks "helm/helm-bookmark" "\
Preconfigured `helm' for bookmarks (pretty-printed).

\(fn)" t nil)

(autoload 'helm-filtered-bookmarks "helm/helm-bookmark" "\
Preconfigured helm for bookmarks (filtered by category).
Optional source `helm-source-bookmark-addressbook' is loaded
only if external library addressbook-bookmark.el is available.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-buffers-list) "helm/helm-buffers" "helm/helm-buffers.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-buffers.el

(autoload 'helm-buffers-list "helm/helm-buffers" "\
Preconfigured `helm' to list buffers.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-simple-call-tree) "helm/helm-call-tree" "helm/helm-call-tree.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-call-tree.el

(autoload 'helm-simple-call-tree "helm/helm-call-tree" "\
Preconfigured `helm' for simple-call-tree. List function relationships.

Needs simple-call-tree.el.
http://www.emacswiki.org/cgi-bin/wiki/download/simple-call-tree.el

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-colors) "helm/helm-color" "helm/helm-color.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-color.el

(autoload 'helm-colors "helm/helm-color" "\
Preconfigured `helm' for color.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-M-x) "helm/helm-command" "helm/helm-command.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-command.el

(autoload 'helm-M-x "helm/helm-command" "\
Preconfigured `helm' for Emacs commands.
It is `helm' replacement of regular `M-x' `execute-extended-command'.

Unlike regular `M-x' emacs vanilla `execute-extended-command' command,
the prefix args if needed, are passed AFTER starting `helm-M-x'.

You can get help on each command by persistent action.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-configuration) "helm/helm-config" "helm/helm-config.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-config.el

(autoload 'helm-configuration "helm/helm-config" "\
Customize `helm'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-dabbrev) "helm/helm-dabbrev" "helm/helm-dabbrev.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-dabbrev.el

(autoload 'helm-dabbrev "helm/helm-dabbrev" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (helm-complex-command-history helm-timers helm-locate-library
;;;;;;  helm-manage-advice helm-apropos helm-lisp-completion-or-file-name-at-point
;;;;;;  helm-lisp-indent helm-complete-file-name-at-point helm-lisp-completion-at-point)
;;;;;;  "helm/helm-elisp" "helm/helm-elisp.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-elisp.el

(autoload 'helm-lisp-completion-at-point "helm/helm-elisp" "\
Helm lisp symbol completion at point.

\(fn)" t nil)

(autoload 'helm-complete-file-name-at-point "helm/helm-elisp" "\
Complete file name at point.

\(fn &optional FORCE)" t nil)

(autoload 'helm-lisp-indent "helm/helm-elisp" "\


\(fn)" t nil)

(autoload 'helm-lisp-completion-or-file-name-at-point "helm/helm-elisp" "\
Complete lisp symbol or filename at point.
Filename completion happen if string start after or between a double quote.

\(fn)" t nil)

(autoload 'helm-apropos "helm/helm-elisp" "\
Preconfigured helm to describe commands, functions, variables and faces.

\(fn)" t nil)

(autoload 'helm-manage-advice "helm/helm-elisp" "\
Preconfigured `helm' to disable/enable function advices.

\(fn)" t nil)

(autoload 'helm-locate-library "helm/helm-elisp" "\


\(fn)" t nil)

(autoload 'helm-timers "helm/helm-elisp" "\
Preconfigured `helm' for timers.

\(fn)" t nil)

(autoload 'helm-complex-command-history "helm/helm-elisp" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (helm-list-elisp-packages) "helm/helm-elisp-package"
;;;;;;  "helm/helm-elisp-package.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-elisp-package.el

(autoload 'helm-list-elisp-packages "helm/helm-elisp-package" "\


\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-elscreen) "helm/helm-elscreen" "helm/helm-elscreen.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-elscreen.el

(autoload 'helm-elscreen "helm/helm-elscreen" "\
Preconfigured helm to list elscreen.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-emms) "helm/helm-emms" "helm/helm-emms.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-emms.el

(autoload 'helm-emms "helm/helm-emms" "\
Preconfigured `helm' for emms sources.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-eshell-history helm-esh-pcomplete) "helm/helm-eshell"
;;;;;;  "helm/helm-eshell.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-eshell.el

(autoload 'helm-esh-pcomplete "helm/helm-eshell" "\
Preconfigured helm to provide helm completion in eshell.

\(fn)" t nil)

(autoload 'helm-eshell-history "helm/helm-eshell" "\
Preconfigured helm for eshell history.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-calcul-expression helm-eval-expression-with-eldoc
;;;;;;  helm-eval-expression) "helm/helm-eval" "helm/helm-eval.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-eval.el

(autoload 'helm-eval-expression "helm/helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'helm-eval-expression-with-eldoc "helm/helm-eval" "\
Preconfigured helm for `helm-source-evaluation-result' with `eldoc' support. 

\(fn)" t nil)

(autoload 'helm-calcul-expression "helm/helm-eval" "\
Preconfigured helm for `helm-source-calculation-result'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-run-external-command) "helm/helm-external"
;;;;;;  "helm/helm-external.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-external.el

(autoload 'helm-run-external-command "helm/helm-external" "\
Preconfigured `helm' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`helm-external-commands-list'.

\(fn PROGRAM)" t nil)

;;;***

;;;### (autoloads (helm-recentf helm-for-files helm-find-files helm-find
;;;;;;  helm-browse-project) "helm/helm-files" "helm/helm-files.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-files.el

(autoload 'helm-browse-project "helm/helm-files" "\
Browse files and see status of project with its vcs.
Only hg and git are supported for now.
Fall back to `helm-find-files' if directory is not under
control of one of those vcs.
Need dependencies:
<https://github.com/emacs-helm/helm-ls-git.git>
and
<https://github.com/emacs-helm/helm-mercurial-queue/blob/master/helm-ls-hg.el>.

\(fn)" t nil)

(autoload 'helm-find "helm/helm-files" "\
Preconfigured `helm' for the find shell command.

\(fn ARG)" t nil)

(autoload 'helm-find-files "helm/helm-files" "\
Preconfigured `helm' for helm implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `helm-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'helm-for-files "helm/helm-files" "\
Preconfigured `helm' for opening files.
Run all sources defined in `helm-for-files-preferred-list'.

\(fn)" t nil)

(autoload 'helm-recentf "helm/helm-files" "\
Preconfigured `helm' for `recentf'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-firefox-bookmarks) "helm/helm-firefox" "helm/helm-firefox.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-firefox.el

(autoload 'helm-firefox-bookmarks "helm/helm-firefox" "\
Preconfigured `helm' for firefox bookmark.
You will have to enable html bookmarks in firefox:
open about:config in firefox and double click on this line to enable value to true:

user_pref(\"browser.bookmarks.autoExportHTML\", false);

You should have now:

user_pref(\"browser.bookmarks.autoExportHTML\", true);

After closing firefox, you will be able to browse you bookmarks.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-ucs helm-select-xfont) "helm/helm-font" "helm/helm-font.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-font.el

(autoload 'helm-select-xfont "helm/helm-font" "\
Preconfigured `helm' to select Xfont.

\(fn)" t nil)

(autoload 'helm-ucs "helm/helm-font" "\
Preconfigured helm for `ucs-names' math symbols.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-gentoo) "helm/helm-gentoo" "helm/helm-gentoo.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-gentoo.el

(autoload 'helm-gentoo "helm/helm-gentoo" "\
Preconfigured `helm' for gentoo linux.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-do-pdfgrep helm-do-zgrep helm-do-grep helm-grep-mode-jump-other-window
;;;;;;  helm-grep-mode-jump-other-window-backward helm-grep-mode-jump-other-window-forward
;;;;;;  helm-grep-mode-jump helm-gm-precedent-file helm-gm-next-file
;;;;;;  helm-grep-mode helm-grep-run-save-buffer helm-goto-next-file
;;;;;;  helm-goto-precedent-file) "helm/helm-grep" "helm/helm-grep.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-grep.el

(autoload 'helm-goto-precedent-file "helm/helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-goto-next-file "helm/helm-grep" "\
Go to precedent file in helm grep/etags buffers.

\(fn)" t nil)

(autoload 'helm-grep-run-save-buffer "helm/helm-grep" "\
Run grep save results action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-grep-mode "helm/helm-grep" "\
Major mode to provide actions in helm grep saved buffer.

Special commands:
\\{helm-grep-mode-map}

\(fn)" t nil)

(autoload 'helm-gm-next-file "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-gm-precedent-file "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window-forward "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window-backward "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-grep-mode-jump-other-window "helm/helm-grep" "\


\(fn)" t nil)

(autoload 'helm-do-grep "helm/helm-grep" "\
Preconfigured helm for grep.
Contrarily to Emacs `grep', no default directory is given, but
the full path of candidates in ONLY.
That allow to grep different files not only in `default-directory' but anywhere
by marking them (C-<SPACE>). If one or more directory is selected
grep will search in all files of these directories.
You can also use wildcard in the base name of candidate.
If a prefix arg is given use the -r option of grep (recurse).
The prefix arg can be passed before or after start file selection.
See also `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-do-zgrep "helm/helm-grep" "\
Preconfigured helm for zgrep.

\(fn)" t nil)

(autoload 'helm-do-pdfgrep "helm/helm-grep" "\
Preconfigured helm for pdfgrep.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-describe-helm-attribute helm-semantic-help
;;;;;;  helm-color-help helm-imenu-help helm-M-x-help helm-el-package-help
;;;;;;  helm-apt-help helm-top-help helm-moccur-help helm-buffers-ido-virtual-help
;;;;;;  helm-esh-help helm-bookmark-help helm-ucs-help helm-etags-help
;;;;;;  helm-pdfgrep-help helm-grep-help helm-generic-file-help helm-read-file-name-help
;;;;;;  helm-ff-help helm-buffer-help helm-help) "helm/helm-help"
;;;;;;  "helm/helm-help.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-help.el

(autoload 'helm-help "helm/helm-help" "\
Help of `helm'.

\(fn)" t nil)

(autoload 'helm-buffer-help "helm/helm-help" "\
Help command for helm buffers.

\(fn)" t nil)

(autoload 'helm-ff-help "helm/helm-help" "\
Help command for `helm-find-files'.

\(fn)" t nil)

(autoload 'helm-read-file-name-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-generic-file-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-grep-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-pdfgrep-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-etags-help "helm/helm-help" "\
The help function for etags.

\(fn)" t nil)

(autoload 'helm-ucs-help "helm/helm-help" "\
Help command for `helm-ucs'.

\(fn)" t nil)

(autoload 'helm-bookmark-help "helm/helm-help" "\
Help command for bookmarks.

\(fn)" t nil)

(autoload 'helm-esh-help "helm/helm-help" "\
Help command for `helm-find-files-eshell-command-on-file'.

\(fn)" t nil)

(autoload 'helm-buffers-ido-virtual-help "helm/helm-help" "\
Help command for ido virtual buffers.

\(fn)" t nil)

(autoload 'helm-moccur-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-top-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-apt-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-el-package-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-M-x-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-imenu-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-color-help "helm/helm-help" "\


\(fn)" t nil)

(autoload 'helm-semantic-help "helm/helm-help" "\


\(fn)" t nil)

(defvar helm-buffer-mode-line-string '("Buffer(s)" "\\<helm-buffer-map>\\[helm-buffer-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct" "String displayed in mode-line in `helm-source-buffers-list'"))

(defvar helm-color-mode-line-string '("Colors" "\\<helm-color-map>\\[helm-color-help]:Help/\\[helm-color-run-insert-name]:Insert name/\\[helm-color-run-insert-rgb]:Insert RGB/with shift: Kill"))

(defvar helm-buffers-ido-virtual-mode-line-string '("Killed Buffer(s)" "\\<helm-buffers-ido-virtual-map>\\[helm-buffers-ido-virtual-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct" "String displayed in mode-line in `helm-source-buffers-list'"))

(defvar helm-ff-mode-line-string "\\<helm-find-files-map>\\[helm-ff-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct" "\
String displayed in mode-line in `helm-source-find-files'")

(defvar helm-read-file-name-mode-line-string "\\<helm-read-file-map>\\[helm-read-file-name-help]:Help \\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct" "\
String displayed in mode-line in `helm-source-find-files'.")

(defvar helm-generic-file-mode-line-string "\\<helm-generic-files-map>\\[helm-generic-file-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in Locate.")

(defvar helm-grep-mode-line-string "\\<helm-grep-map>\\[helm-grep-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-do-grep'.")

(defvar helm-pdfgrep-mode-line-string "\\<helm-pdfgrep-map>\\[helm-pdfgrep-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend" "\
String displayed in mode-line in `helm-do-pdfgrep'.")

(defvar helm-etags-mode-line-string "\\<helm-etags-map>\\[helm-etags-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct" "\
String displayed in mode-line in `helm-etags-select'.")

(defvar helm-ucs-mode-line-string "\\<helm-ucs-map>\\[helm-ucs-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct" "\
String displayed in mode-line in `helm-ucs'.")

(defvar helm-bookmark-mode-line-string '("Bookmark(s)" "\\<helm-bookmark-map>\\[helm-bookmark-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct") "\
String displayed in mode-line in `helm-source-buffers-list'")

(defvar helm-occur-mode-line "\\<helm-map>\\[helm-help]:Help \\<helm-occur-map>\\[helm-occur-run-query-replace-regexp]:Query replace regexp \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-moccur-mode-line "\\<helm-moccur-map>\\[helm-moccur-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-comp-read-mode-line "\\<helm-comp-read-map>\\[helm-cr-empty-string]:Empty \\<helm-map>\\[helm-help]:Help \\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct")

(defvar helm-top-mode-line "\\<helm-top-map>\\[helm-top-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-apt-mode-line "\\<helm-apt-map>\\[helm-apt-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-el-package-mode-line "\\<helm-el-package-map>\\[helm-el-package-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-M-x-mode-line "\\<helm-M-x-map>\\[helm-M-x-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-imenu-mode-line "\\<helm-imenu-map>\\[helm-imenu-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(defvar helm-semantic-mode-line "\\<helm-semantic-map>\\[helm-semantic-help]:Help \\<helm-map>\\[helm-select-action]:Act \\[helm-maybe-exit-minibuffer]/f1/f2/f-n:NthAct \\[helm-toggle-suspend-update]:Tog.suspend")

(autoload 'helm-describe-helm-attribute "helm/helm-help" "\
Display the full documentation of HELM-ATTRIBUTE.
HELM-ATTRIBUTE should be a symbol.

\(fn HELM-ATTRIBUTE)" t nil)

;;;***

;;;### (autoloads (helm-imenu) "helm/helm-imenu" "helm/helm-imenu.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-imenu.el

(autoload 'helm-imenu "helm/helm-imenu" "\
Preconfigured `helm' for `imenu'.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-info-at-point) "helm/helm-info" "helm/helm-info.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-info.el

(autoload 'helm-info-at-point "helm/helm-info" "\
Preconfigured `helm' for searching info at point.
With a prefix-arg insert symbol at point.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-locate helm-locate-read-file-name) "helm/helm-locate"
;;;;;;  "helm/helm-locate.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-locate.el

(autoload 'helm-locate-read-file-name "helm/helm-locate" "\


\(fn PROMPT)" nil nil)

(autoload 'helm-locate "helm/helm-locate" "\
Preconfigured `helm' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options and also `helm-locate-command'.

You can specify a local database with prefix argument ARG.
With two prefix arg, refresh the current local db or create it
if it doesn't exists.
Many databases can be used: navigate and mark them.
See also `helm-locate-with-db'.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`helm-locate-db-file-regexp'.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-man-woman) "helm/helm-man" "helm/helm-man.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-man.el

(autoload 'helm-man-woman "helm/helm-man" "\
Preconfigured `helm' for Man and Woman pages.
With a prefix arg reinitialize the cache.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-match-plugin-mode) "helm/helm-match-plugin"
;;;;;;  "helm/helm-match-plugin.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-match-plugin.el

(defvar helm-match-plugin-mode nil "\
Non-nil if Helm-Match-Plugin mode is enabled.
See the command `helm-match-plugin-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-match-plugin-mode'.")

(custom-autoload 'helm-match-plugin-mode "helm/helm-match-plugin" nil)

(autoload 'helm-match-plugin-mode "helm/helm-match-plugin" "\
Add more flexible regexp matching for helm.
See `helm-mp-matching-method' for the behavior of each method.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (helm-comint-input-ring helm-minibuffer-history
;;;;;;  helm-mini helm-stumpwm-commands helm-ratpoison-commands helm-eev-anchors
;;;;;;  helm-insert-latex-math helm-world-time helm-browse-menubar)
;;;;;;  "helm/helm-misc" "helm/helm-misc.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-misc.el

(autoload 'helm-browse-menubar "helm/helm-misc" "\
Helm interface to the menubar using lacarte.el.

\(fn)" t nil)

(autoload 'helm-world-time "helm/helm-misc" "\
Preconfigured `helm' to show world time.

\(fn)" t nil)

(autoload 'helm-insert-latex-math "helm/helm-misc" "\
Preconfigured helm for latex math symbols completion.

\(fn)" t nil)

(autoload 'helm-eev-anchors "helm/helm-misc" "\
Preconfigured `helm' for eev anchors.

\(fn)" t nil)

(autoload 'helm-ratpoison-commands "helm/helm-misc" "\
Preconfigured `helm' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'helm-stumpwm-commands "helm/helm-misc" "\


\(fn)" t nil)

(autoload 'helm-mini "helm/helm-misc" "\
Preconfigured `helm' lightweight version (buffer -> recentf).

\(fn)" t nil)

(autoload 'helm-minibuffer-history "helm/helm-misc" "\
Preconfigured `helm' for `minibuffer-history'.

\(fn)" t nil)

(autoload 'helm-comint-input-ring "helm/helm-misc" "\
Predefined `helm' that provide completion of `comint' history.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-mode helm-comp-read) "helm/helm-mode" "helm/helm-mode.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-mode.el

(autoload 'helm-comp-read "helm/helm-mode" "\
Read a string in the minibuffer, with helm completion.

It is helm `completing-read' equivalent.

- PROMPT is the prompt name to use.

- COLLECTION can be a list, vector, obarray or hash-table.
  It can be also a function that receives three arguments:
  the values string, predicate and t. See `all-completions' for more details.

Keys description:

- TEST: A predicate called with one arg i.e candidate.

- INITIAL-INPUT: Same as input arg in `helm'.

- PRESELECT: See preselect arg of `helm'.

- DEFAULT: This option is used only for compatibility with regular
  Emacs `completing-read' (Same as DEFAULT arg of `completing-read').

- BUFFER: Name of helm-buffer.

- MUST-MATCH: Candidate selected must be one of COLLECTION.

- REVERSE-HISTORY: When non--nil display history source after current
  source completion.

- REQUIRES-PATTERN: Same as helm attribute, default is 0.

- HISTORY: A list containing specific history, default is nil.
  When it is non--nil, all elements of HISTORY are displayed in
  a special source before COLLECTION.

- INPUT-HISTORY: A symbol. the minibuffer input history will be
  stored there, if nil or not provided, `minibuffer-history'
  will be used instead.

- CASE-FOLD: Same as `helm-case-fold-search'.

- DEL-INPUT: Boolean, when non--nil (default) remove the partial
  minibuffer input from HISTORY is present.

- PERSISTENT-ACTION: A function called with one arg i.e candidate.

- PERSISTENT-HELP: A string to document PERSISTENT-ACTION.

- MODE-LINE: A string or list to display in mode line.
  Default is `helm-comp-read-mode-line'.

- KEYMAP: A keymap to use in this `helm-comp-read'.
  (the keymap will be shared with history source)

- NAME: The name related to this local source.

- EXEC-WHEN-ONLY-ONE: Bound `helm-execute-action-at-once-if-one'
  to non--nil. (possibles values are t or nil).

- VOLATILE: Use volatile attribute (enabled by default).

- SORT: A predicate to give to `sort' e.g `string-lessp'.

- FC-TRANSFORMER: A `filtered-candidate-transformer' function.

- MARKED-CANDIDATES: If non--nil return candidate or marked candidates as a list.

- NOMARK: When non--nil don't allow marking candidates.

- ALISTP: (default is non--nil) See `helm-comp-read-get-candidates'.

- CANDIDATES-IN-BUFFER: when non--nil use a source build with
  `helm-candidates-in-buffer' which is much faster.
  Argument VOLATILE have no effect when CANDIDATES-IN-BUFFER is non--nil.

Any prefix args passed during `helm-comp-read' invocation will be recorded
in `helm-current-prefix-arg', otherwise if prefix args were given before
`helm-comp-read' invocation, the value of `current-prefix-arg' will be used.
That's mean you can pass prefix args before or after calling a command
that use `helm-comp-read' See `helm-M-x' for example.

\(fn PROMPT COLLECTION &key TEST INITIAL-INPUT DEFAULT PRESELECT (buffer \"*Helm Completions*\") MUST-MATCH REVERSE-HISTORY (requires-pattern 0) HISTORY INPUT-HISTORY (case-fold helm-comp-read-case-fold-search) (del-input t) (persistent-action nil) (persistent-help \"DoNothing\") (mode-line helm-comp-read-mode-line) (keymap helm-comp-read-map) (name \"Helm Completions\") CANDIDATES-IN-BUFFER EXEC-WHEN-ONLY-ONE QUIT-WHEN-NO-CAND (volatile t) SORT (fc-transformer (quote helm-cr-default-transformer)) MARKED-CANDIDATES NOMARK (alistp t))" nil nil)

(defvar helm-mode nil "\
Non-nil if Helm mode is enabled.
See the command `helm-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-mode'.")

(custom-autoload 'helm-mode "helm/helm-mode" nil)

(autoload 'helm-mode "helm/helm-mode" "\
Toggle generic helm completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use helm interface
when this mode is turned on.
However you can modify this behavior for functions of your choice
with `helm-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `helm-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `helm-completing-read-handlers-alist'
with a nil value.

Note: This mode is incompatible with Emacs23.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (helm-wikipedia-suggest helm-yahoo-suggest helm-google-suggest
;;;;;;  helm-surfraw) "helm/helm-net" "helm/helm-net.el" (21473 41674
;;;;;;  0 0))
;;; Generated autoloads from helm/helm-net.el

(autoload 'helm-surfraw "helm/helm-net" "\
Preconfigured `helm' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'helm-google-suggest "helm/helm-net" "\
Preconfigured `helm' for google search with google suggest.

\(fn)" t nil)

(autoload 'helm-yahoo-suggest "helm/helm-net" "\
Preconfigured `helm' for Yahoo searching with Yahoo suggest.

\(fn)" t nil)

(autoload 'helm-wikipedia-suggest "helm/helm-net" "\
Preconfigured `helm' for Wikipedia lookup with Wikipedia suggest.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-org-headlines helm-org-keywords) "helm/helm-org"
;;;;;;  "helm/helm-org.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-org.el

(autoload 'helm-org-keywords "helm/helm-org" "\
Preconfigured `helm' for org keywords.

\(fn)" t nil)

(autoload 'helm-org-headlines "helm/helm-org" "\
Preconfigured helm to show org headlines.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-multi-occur-from-isearch helm-multi-occur
;;;;;;  helm-occur-from-isearch helm-occur helm-regexp helm-moccur-mode
;;;;;;  helm-moccur-run-save-buffer helm-occur-match-plugin-mode)
;;;;;;  "helm/helm-regexp" "helm/helm-regexp.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-regexp.el

(defvar helm-occur-match-plugin-mode t "\
Non-nil if Helm-Occur-Match-Plugin mode is enabled.
See the command `helm-occur-match-plugin-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `helm-occur-match-plugin-mode'.")

(custom-autoload 'helm-occur-match-plugin-mode "helm/helm-regexp" nil)

(autoload 'helm-occur-match-plugin-mode "helm/helm-regexp" "\
Turn On/Off `helm-match-plugin-mode' only for `helm-m/occur'.

\(fn &optional ARG)" t nil)

(autoload 'helm-moccur-run-save-buffer "helm/helm-regexp" "\
Run grep save results action from `helm-do-grep-1'.

\(fn)" t nil)

(autoload 'helm-moccur-mode "helm/helm-regexp" "\
Major mode to provide actions in helm moccur saved buffer.

Special commands:
\\{helm-moccur-mode-map}

\(fn)" t nil)

(autoload 'helm-regexp "helm/helm-regexp" "\
Preconfigured helm to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'helm-occur "helm/helm-regexp" "\
Preconfigured helm for Occur.

\(fn)" t nil)

(autoload 'helm-occur-from-isearch "helm/helm-regexp" "\
Invoke `helm-occur' from isearch.

\(fn)" t nil)

(autoload 'helm-multi-occur "helm/helm-regexp" "\
Preconfigured helm for multi occur.

  BUFFERS is a list of buffers to search through.
With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling `helm-multi-occur'
or during the buffer selection.

\(fn BUFFERS)" t nil)

(autoload 'helm-multi-occur-from-isearch "helm/helm-regexp" "\
Invoke `helm-multi-occur' from isearch.

With a prefix arg, reverse the behavior of
`helm-moccur-always-search-in-current'.
The prefix arg can be set before calling
`helm-multi-occur-from-isearch' or during the buffer selection.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (helm-show-kill-ring helm-register helm-all-mark-rings
;;;;;;  helm-global-mark-ring helm-mark-ring) "helm/helm-ring" "helm/helm-ring.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-ring.el

(autoload 'helm-mark-ring "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-global-mark-ring "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'helm-all-mark-rings "helm/helm-ring" "\
Preconfigured `helm' for `helm-source-global-mark-ring' and `helm-source-mark-ring'.

\(fn)" t nil)

(autoload 'helm-register "helm/helm-ring" "\
Preconfigured `helm' for Emacs registers.

\(fn)" t nil)

(autoload 'helm-show-kill-ring "helm/helm-ring" "\
Preconfigured `helm' for `kill-ring'.
It is drop-in replacement of `yank-pop'.

First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-semantic-or-imenu helm-semantic) "helm/helm-semantic"
;;;;;;  "helm/helm-semantic.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-semantic.el

(autoload 'helm-semantic "helm/helm-semantic" "\
Preconfigured `helm' for `semantic'.

\(fn)" t nil)

(autoload 'helm-semantic-or-imenu "helm/helm-semantic" "\
Run `helm' with `semantic' or `imenu'.

If `semantic-mode' is active in the current buffer, then use
semantic for generating tags, otherwise fall back to `imenu'.
Fill in the symbol at point by default.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-xrandr-set helm-list-emacs-process helm-top
;;;;;;  helm-top-run-sort-by-user helm-top-run-sort-by-mem helm-top-run-sort-by-cpu
;;;;;;  helm-top-run-sort-by-com) "helm/helm-sys" "helm/helm-sys.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-sys.el

(autoload 'helm-top-run-sort-by-com "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-cpu "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-mem "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top-run-sort-by-user "helm/helm-sys" "\


\(fn)" t nil)

(autoload 'helm-top "helm/helm-sys" "\
Preconfigured `helm' for top command.

\(fn)" t nil)

(autoload 'helm-list-emacs-process "helm/helm-sys" "\
Preconfigured `helm' for emacs process.

\(fn)" t nil)

(autoload 'helm-xrandr-set "helm/helm-sys" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (helm-etags-select) "helm/helm-tags" "helm/helm-tags.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-tags.el

(autoload 'helm-etags-select "helm/helm-tags" "\
Preconfigured helm for etags.
If called with a prefix argument or if any of the tag files have
been modified, reinitialize cache.

This function aggregates three sources of tag files:

  1) An automatically located file in the parent directories, by `helm-etags-get-tag-file'.
  2) `tags-file-name', which is commonly set by `find-tag' command.
  3) `tags-table-list' which is commonly set by `visit-tags-table' command.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (helm-yank-text-at-point helm-w32-shell-execute-open-file
;;;;;;  helm-quit-and-find-file helm-display-all-sources helm-show-all-in-this-source-only)
;;;;;;  "helm/helm-utils" "helm/helm-utils.el" (21473 41674 0 0))
;;; Generated autoloads from helm/helm-utils.el

(autoload 'helm-show-all-in-this-source-only "helm/helm-utils" "\
Show only current source of this helm session with all its candidates.
With a numeric prefix arg show only the ARG number of candidates.

\(fn ARG)" t nil)

(autoload 'helm-display-all-sources "helm/helm-utils" "\
Display all sources previously hidden by `helm-set-source-filter'.

\(fn)" t nil)

(autoload 'helm-quit-and-find-file "helm/helm-utils" "\
Drop into `helm-find-files' from `helm'.
If current selection is a buffer or a file, `helm-find-files'
from its directory.

\(fn)" t nil)

(autoload 'helm-w32-shell-execute-open-file "helm/helm-utils" "\


\(fn FILE)" t nil)

(autoload 'helm-yank-text-at-point "helm/helm-utils" "\
Yank text at point in `helm-current-buffer' into minibuffer.
If `helm-yank-symbol-first' is non--nil the first yank
grabs the entire symbol.

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-w3m-bookmarks) "helm/helm-w3m" "helm/helm-w3m.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-w3m.el

(autoload 'helm-w3m-bookmarks "helm/helm-w3m" "\
Preconfigured `helm' for w3m bookmark.

Needs w3m and emacs-w3m.

http://w3m.sourceforge.net/
http://emacs-w3m.namazu.org/

\(fn)" t nil)

;;;***

;;;### (autoloads (helm-yaoddmuse-emacswiki-post-library helm-yaoddmuse-emacswiki-edit-or-view
;;;;;;  helm-yaoddmuse-cache-pages) "helm/helm-yaoddmuse" "helm/helm-yaoddmuse.el"
;;;;;;  (21473 41674 0 0))
;;; Generated autoloads from helm/helm-yaoddmuse.el

(autoload 'helm-yaoddmuse-cache-pages "helm/helm-yaoddmuse" "\
Fetch the list of files on emacswiki and create cache file.
If load is non--nil load the file and feed `yaoddmuse-pages-hash'.

\(fn &optional LOAD)" t nil)

(autoload 'helm-yaoddmuse-emacswiki-edit-or-view "helm/helm-yaoddmuse" "\
Preconfigured `helm' to edit or view EmacsWiki page.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'helm-yaoddmuse-emacswiki-post-library "helm/helm-yaoddmuse" "\
Preconfigured `helm' to post library to EmacsWiki.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

;;;***

;;;### (autoloads (js2-imenu-extras-mode js2-imenu-extras-setup)
;;;;;;  "js2-mode/js2-imenu-extras" "js2-mode/js2-imenu-extras.el"
;;;;;;  (21473 42718 0 0))
;;; Generated autoloads from js2-mode/js2-imenu-extras.el

(autoload 'js2-imenu-extras-setup "js2-mode/js2-imenu-extras" "\


\(fn)" nil nil)

(autoload 'js2-imenu-extras-mode "js2-mode/js2-imenu-extras" "\
Toggle Imenu support for frameworks and structural patterns.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (js2-mode js2-minor-mode) "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (21473 42718 0 0))
;;; Generated autoloads from js2-mode/js2-mode.el

(autoload 'js2-minor-mode "js2-mode/js2-mode" "\
Minor mode for running js2 as a background linter.
This allows you to use a different major mode for JavaScript editing,
such as `js-mode', while retaining the asynchronous error/warning
highlighting features of `js2-mode'.

\(fn &optional ARG)" t nil)

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

;;;***

;;;### (autoloads (magit-run-gitk magit-run-git-gui-blame magit-run-git-gui
;;;;;;  magit-add-change-log-entry-other-window magit-add-change-log-entry
;;;;;;  magit-init magit-branch-manager magit-wazzup magit-diff-stash
;;;;;;  magit-diff-unstaged magit-diff-staged magit-diff-working-tree
;;;;;;  magit-diff magit-interactive-resolve magit-save-index magit-cherry
;;;;;;  magit-reflog-head magit-reflog magit-file-log magit-log-long-ranged
;;;;;;  magit-log-long magit-log-ranged magit-log magit-bisect-run
;;;;;;  magit-bisect-skip magit-bisect-bad magit-bisect-good magit-bisect-reset
;;;;;;  magit-bisect-start magit-submodule-sync magit-submodule-init
;;;;;;  magit-submodule-update-init magit-submodule-update magit-stash-snapshot
;;;;;;  magit-stash magit-delete-tag magit-tag magit-commit-squash
;;;;;;  magit-commit-fixup magit-commit-reword magit-commit-extend
;;;;;;  magit-commit-amend magit-commit magit-push magit-push-tags
;;;;;;  magit-pull magit-remote-update magit-fetch-current magit-fetch
;;;;;;  magit-reset-working-tree magit-reset-head-hard magit-reset-head
;;;;;;  magit-interactive-rebase magit-rename-remote magit-remove-remote
;;;;;;  magit-add-remote magit-rename-branch magit-delete-branch
;;;;;;  magit-create-branch magit-checkout magit-merge-abort magit-merge
;;;;;;  magit-show magit-dired-jump magit-unstage-all magit-stage-all
;;;;;;  magit-status magit-show-commit magit-git-command) "magit/magit"
;;;;;;  "magit/magit.el" (21473 42476 0 0))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-git-command "magit/magit" "\
Execute a Git subcommand asynchronously, displaying the output.
With a prefix argument run Git in the root of the current
repository.  Non-interactively run Git in DIRECTORY with ARGS.

\(fn ARGS DIRECTORY)" t nil)

(autoload 'magit-show-commit "magit/magit" "\
Show information about COMMIT.

\(fn COMMIT &optional NOSELECT)" t nil)

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing DIR.
If DIR is not within a Git repository, offer to create a Git
repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git
control.  Two prefix arguments means to ignore `magit-repo-dirs'
when asking for user input.

Depending on option `magit-status-buffer-switch-function' the
status buffer is shown in another window (the default) or the
current window.  Non-interactively optional SWITCH-FUNCTION
can be used to override this.

\(fn DIR &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-stage-all "magit/magit" "\
Add all remaining changes in tracked files to staging area.
With a prefix argument, add remaining untracked files as well.
\('git add [-u] .').

\(fn &optional INCLUDING-UNTRACKED)" t nil)

(autoload 'magit-unstage-all "magit/magit" "\
Remove all changes from staging area.
\('git reset --mixed HEAD').

\(fn)" t nil)

(autoload 'magit-dired-jump "magit/magit" "\
Visit current item in dired.
With a prefix argument, visit in other window.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'magit-show "magit/magit" "\
Display and select a buffer containing FILE as stored in REV.

Insert the contents of FILE as stored in the revision REV into a
buffer.  Then select the buffer using `pop-to-buffer' or with a
prefix argument using `switch-to-buffer'.  Non-interactivity use
SWITCH-FUNCTION to switch to the buffer, if that is nil simply
return the buffer, without displaying it.

\(fn REV FILE &optional SWITCH-FUNCTION)" t nil)

(autoload 'magit-merge "magit/magit" "\
Merge REVISION into the current 'HEAD', leaving changes uncommitted.
With a prefix argument, skip editing the log message and commit.
\('git merge [--no-commit] REVISION').

\(fn REVISION &optional DO-COMMIT)" t nil)

(autoload 'magit-merge-abort "magit/magit" "\
Abort the current merge operation.

\(fn)" t nil)

(autoload 'magit-checkout "magit/magit" "\
Switch 'HEAD' to REVISION and update working tree.
Fails if working tree or staging area contain uncommitted changes.
If REVISION is a remote branch, offer to create a local tracking branch.
\('git checkout [-b] REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-create-branch "magit/magit" "\
Switch 'HEAD' to new BRANCH at revision PARENT and update working tree.
Fails if working tree or staging area contain uncommitted changes.
\('git checkout -b BRANCH REVISION').

\(fn BRANCH PARENT)" t nil)

(autoload 'magit-delete-branch "magit/magit" "\
Delete the BRANCH.
If the branch is the current one, offers to switch to `master' first.
With prefix, forces the removal even if it hasn't been merged.
Works with local or remote branches.
\('git branch [-d|-D] BRANCH' or 'git push <remote-part-of-BRANCH> :refs/heads/BRANCH').

\(fn BRANCH &optional FORCE)" t nil)

(autoload 'magit-rename-branch "magit/magit" "\
Rename branch OLD to NEW.
With prefix, forces the rename even if NEW already exists.
\('git branch [-m|-M] OLD NEW').

\(fn OLD NEW &optional FORCE)" t nil)

(autoload 'magit-add-remote "magit/magit" "\
Add the REMOTE and fetch it.
\('git remote add REMOTE URL').

\(fn REMOTE URL)" t nil)

(autoload 'magit-remove-remote "magit/magit" "\
Delete the REMOTE.
\('git remote rm REMOTE').

\(fn REMOTE)" t nil)

(autoload 'magit-rename-remote "magit/magit" "\
Rename remote OLD to NEW.
\('git remote rename OLD NEW').

\(fn OLD NEW)" t nil)

(autoload 'magit-interactive-rebase "magit/magit" "\
Start a git rebase -i session, old school-style.

\(fn COMMIT)" t nil)

(autoload 'magit-reset-head "magit/magit" "\
Switch 'HEAD' to REVISION, keeping prior working tree and staging area.
Any differences from REVISION become new changes to be committed.
With prefix argument, all uncommitted changes in working tree
and staging area are lost.
\('git reset [--soft|--hard] REVISION').

\(fn REVISION &optional HARD)" t nil)

(autoload 'magit-reset-head-hard "magit/magit" "\
Switch 'HEAD' to REVISION, losing all changes.
Uncomitted changes in both working tree and staging area are lost.
\('git reset --hard REVISION').

\(fn REVISION)" t nil)

(autoload 'magit-reset-working-tree "magit/magit" "\
Revert working tree and clear changes from staging area.
\('git reset --hard HEAD').

With a prefix arg, also remove untracked files.
With two prefix args, remove ignored files as well.

\(fn &optional ARG)" t nil)

(autoload 'magit-fetch "magit/magit" "\
Fetch from REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-fetch-current "magit/magit" "\
Run fetch for default remote.

If there is no default remote, ask for one.

\(fn)" t nil)

(autoload 'magit-remote-update "magit/magit" "\
Update all remotes.

\(fn)" t nil)

(autoload 'magit-pull "magit/magit" "\
Run git pull.

If there is no default remote, the user is prompted for one and
its values is saved with git config.  If there is no default
merge branch, the user is prompted for one and its values is
saved with git config.  With a prefix argument, the default
remote is not used and the user is prompted for a remote.  With
two prefix arguments, the default merge branch is not used and
the user is prompted for a merge branch.  Values entered by the
user because of prefix arguments are not saved with git config.

\(fn)" t nil)

(autoload 'magit-push-tags "magit/magit" "\
Push tags to a remote repository.

Push tags to the current branch's remote.  If that isn't set push
to \"origin\" or if that remote doesn't exit but only a single
remote is defined use that.  Otherwise or with a prefix argument
ask the user what remote to use.

\(fn)" t nil)

(autoload 'magit-push "magit/magit" "\
Push the current branch to a remote repository.

This command runs the `magit-push-remote' hook.  By default that
means running `magit-push-dwim'.  So unless you have customized
the hook this command behaves like this:

With a single prefix argument ask the user what branch to push
to.  With two or more prefix arguments also ask the user what
remote to push to.  Otherwise use the remote and branch as
configured using the Git variables `branch.<name>.remote' and
`branch.<name>.merge'.  If the former is undefined ask the user.
If the latter is undefined push without specifing the remote
branch explicitly.

Also see option `magit-set-upstream-on-push'.

\(fn)" t nil)

(autoload 'magit-commit "magit/magit" "\
Create a new commit on HEAD.
With a prefix argument amend to the commit at HEAD instead.
\('git commit [--amend]').

\(fn &optional AMENDP)" t nil)

(autoload 'magit-commit-amend "magit/magit" "\
Amend the last commit.
\('git commit --amend').

\(fn)" t nil)

(autoload 'magit-commit-extend "magit/magit" "\
Amend the last commit, without editing the message.
With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-extend-override-date' can be
used to inverse the meaning of the prefix argument.
\('git commit --no-edit --amend [--keep-date]').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-reword "magit/magit" "\
Reword the last commit, ignoring staged changes.

With a prefix argument do change the committer date, otherwise
don't.  The option `magit-commit-rewrite-override-date' can be
used to inverse the meaning of the prefix argument.

Non-interactively respect the optional OVERRIDE-DATE argument
and ignore the option.

\('git commit --only --amend').

\(fn &optional OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-fixup "magit/magit" "\
Create a fixup commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT)" t nil)

(autoload 'magit-commit-squash "magit/magit" "\
Create a squash commit.
With a prefix argument the user is always queried for the commit
to be fixed.  Otherwise the current or marked commit may be used
depending on the value of option `magit-commit-squash-commit'.
\('git commit [--no-edit] --fixup=COMMIT').

\(fn &optional COMMIT FIXUP)" t nil)

(autoload 'magit-tag "magit/magit" "\
Create a new tag with the given NAME at REV.
With a prefix argument annotate the tag.
\('git tag [--annotate] NAME REV').

\(fn NAME REV &optional ANNOTATE)" t nil)

(autoload 'magit-delete-tag "magit/magit" "\
Delete the tag with the given NAME.
\('git tag -d NAME').

\(fn NAME)" t nil)

(autoload 'magit-stash "magit/magit" "\
Create new stash of working tree and staging area named DESCRIPTION.
Working tree and staging area revert to the current 'HEAD'.
With prefix argument, changes in staging area are kept.
\('git stash save [--keep-index] DESCRIPTION')

\(fn DESCRIPTION)" t nil)

(autoload 'magit-stash-snapshot "magit/magit" "\
Create new stash of working tree and staging area; keep changes in place.
\('git stash save \"Snapshot...\"; git stash apply stash@{0}')

\(fn)" t nil)

(autoload 'magit-submodule-update "magit/magit" "\
Update the submodule of the current git repository.
With a prefix arg, do a submodule update --init.

\(fn &optional INIT)" t nil)

(autoload 'magit-submodule-update-init "magit/magit" "\
Update and init the submodule of the current git repository.

\(fn)" t nil)

(autoload 'magit-submodule-init "magit/magit" "\
Initialize the submodules.

\(fn)" t nil)

(autoload 'magit-submodule-sync "magit/magit" "\
Synchronizes submodule's remote URL configuration.

\(fn)" t nil)

(autoload 'magit-bisect-start "magit/magit" "\
Start a bisect session.

Bisecting a bug means to find the commit that introduced it.
This command starts such a bisect session by asking for a know
good and a bad commit.  To move the session forward use the
other actions from the bisect popup (\\<magit-status-mode-map>\\[magit-key-mode-popup-bisecting]).

\(fn BAD GOOD)" t nil)

(autoload 'magit-bisect-reset "magit/magit" "\
After bisecting cleanup bisection state and return to original HEAD.

\(fn)" t nil)

(autoload 'magit-bisect-good "magit/magit" "\
While bisecting, mark the current commit as good.
Use this after you have asserted that the commit does not contain
the bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-bad "magit/magit" "\
While bisecting, mark the current commit as bad.
Use this after you have asserted that the commit does contain the
bug in question.

\(fn)" t nil)

(autoload 'magit-bisect-skip "magit/magit" "\
While bisecting, skip the current commit.
Use this if for some reason the current commit is not a good one
to test.  This command lets Git choose a different one.

\(fn)" t nil)

(autoload 'magit-bisect-run "magit/magit" "\
Bisect automatically by running commands after each step.

\(fn CMDLINE)" t nil)

(autoload 'magit-log "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-log-long "magit/magit" "\


\(fn &optional RANGE)" t nil)

(autoload 'magit-log-long-ranged "magit/magit" "\


\(fn RANGE)" t nil)

(autoload 'magit-file-log "magit/magit" "\
Display the log for the currently visited file or another one.
With a prefix argument show the log graph.

\(fn FILE &optional USE-GRAPH)" t nil)

(autoload 'magit-reflog "magit/magit" "\
Display the reflog of the current branch.
With a prefix argument another branch can be chosen.

\(fn REF)" t nil)

(autoload 'magit-reflog-head "magit/magit" "\
Display the HEAD reflog.

\(fn)" t nil)

(autoload 'magit-cherry "magit/magit" "\
Show commits in a branch that are not merged in the upstream branch.

\(fn HEAD UPSTREAM)" t nil)

(autoload 'magit-save-index "magit/magit" "\
Add the content of current file as if it was the index.

\(fn)" t nil)

(autoload 'magit-interactive-resolve "magit/magit" "\
Resolve a merge conflict using Ediff.

\(fn FILE)" t nil)

(autoload 'magit-diff "magit/magit" "\
Show differences between two commits.
RANGE should be a range (A..B or A...B) but can also be a single
commit.  If one side of the range is omitted, then it defaults
to HEAD.  If just a commit is given, then changes in the working
tree relative to that commit are shown.

\(fn RANGE &optional WORKING ARGS)" t nil)

(autoload 'magit-diff-working-tree "magit/magit" "\
Show differences between a commit and the current working tree.

\(fn REV)" t nil)

(autoload 'magit-diff-staged "magit/magit" "\
Show differences between the index and the HEAD commit.

\(fn)" t nil)

(autoload 'magit-diff-unstaged "magit/magit" "\
Show differences between the current working tree and index.

\(fn)" t nil)

(autoload 'magit-diff-stash "magit/magit" "\
Show changes in a stash.
A Stash consist of more than just one commit.  This command uses
a special diff range so that the stashed changes actually were a
single commit.

\(fn STASH &optional NOSELECT)" t nil)

(autoload 'magit-wazzup "magit/magit" "\
Show a list of branches in a dedicated buffer.
Unlike in the buffer created by `magit-branch-manager' each
branch can be expanded to show a list of commits not merged
into the selected branch.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-manager "magit/magit" "\
Show a list of branches in a dedicated buffer.

\(fn)" t nil)

(autoload 'magit-init "magit/magit" "\
Create or reinitialize a Git repository.
Read directory name and initialize it as new Git repository.

If the directory is below an existing repository, then the user
has to confirm that a new one should be created inside; or when
the directory is the root of the existing repository, whether
it should be reinitialized.

Non-interactively DIRECTORY is always (re-)initialized.

\(fn DIRECTORY)" t nil)

(autoload 'magit-add-change-log-entry "magit/magit" "\
Find change log file and add date entry and item for current change.
This differs from `add-change-log-entry' (which see) in that
it acts on the current hunk in a Magit buffer instead of on
a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME OTHER-WINDOW)" t nil)

(autoload 'magit-add-change-log-entry-other-window "magit/magit" "\
Find change log file in other window and add entry and item.
This differs from `add-change-log-entry-other-window' (which see)
in that it acts on the current hunk in a Magit buffer instead of
on a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME)" t nil)

(autoload 'magit-run-git-gui "magit/magit" "\
Run `git gui' for the current git repository.

\(fn)" t nil)

(autoload 'magit-run-git-gui-blame "magit/magit" "\
Run `git gui blame' on the given FILENAME and COMMIT.
Interactively run it for the current file and the HEAD, with a
prefix or when the current file cannot be determined let the user
choose.  When the current buffer is visiting FILENAME instruct
blame to center around the line point is on.

\(fn COMMIT FILENAME &optional LINENUM)" t nil)

(autoload 'magit-run-gitk "magit/magit" "\
Run Gitk for the current git repository.
Without a prefix argument run `gitk --all', with
a prefix argument run gitk without any arguments.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads (magit-blame-mode) "magit/magit-blame" "magit/magit-blame.el"
;;;;;;  (21473 42476 0 0))
;;; Generated autoloads from magit/magit-blame.el

(autoload 'magit-blame-mode "magit/magit-blame" "\
Display blame information inline.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "magit/magit-key-mode" "magit/magit-key-mode.el"
;;;;;;  (21473 42476 0 0))
;;; Generated autoloads from magit/magit-key-mode.el

(defvar magit-key-mode-groups '((dispatch (actions ("b" "Branching" magit-key-mode-popup-branching) ("B" "Bisecting" magit-key-mode-popup-bisecting) ("c" "Committing" magit-key-mode-popup-committing) ("d" "Diff worktree" magit-diff-working-tree) ("D" "Diff" magit-diff) ("f" "Fetching" magit-key-mode-popup-fetching) ("F" "Pulling" magit-key-mode-popup-pulling) ("g" "Refresh Buffers" magit-refresh-all) ("l" "Logging" magit-key-mode-popup-logging) ("m" "Merging" magit-key-mode-popup-merging) ("M" "Remoting" magit-key-mode-popup-remoting) ("P" "Pushing" magit-key-mode-popup-pushing) ("o" "Submoduling" magit-key-mode-popup-submodule) ("r" "Rewriting" magit-key-mode-popup-rewriting) ("R" "Rebasing" magit-rebase-step) ("s" "Show Status" magit-status) ("S" "Stage all" magit-stage-all) ("t" "Tagging" magit-key-mode-popup-tagging) ("U" "Unstage all" magit-unstage-all) ("v" "Show Commit" magit-show-commit) ("V" "Show File" magit-show) ("w" "Wazzup" magit-wazzup) ("X" "Reset worktree" magit-reset-working-tree) ("y" "Cherry" magit-cherry) ("z" "Stashing" magit-key-mode-popup-stashing) ("!" "Running" magit-key-mode-popup-running) ("$" "Show Process" magit-display-process))) (logging (man-page "git-log") (actions ("l" "Short" magit-log) ("L" "Long" magit-log-long) ("h" "Head Reflog" magit-reflog-head) ("f" "File log" magit-file-log) ("rl" "Ranged short" magit-log-ranged) ("rL" "Ranged long" magit-log-long-ranged) ("rh" "Reflog" magit-reflog)) (switches ("-m" "Only merge commits" "--merges") ("-s" "No merge commits" "--no-merges") ("-do" "Date Order" "--date-order") ("-f" "First parent" "--first-parent") ("-i" "Case insensitive patterns" "-i") ("-pr" "Pickaxe regex" "--pickaxe-regex") ("-g" "Show Graph" "--graph") ("-n" "Name only" "--name-only") ("-am" "All match" "--all-match") ("-al" "All" "--all")) (arguments ("=r" "Relative" "--relative=" read-directory-name) ("=c" "Committer" "--committer=" read-from-minibuffer) ("=>" "Since" "--since=" read-from-minibuffer) ("=<" "Before" "--before=" read-from-minibuffer) ("=a" "Author" "--author=" read-from-minibuffer) ("=g" "Grep messages" "--grep=" read-from-minibuffer) ("=G" "Grep patches" "-G" read-from-minibuffer) ("=L" "Trace evolution of line range [long log only]" "-L" magit-read-file-trace) ("=s" "Pickaxe search" "-S" read-from-minibuffer) ("=b" "Branches" "--branches=" read-from-minibuffer) ("=R" "Remotes" "--remotes=" read-from-minibuffer))) (running (actions ("!" "Git Subcommand (from root)" magit-git-command-topdir) (":" "Git Subcommand (from pwd)" magit-git-command) ("g" "Git Gui" magit-run-git-gui) ("k" "Gitk" magit-run-gitk))) (fetching (man-page "git-fetch") (actions ("f" "Current" magit-fetch-current) ("a" "All" magit-remote-update) ("o" "Other" magit-fetch)) (switches ("-p" "Prune" "--prune"))) (pushing (man-page "git-push") (actions ("P" "Push" magit-push) ("t" "Push tags" magit-push-tags)) (switches ("-f" "Force" "--force") ("-d" "Dry run" "-n") ("-u" "Set upstream" "-u"))) (pulling (man-page "git-pull") (actions ("F" "Pull" magit-pull)) (switches ("-f" "Force" "--force") ("-r" "Rebase" "--rebase"))) (branching (man-page "git-branch") (actions ("v" "Branch manager" magit-branch-manager) ("b" "Checkout" magit-checkout) ("c" "Create" magit-create-branch) ("r" "Rename" magit-rename-branch) ("k" "Delete" magit-delete-branch)) (switches ("-t" "Set upstream configuration" "--track") ("-m" "Merged to HEAD" "--merged") ("-M" "Merged to master" "--merged=master") ("-n" "Not merged to HEAD" "--no-merged") ("-N" "Not merged to master" "--no-merged=master")) (arguments ("=c" "Contains" "--contains=" magit-read-rev-with-default) ("=m" "Merged" "--merged=" magit-read-rev-with-default) ("=n" "Not merged" "--no-merged=" magit-read-rev-with-default))) (remoting (man-page "git-remote") (actions ("v" "Remote manager" magit-branch-manager) ("a" "Add" magit-add-remote) ("r" "Rename" magit-rename-remote) ("k" "Remove" magit-remove-remote))) (tagging (man-page "git-tag") (actions ("t" "Create" magit-tag) ("k" "Delete" magit-delete-tag)) (switches ("-a" "Annotate" "--annotate") ("-f" "Force" "--force") ("-s" "Sign" "--sign"))) (stashing (man-page "git-stash") (actions ("v" "View" magit-diff-stash) ("z" "Save" magit-stash) ("s" "Snapshot" magit-stash-snapshot) ("a" "Apply" magit-stash-apply) ("p" "Pop" magit-stash-pop) ("k" "Drop" magit-stash-drop)) (switches ("-k" "Keep index" "--keep-index") ("-u" "Include untracked files" "--include-untracked") ("-a" "Include all files" "--all"))) (committing (man-page "git-commit") (actions ("c" "Commit" magit-commit) ("a" "Amend" magit-commit-amend) ("e" "Extend" magit-commit-extend) ("r" "Reword" magit-commit-reword) ("f" "Fixup" magit-commit-fixup) ("s" "Squash" magit-commit-squash)) (switches ("-a" "Stage all modified and deleted files" "--all") ("-e" "Allow empty commit" "--allow-empty") ("-v" "Show diff of changes to be committed" "--verbose") ("-n" "Bypass git hooks" "--no-verify") ("-s" "Add Signed-off-by line" "--signoff") ("-R" "Claim authorship and reset author date" "--reset-author")) (arguments ("=A" "Override the author" "--author=" read-from-minibuffer) ("=S" "Sign using gpg" "--gpg-sign=" magit-read-gpg-secret-key))) (merging (man-page "git-merge") (actions ("m" "Merge" magit-merge) ("A" "Abort" magit-merge-abort)) (switches ("-ff" "Fast-forward only" "--ff-only") ("-nf" "No fast-forward" "--no-ff") ("-sq" "Squash" "--squash")) (arguments ("-st" "Strategy" "--strategy=" read-from-minibuffer))) (rewriting (actions ("b" "Begin" magit-rewrite-start) ("s" "Stop" magit-rewrite-stop) ("a" "Abort" magit-rewrite-abort) ("f" "Finish" magit-rewrite-finish) ("d" "Diff pending" magit-rewrite-diff-pending) ("*" "Set unused" magit-rewrite-set-unused) ("." "Set used" magit-rewrite-set-used))) (apply-mailbox (man-page "git-am") (actions ("J" "Apply Mailbox" magit-apply-mailbox)) (switches ("-s" "add a Signed-off-by line to the commit message" "--signoff") ("-3" "allow fall back on 3way merging if needed" "--3way") ("-k" "pass -k flag to git-mailinfo" "--keep") ("-c" "strip everything before a scissors line" "--scissors") ("-p" "pass it through git-apply" "-p") ("-r" "override error message when patch failure occurs" "--resolvemsg") ("-d" "lie about committer date" "--committer-date-is-author-date") ("-D" "use current timestamp for author date" "--ignore-date") ("-b" "pass -b flag to git-mailinfo" "--keep-non-patch")) (arguments ("=p" "format the patch(es) are in" "--patch-format=" read-from-minibuffer))) (submodule (man-page "git-submodule") (actions ("u" "Update" magit-submodule-update) ("b" "Both update and init" magit-submodule-update-init) ("i" "Init" magit-submodule-init) ("s" "Sync" magit-submodule-sync))) (bisecting (man-page "git-bisect") (actions ("b" "Bad" magit-bisect-bad) ("g" "Good" magit-bisect-good) ("k" "Skip" magit-bisect-skip) ("r" "Reset" magit-bisect-reset) ("s" "Start" magit-bisect-start) ("u" "Run" magit-bisect-run))) (diff-options (actions ("s" "Set" magit-set-diff-options) ("d" "Set default" magit-set-default-diff-options) ("c" "Save default" magit-save-default-diff-options) ("r" "Reset to default" magit-reset-diff-options) ("h" "Toggle Hunk Refinement" magit-diff-toggle-refine-hunk)) (switches ("-m" "Show smallest possible diff" "--minimal") ("-p" "Use patience diff algorithm" "--patience") ("-h" "Use histogram diff algorithm" "--histogram") ("-b" "Ignore whitespace changes" "--ignore-space-change") ("-w" "Ignore all whitespace" "--ignore-all-space") ("-W" "Show surrounding functions" "--function-context")))) "\
Holds the key, help, function mapping for the log-mode.
If you modify this make sure you reset `magit-key-mode-keymaps'
to nil.")
 (mapc (lambda (g) (eval `(autoload ',(intern (concat "magit-key-mode-popup-" (symbol-name (car g)))) "magit-key-mode" ,(concat "Key menu for " (symbol-name (car g))) t))) magit-key-mode-groups)

;;;***

;;;### (autoloads (turn-on-magit-stgit magit-stgit-mode magit-stgit-show
;;;;;;  magit-stgit-goto magit-stgit-discard magit-stgit-rebase magit-stgit-repair
;;;;;;  magit-stgit-refresh) "magit/magit-stgit" "magit/magit-stgit.el"
;;;;;;  (21473 42476 0 0))
;;; Generated autoloads from magit/magit-stgit.el

(autoload 'magit-stgit-refresh "magit/magit-stgit" "\
Refresh a StGit patch.

\(fn &optional PATCH)" t nil)

(autoload 'magit-stgit-repair "magit/magit-stgit" "\
Repair StGit metadata if branch was modified with git commands.
In the case of Git commits these will be imported as new patches
into the series.

\(fn)" t nil)

(autoload 'magit-stgit-rebase "magit/magit-stgit" "\
Rebase a StGit patch series.

\(fn)" t nil)

(autoload 'magit-stgit-discard "magit/magit-stgit" "\
Discard a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-goto "magit/magit-stgit" "\
Set PATCH as target of StGit push and pop operations.

\(fn PATCH)" nil nil)

(autoload 'magit-stgit-show "magit/magit-stgit" "\
Show diff of a StGit patch.

\(fn PATCH)" t nil)

(autoload 'magit-stgit-mode "magit/magit-stgit" "\
StGit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-stgit "magit/magit-stgit" "\
Unconditionally turn on `magit-stgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-svn magit-svn-mode magit-svn-fetch-externals
;;;;;;  magit-svn-remote-update magit-svn-dcommit magit-svn-rebase
;;;;;;  magit-svn-create-tag magit-svn-create-branch magit-svn-find-rev)
;;;;;;  "magit/magit-svn" "magit/magit-svn.el" (21473 42476 0 0))
;;; Generated autoloads from magit/magit-svn.el

(autoload 'magit-svn-find-rev "magit/magit-svn" "\
Find commit for svn REVISION in BRANCH.

\(fn REV &optional BRANCH)" t nil)

(autoload 'magit-svn-create-branch "magit/magit-svn" "\
Create svn branch NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-create-tag "magit/magit-svn" "\
Create svn tag NAME.

\(fn NAME)" t nil)

(autoload 'magit-svn-rebase "magit/magit-svn" "\
Run git-svn rebase.

\(fn)" t nil)

(autoload 'magit-svn-dcommit "magit/magit-svn" "\
Run git-svn dcommit.

\(fn)" t nil)

(autoload 'magit-svn-remote-update "magit/magit-svn" "\
Run git-svn fetch.

\(fn)" t nil)

(autoload 'magit-svn-fetch-externals "magit/magit-svn" "\
Loops through all external repos found by `magit-svn-external-directories'
   and runs git svn fetch, and git svn rebase on each of them.

\(fn)" t nil)

(autoload 'magit-svn-mode "magit/magit-svn" "\
SVN support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-svn "magit/magit-svn" "\
Unconditionally turn on `magit-svn-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (turn-on-magit-topgit magit-topgit-mode) "magit/magit-topgit"
;;;;;;  "magit/magit-topgit.el" (21473 42476 0 0))
;;; Generated autoloads from magit/magit-topgit.el

(autoload 'magit-topgit-mode "magit/magit-topgit" "\
Topgit support for Magit

\(fn &optional ARG)" t nil)

(autoload 'turn-on-magit-topgit "magit/magit-topgit" "\
Unconditionally turn on `magit-topgit-mode'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (global-magit-wip-save-mode magit-wip-save-mode)
;;;;;;  "magit/magit-wip" "magit/magit-wip.el" (21473 42476 0 0))
;;; Generated autoloads from magit/magit-wip.el

(autoload 'magit-wip-save-mode "magit/magit-wip" "\
Magit support for committing to a work-in-progress ref.

When this minor mode is turned on and a file is saved inside a
writable git repository then it is also committed to a special
work-in-progress ref.

\(fn &optional ARG)" t nil)

(defvar global-magit-wip-save-mode nil "\
Non-nil if Global-Magit-Wip-Save mode is enabled.
See the command `global-magit-wip-save-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-magit-wip-save-mode'.")

(custom-autoload 'global-magit-wip-save-mode "magit/magit-wip" nil)

(autoload 'global-magit-wip-save-mode "magit/magit-wip" "\
Toggle Magit-Wip-Save mode in all buffers.
With prefix ARG, enable Global-Magit-Wip-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-Save mode is enabled in all buffers where
`turn-on-magit-wip-save' would do it.
See `magit-wip-save-mode' for more information on Magit-Wip-Save mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (paredit-mode) "paredit/paredit" "paredit/paredit.el"
;;;;;;  (21472 61738 0 0))
;;; Generated autoloads from paredit/paredit.el

(autoload 'paredit-mode "paredit/paredit" "\
Minor mode for pseudo-structurally editing Lisp code.
With a prefix argument, enable Paredit Mode even if there are
  unbalanced parentheses in the buffer.
Paredit behaves badly if parentheses are unbalanced, so exercise
  caution when forcing Paredit Mode to be enabled, and consider
  fixing unbalanced parentheses instead.
\\<paredit-mode-map>

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (pkg-info-version-info pkg-info-package-version
;;;;;;  pkg-info-defining-library-version pkg-info-defining-library-original-version
;;;;;;  pkg-info-library-version pkg-info-library-original-version)
;;;;;;  "pkg-info/pkg-info" "pkg-info/pkg-info.el" (21472 61282 0
;;;;;;  0))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads (popwin:messages popwin:find-file-tail popwin:find-file
;;;;;;  popwin:popup-buffer-tail popwin:one-window popwin:universal-display
;;;;;;  popwin:pop-to-buffer popwin:display-buffer popwin:popup-buffer)
;;;;;;  "popwin/popwin" "popwin/popwin.el" (21473 42617 0 0))
;;; Generated autoloads from popwin/popwin.el

(autoload 'popwin:popup-buffer "popwin/popwin" "\
Show BUFFER in a popup window and return the popup window. If
NOSELECT is non-nil, the popup window will not be selected. If
STICK is non-nil, the popup window will be stuck. If TAIL is
non-nil, the popup window will show the last contents. Calling
`popwin:popup-buffer' during `popwin:popup-buffer' is allowed. In
that case, the buffer of the popup window will be replaced with
BUFFER.

\(fn BUFFER &key (width popwin:popup-window-width) (height popwin:popup-window-height) (position popwin:popup-window-position) NOSELECT DEDICATED STICK TAIL)" t nil)

(autoload 'popwin:display-buffer "popwin/popwin" "\
Display BUFFER-OR-NAME, if possible, in a popup window, or as
usual. This function can be used as a value of
`display-buffer-function'.

\(fn BUFFER-OR-NAME &optional NOT-THIS-WINDOW)" t nil)

(autoload 'popwin:pop-to-buffer "popwin/popwin" "\
Same as `pop-to-buffer' except that this function will use
`popwin:display-buffer-1' instead of `display-buffer'.

\(fn BUFFER &optional OTHER-WINDOW NORECORD)" t nil)

(autoload 'popwin:universal-display "popwin/popwin" "\
Call the following command interactively with letting
`popwin:special-display-config' be
`popwin:universal-display-config'. This wil be useful when
displaying buffers in popup windows temporarily.

\(fn)" t nil)

(autoload 'popwin:one-window "popwin/popwin" "\
Delete other window than the popup window. C-g restores the
original window configuration.

\(fn)" t nil)

(autoload 'popwin:popup-buffer-tail "popwin/popwin" "\
Same as `popwin:popup-buffer' except that the buffer will be
`recenter'ed at the bottom.

\(fn &rest SAME-AS-POPWIN:POPUP-BUFFER)" t nil)

(autoload 'popwin:find-file "popwin/popwin" "\
Edit file FILENAME with popup window by `popwin:popup-buffer'.

\(fn FILENAME &optional WILDCARDS)" t nil)

(autoload 'popwin:find-file-tail "popwin/popwin" "\
Edit file FILENAME with popup window by
`popwin:popup-buffer-tail'.

\(fn FILE &optional WILDCARD)" t nil)

(autoload 'popwin:messages "popwin/popwin" "\
Display *Messages* buffer in a popup window.

\(fn)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (21473 42225 0 0))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (21473 41889 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-complete-etags/auto-complete-etags.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "cider/cider-client.el"
;;;;;;  "cider/cider-doc.el" "cider/cider-eldoc.el" "cider/cider-interaction.el"
;;;;;;  "cider/cider-repl.el" "cider/cider-stacktrace.el" "cider/cider-test.el"
;;;;;;  "cider/cider-util.el" "cider/nrepl-client.el" "clojure-mode/clojure-mode-extra-font-locking.el"
;;;;;;  "color-theme/color-theme-autoloads.el" "dash/dash-functional.el"
;;;;;;  "dash/dash.el" "el-get/el-get-autoloads.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el" "epl/epl.el" "evil-nerd-commenter/evil-nerd-commenter-pkg.el"
;;;;;;  "evil/evil-commands.el" "evil/evil-common.el" "evil/evil-digraphs.el"
;;;;;;  "evil/evil-ex.el" "evil/evil-integration.el" "evil/evil-macros.el"
;;;;;;  "evil/evil-maps.el" "evil/evil-pkg.el" "evil/evil-repeat.el"
;;;;;;  "evil/evil-search.el" "evil/evil-states.el" "evil/evil-tests.el"
;;;;;;  "evil/evil-types.el" "evil/evil-vars.el" "evil/evil.el" "fuzzy/fuzzy.el"
;;;;;;  "helm-cmd-t/helm-C-x-b.el" "helm-cmd-t/helm-cmd-t-find.el"
;;;;;;  "helm/helm-aliases.el" "helm/helm-pkg.el" "helm/helm-plugin.el"
;;;;;;  "magit/magit-autoloads.el" "magit/magit-version.el" "popup/popup.el"
;;;;;;  "popwin/misc/popwin-browse-kill-ring.el" "popwin/misc/popwin-pp.el"
;;;;;;  "popwin/misc/popwin-term.el" "popwin/misc/popwin-w3m.el"
;;;;;;  "popwin/misc/popwin-yatex.el" "yasnippet/yasnippet-debug.el"
;;;;;;  "yasnippet/yasnippet-tests.el") (21473 42918 146368 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
