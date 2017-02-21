(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("614f8478963ec8caac8809931c9d00f670e4519388c02f71d9d27b66d5741a7f" "72c0a265a51a8aede7d029f1c1a26527e5289ad7b68b0e386905d73a3e9bcbb2" "05c3bc4eb1219953a4f182e10de1f7466d28987f48d647c01f1f0037ff35ab9a" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "180373619ad513afbc237db6245825289a2f0c08178f9719d1b60c38a4f5cd98" "6f063a28e702ac2c4a93ed071046dcde54f04358bf5dbe684d76840ecba51127" "60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" "2b5aa66b7d5be41b18cc67f3286ae664134b95ccc4a86c9339c886dfd736132d" "4eaad15465961fd26ef9eef3bee2f630a71d8a4b5b0a588dc851135302f69b16" "769bb56fb9fd7e73459dcdbbfbae1f13e734cdde3cf82f06a067439568cdaa95" "4c9ba94db23a0a3dea88ee80f41d9478c151b07cb6640b33bfc38be7c2415cc4" "86f4407f65d848ccdbbbf7384de75ba320d26ccecd719d50239f2c36bec18628" "50edb7914e8d369bc03820d2dcde7e74b7efe2af5a39511d3a130508e2f6ac8f" "f263b0c8fffa9440f03ad4769eae39581594a3716074c482b8821b2555c50a8d" "19388fbc7fe94e56c9e4daf7e09df04c75bb3d6ee830676391e60692a6eff096" "e5ebbf07515ffeafd152ea1d0e1288ed2222ee725f022932ddd3e4b0cf3148d7" "0795e2c85394140788d72d34969be4acb305e4a54149e7237787d9df27832fbb" default)))
 '(fci-rule-color "#49483E")
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#67930F" . 20)
     ("#349B8D" . 30)
     ("#21889B" . 50)
     ("#968B26" . 60)
     ("#A45E0A" . 70)
     ("#A41F99" . 85)
     ("#49483E" . 100))))
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (use-package elpy nyan-mode web-mode sr-speedbar rainbow-delimiters project-explorer powerline monokai-theme helm evil csv-nav)))
 '(show-paren-mode t)
 '(syslog-debug-face
   (quote
    ((t :background unspecified :foreground "#A1EFE4" :weight bold))))
 '(syslog-error-face
   (quote
    ((t :background unspecified :foreground "#F92672" :weight bold))))
 '(syslog-hour-face (quote ((t :background unspecified :foreground "#A6E22E"))))
 '(syslog-info-face
   (quote
    ((t :background unspecified :foreground "#66D9EF" :weight bold))))
 '(syslog-ip-face (quote ((t :background unspecified :foreground "#E6DB74"))))
 '(syslog-su-face (quote ((t :background unspecified :foreground "#FD5FF0"))))
 '(syslog-warn-face
   (quote
    ((t :background unspecified :foreground "#FD971F" :weight bold))))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#272822" "#49483E" "#A20C41" "#F92672" "#67930F" "#A6E22E" "#968B26" "#E6DB74" "#21889B" "#66D9EF" "#A41F99" "#FD5FF0" "#349B8D" "#A1EFE4" "#F8F8F2" "#F8F8F0"))))
(let ((sans '((t (:family "Sans")))))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:family "Monaco" :foundry "unknown" :slant normal :weight normal :height 140 :width normal))))
   `(mode-line ,sans)
   `(mode-line-buffer-id ,sans)
   `(mode-line-emphasis ,sans)
   `(mode-line-highlight ,sans)
   `(mode-line-inactive ,sans)
   `(minibuffer-prompt ,sans)
   '(idle-highlight ((t (:inherit highlight))))))

;(set-frame-font "Caecilia LT Medium-12")
(set-fontset-font "fontset-default" 'han '("文泉驿等宽微米黑"))

(require 'package)
;(add-to-list 'package-archives
;             '("marmalade" . "http://marmalade-repo.org/packages/"))
;(setq package-archives '(;("gnu" . "http://elpa.gnu.org/packages/")
;			  ;("marmalade" . "http://marmalade-repo.org/packages/")
;			   ("melpa" . "http://melpa.milkbox.net/packages/")))
(setq package-archives 
    '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
      ("org-cn"   . "http://elpa.emacs-china.org/org/")
      ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))

(package-initialize)

(menu-bar-mode)
(tool-bar-mode 0)

(setq-default inhibit-startup-screen t)

;; Of course, don't uncomment the line below -- doing so would
;; stop Emacs from helpfully leaving "foo~" (backup) files all
;; over the place.
;(setq make-backup-files nil)

;; Use only spaces (no tabs at all).
(setq-default indent-tabs-mode nil)

;; Always show column numbers.
(setq-default column-number-mode t)

;; Display full pathname for files.
(add-hook 'find-file-hooks
          '(lambda ()
             (setq mode-line-buffer-identification 'buffer-file-truename)))

;; For easy window scrolling up and down.
(global-set-key "\M-n" 'scroll-up-line)
(global-set-key "\M-p" 'scroll-down-line)
(global-set-key "\C-t" 'pop-global-mark)

;; For easier regex search/replace.
(defalias 'qrr 'query-replace-regexp)

;; My own preference. Change or comment out the following lines if you like.
;(load-file "~/.emacs.d/custom/myfav.el")
;(add-to-list 'load-path "~/.emacs.d/custom")
;(require 'obsidian)
;(load-theme 'myfav t)

;(load-theme 'zen-and-art t)
(load-theme 'monokai t)
;(load-theme 'material t)
;(set-background-color "#c7edcc")
;(set-background-color "#b6d9ba")
;(set-background-color "#a9ccb5")

;(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
;(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
;(global-rainbow-delimiters-mode)
(require 'vc)
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;(require 'multi-web-mode)
;(setq mweb-default-major-mode 'html-mode)
;(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
;                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
;(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
;(multi-web-global-mode 1)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.ftl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(setq evil-insert-state-cursor '(box "red")
      evil-normal-state-cursor '(box "gray"))
(blink-cursor-mode)

;;(global-set-key "\C-x\C-b" 'buffer-menu)
(global-set-key "\C-x\C-b" 'helm-buffers-list)

(which-function-mode)
;(powerline-default-theme)

(evil-mode 1)
;(defalias 'evil-insert-state 'evil-emacs-state)

;; remove all keybindings from insert-state keymap
(setcdr evil-insert-state-map nil)

;; but [escape] should switch back to normal state
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(define-key evil-normal-state-map (kbd "M-.") 'cider-jump-to-var)
(define-key evil-normal-state-map (kbd "M-,") 'cider-jump-back)
(define-key evil-normal-state-map (kbd "C-c C-d g") 'cider-grimoire)

;; (custom-set-faces
;;  ;'(mode-line-buffer-id ((t (:inherit t))))
;;  '(which-func ((t (:foreground "DeepSkyBlue"))))
;;  '(mode-line ((t (:foreground "LimeGreen"))))
;;  '(mode-line-inactive ((t (:inherit t :foreground "DarkGreen")))))

(defun app-reset ()
  (interactive)
  (dolist (buffer (buffer-list))
    (let ((name (buffer-name buffer)))
      (when (string-match "^\*cider-repl.*\*$" name)
        (set-buffer name))))
  (goto-char (point-max))
  (insert "(reloaded.repl/reset)")
  (cider-repl-return))
(put 'narrow-to-region 'disabled nil)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying t    ; Don't delink hardlinks
      version-control t      ; Use version numbers on backups
      delete-old-versions t  ; Automatically delete excess backups
      kept-new-versions 20   ; how many of the newest versions to keep
      kept-old-versions 5    ; and how many of the old
      )

(setq exec-path 
      (cons
       "/usr/local/bin"
       exec-path))

(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Switch to interactive Scheme buffer." t)
(setq auto-mode-alist (cons '("\\.ss" . scheme-mode) auto-mode-alist))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "unknown" :slant normal :weight normal :height 140 :width normal))))
 '(idle-highlight ((t (:inherit highlight))))
 '(minibuffer-prompt ((t (:family "Sans"))))
 '(mode-line ((t (:family "Sans"))))
 '(mode-line-buffer-id ((t (:family "Sans"))))
 '(mode-line-emphasis ((t (:family "Sans"))))
 '(mode-line-highlight ((t (:family "Sans"))))
 '(mode-line-inactive ((t (:family "Sans")))))
