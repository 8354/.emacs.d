;;; init-scheme --- use racket-mode, paredit for development env
;;; Commentary:
;;; Code:

;; #### Run Racket REPL in Emacs ####
;; racket-repl
;; racket-run
;; #### Eval Code ####
;; racket-run-and-switch-to-repl
;; racket-send-last-sexp
;; racket-send-region
;; #### Doc Lookup ####
;; racket-doc
;; racket-describe
;; #### Completion ####
;; complete-symbol

(require-package 'racket-mode)

(setq racket-racket-program "racket")
(setq racket-raco-program "raco")

(add-to-list 'auto-mode-alist '("\\.scm\\'" . racket-mode))

(add-hook 'racket-mode-hook
          (lambda ()
            (define-key racket-mode-map (kbd "C-c r") 'racket-run)
            (paredit-mode 1)))

;; unicode input method
(add-hook 'racket-mode-hook #'racket-unicode-input-method-enable)
(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)

(setq tab-always-indent 'complete)

;; (add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init-scheme)
;;; init-scheme ends here
