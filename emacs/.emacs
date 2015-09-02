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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (base16-default-dark)))
 '(custom-safe-themes
   (quote
    ("9f3a4edb56d094366afed2a9ba3311bbced0f32ca44a47a765d8ef4ce5b8e4ea" "7545d3bb77926908aadbd525dcb70256558ba05d7c478db6386bfb37fb6c9120" default)))
 '(initial-buffer-choice t)
 '(preview-gs-options
   (quote
    ("-q" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(getenv "PATH")
(setenv "PATH"
        (concat "/usr/local/bin" ":" "/usr/texbin" ":" (getenv "PATH")))
(setq preview-gs-command "/usr/local/bin/gs")
