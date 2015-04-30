
;;-----------------------Basic View Settings-------------------------;;

;; Setting to inhibit toolbar, menubar and scrollbars.
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1) 

;; Setting to inhibit the Spalsh Screen and Echo Area Message
;; when starting Emacs
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)

;; Setiings to display Row and Column numbers in the Echo Area.
(line-number-mode 1)
(column-number-mode 1)

;; Setting To show Line Numbers in all buffers
;; linum-mode does not enable in all buffers.
;; It just toggles the linum-mode in the active buffer.
(global-linum-mode 1)

;; Toggle line highlighting in all buffers (Global Hl-Line mode).
(global-hl-line-mode 1)

;; Turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode t)

;; Language Settings
(setq current-language-environment "English")


;;-----------------------General Settings----------------------------;;

;; Removing Backup Files
;; http://stackoverflow.com/questions/151945/how-do-i-control-how-emacs-makes-backup-files
(defvar --backup-directory (concat user-emacs-directory "Backups"))
(if (not (file-exists-p --backup-directory))
    (make-directory --backup-directory t))
(setq backup-directory-alist `(("." . ,--backup-directory)))
(setq make-backup-files t               ; backup of a file the first time it is saved.
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backup files silently
      auto-save-default t               ; auto-save every buffer that visits a file
      auto-save-timeout 20              ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 200            ; number of keystrokes between auto-saves (default: 300)
      )

;; Adding Melpa and Elpa packages list to install packages
;; http://melpa.org/getting-started
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/") t)
(package-initialize)

;; Make Text mode the default mode for new buffers 
(setq default-major-mode 'text-mode)

;; New Key Binding for Save all Buffers and Close Emacs
(global-set-key (kbd "C-M-c") 'save-buffers-kill-emacs)

;; Set my default Email Address
(setq user-mail-address "ankitgoyal.bpl@hotmail.com")

;; Replacing "yes or no" prompt with "y/n"
(fset 'yes-or-no-p 'y-or-n-p)

;; Always use spaces, not tabs, when indenting
(setq-default indent-tabs-mode -1)

;; Set Tab Width to be 5
;; http://www.emacswiki.org/emacs/IndentationBasics
(setq-default tab-width 5) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)



;;-----------------------Default Entries by Emacs--------------------;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
