;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: 
;; Title: 
;; From: 
 (push "/usr/local/bin" exec-path)
 (setq make-backup-files nil)
 (setq auto-save-default nil)
 (setq-default tab-width 2)
 (setq-default indent-tabs-mode nil)
 (setq inhibit-startup-message t)
 (fset 'yes-or-no-p 'y-or-n-p)
 (delete-selection-mode t)
 (scroll-bar-mode -1)
 (tool-bar-mode -1)
 (blink-cursor-mode t)
 (show-paren-mode t)
 (column-number-mode t)
 (set-fringe-style -1)
 (tooltip-mode -1) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: djcb
;; Title: init.el
;; From: http://www.djcbsoftware.nl/dot-emacs.html
 (setq initial-scratch-message ";; scratch buffer created -- happy hacking\n")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: huaiyuan
;; Title: How to set the font size in Emacs?
;; From: http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
 (set-face-attribute 'default nil :height 160)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Gopal Patel
;; Title: .emacs.d / init-ido.el
;; From: https://github.com/nixme/.emacs.d/blob/master/init-ido.el
                                        ; display ido results vertically, rather than horizontally
                                        ; from tipcharper, jpkotta: http://emacswiki.org/emacs/InteractivelyDoThings
 (setq ido-decorations
       '("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))
 (defun ido-disable-line-trucation ()
   (set (make-local-variable 'truncate-lines) nil))
 (add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-trucation)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Eric M. Ludlam
;; Title: Setting up CEDET
;; From: http://cedet.sourceforge.net/setup.shtml
 (require 'cedet)
 (require 'srecode)
 (global-ede-mode 1)
 (srecode-minor-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: emacs wiki
;; Title: ModeCompile
;; From: http://www.emacswiki.org/emacs/ModeCompile
(autoload 'mode-compile "mode-compile"
      "Command to compile current buffer file based on the major mode" t)
(global-set-key "\C-cc" 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
      "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key "\C-ck" 'mode-compile-kill)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: djcb
;; Title: package management revisited
;; From: http://emacs-fu.blogspot.com/2011/11/package-management-revisited.html
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/") 
                          ("gnu" . "http://elpa.gnu.org/packages/")
                          ("marmalade" . "http://marmalade-repo.org/packages/")))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Pavel Nikitin
;; Title: Walk and ye shall reach.
;; From: http://itstickers.blogspot.com/2010/11/all-about-emacs.html

;; Rsense
(setq rsense-home "/usr/local/Cellar/rsense/0.3/libexec")
(add-to-list 'load-path (concat rsense-home "/etc"))

;; Rsense + Autocomplete
(add-hook 'ruby-mode-hook
          (lambda ()
            (require 'rsense)
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Plillup Toland
;; Title: dotemacs /init.el
;; From: htps://github.com/toland/blob/master/init.el

(add-to-list 'load-path "~/.emacs.d/ecb")
(require 'ecb)
(setq ecb-options-version "2.40"
      ecb-tip-of-the-day nil
      ecb-layout-name "left15"
      ecb-show-sources-in-directories-buffer '("left7" "left13" "left14" "left15" "leftright3")
      ecb-fix-window-size 'auto
      ecb-windows-width 25
      ecb-primary-secondary-mouse-buttons 'mouse-1--mouse-2
      ecb-source-file-regexps '((".*"
                                 ("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(elc\\|beam\\|o\\|class\\|a\\|so\\|cache\\)$\\)\\)")
                                 ("^\\.\\(emacs\\|gnus\\)$")))
      ecb-source-path '(("~/.emacs.d" "emacs.d")))
(global-set-key (kbd "C-x a") 'ecb-activate)
(global-set-key (kbd "C-x d") 'ecb-deactivate)
(global-set-key (kbd "C-x w") 'ecb-goto-window-directories)
(global-set-key (kbd "C-x e") 'ecb-goto-window-edit-by-smart-selection)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(add-to-list 'load-path "~/.emacs.d/elpa/undo-tree-0.5.5")
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "C-x t") 'undo-tree-switch-branch)

(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode t)

(add-to-list 'load-path "~/.emacs.d/elpa/sr-speedbar-0.1.8")
(require 'sr-speedbar)

(global-linum-mode t)                    ;; show line numbers
(size-indication-mode t)                 ;; show file size (emacs 22+)

(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-0.5")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes (quote ("71efabb175ea1cf5c9768f10dad62bb2606f41d110152f4ace675325d28df8bd" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" default)))
 '(ecb-options-version "2.40")
 '(ecb-source-file-regexps (quote ((".*" ("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(elc\\|obj\\|o\\|class\\|lib\\|dll\\|a\\|so\\|cache\\)$\\)\\)") ("^\\.\\(emacs\\|gnus\\)$"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
