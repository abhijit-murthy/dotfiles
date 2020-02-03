; Remove toolbars and scrollbars
(tool-bar-mode -1)
(toggle-scroll-bar -1)

(show-paren-mode 1)

; Add MELPA
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("MELPA" .
	       "http://melpa.milkbox.net/packages/"))
(package-initialize)

; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(use-package elfeed
  :ensure t
  :config
  (setq elfeed-feeds
	'("http://www.reddit.com/r/offlinetv/new/.rss?sort=new"
	  "http://www.reddit.com/r/programming/.rss"
	  "http://www.reddit.com/r/linux/.rss"
	  "http://www.reddit.com/r/cpp/.rss"
	  "https://news.ycombinator.com/rss")))

; linum-relative - relative line numbering
(use-package linum-relative
  :ensure t
  :config
  (linum-mode)
  (linum-relative-global-mode))

; Company - for auto-complete
(use-package company
  :ensure t)
  
; Rust modes
(use-package rust-mode
  :ensure t
  :config
  ; Racer - for Rust auto-complete
  (use-package racer
    :ensure t
    :config
    (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode)
    (add-hook 'racer-mode-hook #'company-mode)))

; Org modes
(use-package org
  :ensure t
  :config
  (setq org-default-notes-file "~/Documents/org-files/notes.org")
  ; Org Bullets - for shiny utf-8 bullets
  (use-package org-bullets
    :ensure t
    :config
    (add-hook 'org-mode-hook (lambda ()
			       (org-bullets-mode 1)))))

; Neotree - for file manager stuff
(use-package neotree
  :ensure t)

; Projectile - project autodiscovery and search
(use-package projectile
  :ensure t
  :config
  (projectile-mode +1))

; Helm - completion mini-buffers
(use-package helm
  :ensure t
  :config
  (use-package helm-projectile
    :ensure t))

; Magit - makes git better
(use-package magit
  :ensure t)

; Extensible VI Layer
(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  ; evil-leader - For easy leader key mapping
  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader "<SPC>")
    (evil-leader/set-key "x" 'helm-M-x)
    (evil-leader/set-key "bb" 'helm-mini)
    (evil-leader/set-key "ps" 'helm-projectile-grep)
    (evil-leader/set-key "pf" 'helm-projectile-find-file)
    (evil-leader/set-key "pc" 'projectile-compile-project)
    (evil-leader/set-key "p!" 'projectile-run-shell-command-in-root)
    (evil-leader/set-key "op" 'neotree-toggle)
    (evil-leader/set-key "gs" 'magit-status))

  (define-key evil-ex-map "e" 'helm-find-files)

  (evil-add-hjkl-bindings neotree-mode-map 'normal 
    (kbd "TAB") 'neotree-enter
    (kbd "SPC") 'neotree-quick-look
    (kbd "q") 'neotree-hide
    (kbd "RET") 'neotree-enter
    (kbd "g") 'neotree-refresh
    (kbd "A") 'neotree-stretch-toggle
    (kbd "H") 'neotree-hidden-file-toggle
    (kbd "C") 'neotree-create-node
    (kbd "c") 'neotree-copy-node
    (kbd "m") 'neotree-rename-node
    (kbd "d") 'neotree-delete-node)

  (add-to-list 'evil-emacs-state-modes 'elfeed-search-mode)
  (add-to-list 'evil-emacs-state-modes 'elfeed-show-mode)
  (evil-add-hjkl-bindings elfeed-search-mode-map 'emacs
    (kbd "/") 'evil-search-forward
    (kbd "n") 'evil-search-next
    (kbd "N") 'evil-search-previous)


  (use-package evil-org
    :ensure t
    :after org
    :config
    (add-hook 'org-mode-hook 'evil-org-mode)
    (add-hook 'evil-org-mode-hook
	      (lambda ()
		(evil-org-set-key-theme)))
    (require 'evil-org-agenda)
    (evil-org-agenda-set-keys))

  (use-package evil-magit
    :ensure t))
  
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
  (load-theme 'doom-one t))

(use-package doom-modeline
  :ensure t
  :hook
  (after-init . doom-modeline-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (elfeed helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
