
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("065da018725a9c72ee0358cb8e52bedfd402b222b971ba39b21a17bba84b0626" default)))
 '(package-selected-packages (quote (neotree eproject hacker-typer)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 85 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(global-hl-line-mode 1)
(set-face-background 'hl-line "#1b1b1c")
(set-face-foreground 'highlight nil)


; My shortcuts

(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to lower window

;(global-set-key (kbd "C-x t") 'neotree)     


;(global-set-key (kbd "<C-up>") 'shrink-window)
;(global-set-key (kbd "<C-down>") 'enlarge-window)
;(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
;(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

; My shortcuts

(toggle-frame-fullscreen)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(split-window-horizontally)
(mouse-avoidance-mode)
(delete-selection-mode 1)
;(neotree)

; Startup window configrations

;(split-window-horizontally)

;(split-window-below)
;(windmove-down)
;(ansi-term "/usr/bin/zsh")
;(windmove-up)
;(find-file "~/")
