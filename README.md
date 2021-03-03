## My emacs configs

Monokai theme put into your ~/.emacs.d folder. 
[Download monokai theme](https://raw.githubusercontent.com/hmetgundogdu/monokai-emacs/master/monokai-theme.el)

### .emacs file
``` lisp
(package-initialize)

(custom-set-variables
 '(custom-enabled-themes (quote (monokai)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(global-hl-line-mode 1)
(set-face-background 'hl-line "#1b1b1c")
(set-face-foreground 'highlight nil)
(set-cursor-color "#42f44b")
(setq-default cursor-type 'box) 
(setq ring-bell-function 'ignore)

; Start window as fullscreen
(toggle-frame-fullscreen)
(setq inhibit-startup-screen t)
; Invisible menu bar
(menu-bar-mode -1)
; Move mouse cursor out of the window
(mouse-avoidance-mode)
(setq make-pointer-invisible t)
; selected text deletes when you type something
(delete-selection-mode 1)
; this automatically reverts the buffer when its visited file changes on disk
(auto-revert-mode 1)
; disables backup files
(setq make-backup-files nil)
(setq tab-always-indent 'complete)
(setq-default truncate-lines t)
(setq scroll-step            1
      scroll-conservatively  10000)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(add-hook 'c-mode-common-hook
	  (lambda()
	    (local-set-key (kbd "C-c <right>") 'hs-show-block)
	    (local-set-key (kbd "C-c <left>")  'hs-hide-block)
	    (local-set-key (kbd "C-c <up>")    'hs-hide-all)
	    (local-set-key (kbd "C-c <down>")  'hs-show-all)
	    (hs-minor-mode t)
	    (hs-hide-all)
	    )
	  )

(put 'downcase-region 'disabled nil)

; show line numbers
(global-linum-mode t)

; auto refresh package list
(when (not package-archive-contents)
  (package-refresh-contents))

; startup path for find command
(if (eq system-type "gnu/linux")
    (cd "~/")
  (cd "~/../../")
  )

(put 'upcase-region 'disabled nil)
; save session
(desktop-save-mode 1)
```
