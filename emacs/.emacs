;;; .emacs

;; Use the saves directory for the backup ~ files
(setq backup-directory-alist `(("." . "~/.saves")))

;; Disable tabs, 4 spaces
(setq-default c-basic-offset 4
	      tab-width 4
	      indent-tabs-mode nil)

(set-face-attribute 'default t :font "Source Code Pro for Powerline-14")

(load "~/.emacs.d/my-loadpackages.el")
(add-hook 'after-init-hook '(lambda ()
                              (load "~/.emacs.d/my-noexternals.el")))
