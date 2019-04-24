;;; Config Layer

;;; packages.el --- config layer packages file for Spacemacs.

(defconst config-packages
  '(
    evil
    org
    )
  "The list of Lisp packages required by the config layer.")

;;;; Evil

(defun config/post-init-evil ()
  (setq evil-escape-key-sequence "jk")
  (setq evil-escape-delay 0.2))

(defun config/post-init-org ()
  (evil-define-key '(normal visual motion) org-mode-map
    "gh" 'outline-up-heading
    "gj" 'outline-forward-same-level
    "gk" 'outline-backward-same-level
    "gl" 'outline-next-visible-heading
    "gu" 'outline-previous-visible-heading))


;;; packages.el ends here
