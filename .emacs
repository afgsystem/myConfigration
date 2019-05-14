(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("2925ed246fb757da0e8784ecf03b9523bccd8b7996464e587b081037e0e98001" "37f5bfb96b6755ee6aa31aea9efb1e59b43ab173f86959c097b1086bcba51d03" "065da018725a9c72ee0358cb8e52bedfd402b222b971ba39b21a17bba84b0626" default)))
 '(package-selected-packages
   (quote
    (smooth-scroll web-beautify js2-mode alert neotree eproject hacker-typer)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 90 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(global-hl-line-mode 1)
(set-face-background 'hl-line "#1b1b1c")
(set-face-foreground 'highlight nil)
(set-cursor-color "#42f44b")
(setq-default cursor-type 'box) 
(setq ring-bell-function 'ignore)

					; My shortcuts

(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window

					;(global-set-key (kbd "<C-up>") 'shrink-window)
					;(global-set-key (kbd "<C-down>") 'enlarge-window)
					;(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
					;(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

					; Startup methods
(toggle-frame-fullscreen)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(split-window-horizontally)
(mouse-avoidance-mode)
(setq make-pointer-invisible t)
(delete-selection-mode 1)
(auto-revert-mode 1)
(setq make-backup-files nil)
(setq tab-always-indent 'complete)
(setq-default truncate-lines t)
(setq scroll-step            1
      scroll-conservatively  10000)

					; Package
(require 'multiple-cursors)
(require 'smooth-scroll)

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

;(smooth-scroll-mode t)
(global-linum-mode t)

(when (not package-archive-contents)
  (package-refresh-contents))

(if (eq system-type "gnu/linux")
    (cd "~/")
  (cd "~/../../")
  )
(put 'upcase-region 'disabled nil)
					; (defun on-mark-change ()
					;   "When mark set change cursor color."
					;   (interactive)
					;   (if (eq mark-active t)
					;       (progn
					; 	(set-cursor-color defaultCursorColor)
					; 	(set-mark-command t)
					; 	)
					;     (progn
					;       (set-cursor-color "#ffda23")
					;       (set-mark-command nil)
					;       )
					;     )
					;   )

					;(global-set-key (kbd "C-SPC") 'on-mark-change)
					;(global-set-key (kbd "S") 'on-mark-change)
