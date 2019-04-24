;;; -*- lexical-binding: t; -*-

(configuration-layer/declare-layers
 '(;; Core
   auto-completion
   better-defaults
   git
   ivy
   org
   (shell :variables
          shell-default-shell 'eshell)
   ;; spell-checking
   syntax-checking
   (version-control :variables
                    ; version-control-diff-tool 'git-gutter+
                    version-control-global-margin t)

   ;; Misc
   graphviz

   ;; Markups
   markdown
   yaml

   ;; Languages
   c-c++
   emacs-lisp
   java
   javascript
   go
   (python :variables
           python-test-runner 'pytest
           python-spacemacs-indent-guess nil)
   sql
   ))
