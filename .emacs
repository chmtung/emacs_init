;;(set-language-environment "Chinese-BIG5")
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
(load-library "color-theme")
(color-theme-select)

(require 'color-theme)
(color-theme-initialize)
;;(color-theme-jsc-dark)
(color-theme-robin-hood)


(setq tags-table-list
      '(
        ;; "/home/max/src/TAGS_opt_kernel" "/home/max/src/TAGS_usr_inc"
        ;; "/home/max/src/acu-stm32/csu502 can/TAGS"
        ;; "/home/max/ti-sdk-am335x-evm-05.06.00.00/linux-devkit/arm-arago-linux-gnueabi/TAGS"
        ;; "/home/max/src/csu.linux/TAGS"
        ;; "/home/max/src/triton/orion/TAGS"
        ;; "/home/max/triton/board-support/ti-linux-kernel-4.1.13-rt/TAGS"
        ;; "/home/max/src/B6.05-Ooredoo_modbus_FixMainFail/TAGS"
        ;; "~/src/csu.linux/TAGS"
        "/home/vincent/workspace_v6_2/can_drv/TAGS"
        ))

(setq c-default-style "linux"
      c-basic-offset 3)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-label-minimum-indentation 8)
 '(c-special-indent-hook nil)
 '(ido-buffer-disable-smart-matches t)
 '(ido-completion-buffer-all-completions t)
 '(ido-confirm-unique-completion nil)
 '(ido-create-new-buffer (quote always))
 '(ido-enable-dot-prefix t)
 '(ido-enable-flex-matching t)
 '(ido-enable-prefix nil)
 '(ido-enable-regexp nil)
 '(ido-enable-tramp-completion nil)
 '(ido-enter-matching-directory (quote first))
 '(ido-everywhere nil)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(standard-indent 8)
 '(tab-always-indent t)
 '(tab-width 3))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;spaces instead of
(setq-default indent-tabs-mode nil)

;;Syntax Highlighting
(global-font-lock-mode t)


;;(when window-system          ; start speedbar if we're using a window system
;;    (speedbar t))

;;(add-to-list 'load-path "~/.emacs.d/lisp")
;;(require 'sr-speedbar)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "172.16.16.15:8080")
        ("https" . "172.16.16.15:8080")))

(setq url-http-proxy-basic-auth-storage
      (list (list "172.16.16.15:8080"
                  (cons "Input your LDAP UID !"
                        (base64-encode-string "max.yang:straddle77!")))))

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;;(when (>= emacs-major-version 24)
;;  (require 'package)
;;  (add-to-list
;;   'package-archives
;;   '("melpa" . "http://melpa.org/packageswhere/")
;;   t)
;;  (package-initialize))


;;(require 'cc-mode)
;;(load-file "/usr/share/emacs/site-lisp/xcscope.el")
(add-to-list 'load-path "~/.emacs.d/")
(require 'xcscope)
