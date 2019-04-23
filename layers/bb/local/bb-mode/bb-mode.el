;; Author: Ran Bi

(defun bi-insert-CR-word ()
  "Add CR-Id to text"
  (interactive)
  (insert "CR-Id: ")
  (end-of-line))

(defun bi-insert-defined-CR-word (cr-type)
  "Add CR-Id to text"
  (interactive "MInput CR type:")
  (insert (format "%s CR-Id: " cr-type))
  (end-of-line))

(provide 'bb-mode)
