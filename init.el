;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Dimitri Fontaine
;; Title: el-get
;; From: https://github.com/dimitri/el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files/")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(package-initialize)

(setq-default ispell-program-name "/usr/local/Cellar/aspell/0.60.6.1/bin/aspell")


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
      (quote
       ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]"
        " [Not readable]" " [Too big]" " [Confirm]")))
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
(global-set-key (kbd "C-c C-a") 'ecb-activate)
(global-set-key (kbd "C-c C-d") 'ecb-deactivate)
(global-set-key (kbd "C-c C-w") 'ecb-goto-window-directories)
(global-set-key (kbd "C-c C-e") 'ecb-goto-window-edit-by-smart-selection)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: The Org Manual
;; Title: 15.8 A cleaner outline view
;; From: http://orgmode.org/manual/Clean-view.html

(setq auto-indent-start-org-indent t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Masafumi Oyamada
;; Title: mooz / js2-mode
;; From: https://github.com/mooz/js2-mode/tree/emacs24
(add-to-list 'load-path "~/.emacs.d/js2-mode")
(require 'js2-mode)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Tim C Harper
;; Title: AutoPairs
;; From: http://www.emacswiki.org/emacs/AutoPairs
(add-to-list 'load-path "~/.emacs.d/elpa/autopair-0.3")
(require 'autopair)
(defvar autopair-modes '(r-mode ruby-mode))
(defun turn-on-autopair-mode () (autopair-mode 1))
(dolist (mode autopair-modes) (add-hook (intern (concat (symbol-name mode) "-hook")) 'turn-on-autopair-mode))

(add-to-list 'load-path "~/.emacs.d/elpa/paredit-22")
(require 'paredit)
(defadvice paredit-mode (around disable-autopairs-around (arg))
  "Disable autopairs mode if paredit-mode is turned on"
  ad-do-it
  (if (null ad-return-value)
      (autopair-mode 1)
    (autopair-mode 0)
    ))
(ad-activate 'paredit-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
           (and (not current-prefix-arg)
                (member major-mode '(emacs-lisp-mode
                                     clojure-mode scheme-mode
                                     haskell-mode ruby-mode
                                     rspec-mode python-mode
                                     c-mode c++-mode
                                     objc-mode latex-mode
                                     js2-mode plain-tex-mode
                                     yaml-mode))
                (let ((mark-even-if-inactive transient-mark-mode))
                  (indent-region (region-beginning) (region-end) nil))))))


(add-to-list 'load-path "~/.emacs.d/smarttabs")
(require 'smart-tabs-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Author: Yves Senn
;; Title: Emacs Tidbits for Ruby Developers
;; From: http://blog.senny.ch/blog/2012/10/06/emacs-tidbits-for-ruby-developers/

(add-to-list 'load-path "~/.emacs.d/elpa/rvm-1.2")
(require 'rvm)
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))

(add-to-list 'load-path "~/.emacs.d/elpa/yari-0.5")
(require 'yari)

(add-to-list 'load-path "~/.emacs.d/cucumber.el")
(require 'feature-mode)

(add-to-list 'load-path "~/.emacs.d/elpa/rspec-mode-1.3")
(require 'rspec-mode)

(defun senny-ruby-open-spec-other-buffer ()
  (interactive)
  (when (featurep 'rspec-mode)
    (let ((source-buffer (current-buffer))
          (other-buffer (progn
                          (rspec-toggle-spec-and-target)
                          (current-buffer))))
      (switch-to-buffer source-buffer)
      (pop-to-buffer other-buffer))))

(eval-after-load 'ruby-mode
  '(progn
     (define-key ruby-mode-map (kbd "C-c , ,") 'senny-ruby-open-spec-other-buffer)))

(defun senny-ruby-interpolate ()
  "In a double quoted string, interpolate."
  (interactive)
  (insert "#")
  (when (and
         (looking-back "\".*")
         (looking-at ".*\""))
    (insert "{}")
    (backward-char 1)))

(eval-after-load 'ruby-mode
  '(progn
     (define-key ruby-mode-map (kbd "#") 'senny-ruby-interpolate)))

                                        ;(eval-after-load 'ruby-mode
                                        ;  '(progn
                                        ;     (add-to-list 'ruby-font-lock-syntactic-keywords
                                        ;                  '("\\(\\(\\)\\(\\)\\|Given\\|When\\|Then\\)\\s *\\(/\\)[^/\n\\\\]*\\(\\\\.[^/\n\\\\]*\\)*\\(/\\)"
                                        ;                    (4 (7 . ?/))
                                        ;                    (6 (7 . ?/))))))

(eval-after-load 'ruby-mode
  '(progn
     ;; Libraries
     (require 'flymake)

     ;; Invoke ruby with '-c' to get syntax checking
     (defun flymake-ruby-init ()
       (let* ((temp-file (flymake-init-create-temp-buffer-copy
                          'flymake-create-temp-inplace))
              (local-file (file-relative-name
                           temp-file
                           (file-name-directory buffer-file-name))))
         (list "ruby" (list "-c" local-file))))

     (push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
     (push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)

     (push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3)
           flymake-err-line-patterns)

     (add-hook 'ruby-mode-hook 'cabbage-flymake-init)

     (add-hook 'ruby-mode-hook
               (lambda ()
                 (when (and buffer-file-name
                            (file-writable-p
                             (file-name-directory buffer-file-name))
                            (file-writable-p buffer-file-name)
                            (if (fboundp 'tramp-list-remote-buffers)
                                (not (subsetp
                                      (list (current-buffer))
                                      (tramp-list-remote-buffers)))
                              t))
                   (local-set-key (kbd "C-c d")
                                  'flymake-display-err-menu-for-current-line)
                   (flymake-mode t))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))


(add-to-list 'load-path "~/.emacs.d/rhtml")
(require 'rinari)
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))



(defface erb-face
  `((t (:background "grey18")))
  "Default inherited face for ERB tag body"
  :group 'rhtml-faces)

(defface erb-delim-face
  `((t (:background "grey15")))
  "Default inherited face for ERB tag delimeters"
  :group 'rhtml-faces)


(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-to-list 'auto-mode-alist '("Guardfile$". ruby-mode))

(add-to-list 'load-path "~/.emacs.d/elpa/dired+-21.2")
(require 'dired+)

(autoload 'smart-tabs-mode-enable "smart-tabs-mode")
(autoload 'smart-tabs-advice "smart-tabs-mode")

(add-to-list 'load-path "~/.emacs.d/elpa/zencoding-mode-0.5.1")
(require 'zencoding-mode)
(add-hook 'html-mode-hook (lambda () (zencoding-mode 1)))
(add-hook 'sgml-mode-hook (lambda () (zencoding-mode 1)))

(define-key global-map (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-c n") 'esk-cleanup-buffer)

(ad-activate 'paredit-mode)

(setq org-return-follows-link t)

(setq-default indicate-empty-lines t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

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
 '(hl-line ((t nil))))
