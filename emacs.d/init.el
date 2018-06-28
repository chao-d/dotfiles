;; initial frame size

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq initial-frame-alist '((top . 0) (left . 0) (width . 112) (height . 36)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(font-lock-global-modes (quote (not speedbar-mode)))
 '(package-selected-packages (quote (sml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d3743" :foreground "#e1e1e0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :foundry "nil" :family "Monaco")))))


;; disable tutorial on startup
(setq inhibit-startup-screen t)

;; Indentation and tab-related stuff goes here
(setq-default indent-tabs-mode nil)
(setq c-basic-indent 2)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(global-set-key (kbd "RET") 'newline-and-indent)

;; Don't add newline in end of file
(setq require-final-newline nil)

;; Lines, columns and other things
(global-linum-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(size-indication-mode 1)
(menu-bar-mode 1)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(setq-default fill-column 120)
(setq ns-use-native-fullscreen nil)
(setq-default show-trailing-whitespace t)
