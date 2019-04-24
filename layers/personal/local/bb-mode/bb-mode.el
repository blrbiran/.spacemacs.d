;; Author: Ran Bi

;; Insert CR string
(defun bb-insert-CR-string ()
  "Add CR-Id to text"
  (interactive)
  (insert "CR-Id: ")
  (end-of-line))

(defun bb-insert-defined-CR-string (cr-type)
  "Add CR-Id to text"
  (interactive "MInput CR type:")
  (insert (format "%s CR-Id: " cr-type))
  (end-of-line))

;; Open self emacs key file
(defun bb-open-key-info-file ()
  (interactive)
  (split-window-horizontally)
  (find-file-other-window "~/.spacemacs.d/doc/emacskeys.org")
  (org-mode)
  (hide-body))

;; Show binary value of hex value and copy to clipboard
(defun bb-number-to-bin-string (number)
  (require 'calculator)
  (let ((calculator-output-radix 'bin)
        (calculator-radix-grouping-mode nil))
    (calculator-number-to-string number)))

(defun bb-what-hexadecimal-value ()
  "Prints the decimal value of a hexadecimal string under cursor.
Samples of valid input:

  ffff
  0xffff
  #xffff
  FFFF
  0xFFFF
  #xFFFF

Test cases
  64*0xc8+#x12c 190*0x1f4+#x258
  100 200 300   400 500 600"
  (interactive)

  (let (inputStr tempStr binStr p1 p2)
    (save-excursion
      (re-search-backward "[^0-9A-Fa-fx#]" nil t)
      (forward-char)
      (setq p1 (point))
      (re-search-forward "[^0-9A-Fa-fx#]" nil t)
      (backward-char)
      (setq p2 (point))
      )

    (setq inputStr (buffer-substring-no-properties p1 p2))

    (let ((case-fold-search nil))
      (setq tempStr (replace-regexp-in-string "^0x" "" inputStr)) ; C, Perl, …
      (setq tempStr (replace-regexp-in-string "^#x" "" tempStr)) ; elisp …
      (setq tempStr (replace-regexp-in-string "^#" "" tempStr))  ; CSS …
      )

    (setq binStr (bb-number-to-bin-string (string-to-number tempStr 16)))
    (message "Hex %s is %s" tempStr binStr)
    (with-temp-buffer
      (insert binStr)
      (clipboard-kill-region (point-min) (point-max)))
    ))

(provide 'bb-mode)
