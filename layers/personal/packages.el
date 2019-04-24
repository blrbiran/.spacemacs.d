;;; packages.el --- personal layer packages file for Spacemacs.

(defconst personal-packages
  '(
    (bb-mode :location local)
    )
  "The list of Lisp packages required by the personal layer.")

(defun personal/init-bb-mode ()
  (use-package bb-mode
    :commands (bb-insert-CR-string
               bb-insert-defined-CR-string
               bb-what-hexadecimal-value
               bb-open-key-info-file)
    :init
    (spacemacs/declare-prefix "m m" "bb-mode")
    (spacemacs/set-leader-keys
      "m m c" 'bb-insert-CR-string
      "m m w" 'bb-insert-defined-CR-string
      "m m b" 'bb-what-hexadecimal-value
      "m m d" 'bb-open-key-info-file
      "m m <f12>" 'whitespace-mode)
    )
  )

;;; packages.el ends here
