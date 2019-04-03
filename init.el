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
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(c-basic-offset 4)
 '(indent-tabs-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (helm-ag org auto-complete magit helm-projectile helm projectile evil-org evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-startup-screen t)
(global-linum-mode 1)

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)


; evil - a vim layer
(require 'evil)
(define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
(evil-mode t)


; magit - a git client
(global-set-key (kbd "C-x g") 'magit-status)


; projectile - a project manager
(require 'projectile)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(projectile-mode +1)


; helm - a completion framework
(require 'helm-config)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)


; helm + projectile
(require 'helm-projectile)
(helm-projectile-on)


; auto-complete - a completion framework
(require 'auto-complete)
(global-auto-complete-mode 1)

