;;; packages.el --- bb layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: biran <biran@Ran-Mac-mini.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `bb-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `bb/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `bb/pre-init-PACKAGE' and/or
;;   `bb/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst bb-packages
  '(
    (bb-mode :location local)
    )
  "The list of Lisp packages required by the bb layer.")

(defun bb/init-bb-mode ()
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
