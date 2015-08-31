(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Use the saves directory for the backup ~ files
(setq backup-directory-alist `(("." . "~/.saves")))

;; Disable tabs, 4 spaces ftw
(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode nil)

(set-face-attribute 'default t :font "Source Code Pro for Powerline-14")
