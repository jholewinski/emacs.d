;; (add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(load "better-defaults")

;;; Highlight current line
;;; (global-hl-line-mode 1)

(setq fill-column 80)

;; Remove text in active region if inserting text
(delete-selection-mode 1)

(require 'smooth-scrolling)

;; Add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'server)
(unless (server-running-p)
  (server-start))

(require 'llvm-mode)
(require 'tablegen-mode)

(cua-mode t)
