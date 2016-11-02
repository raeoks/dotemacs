(nel:require-packages 'go-mode
		      'go-def
		      'go-lint
		      'go-projectile
		      'go-flymake
		      'go-eldoc
		      'go-errcheck
		      'go-autocomplete
		      'go-imports
		      'go-guru
		      'go-test
		      'go-rename)

(defun nel:go-mode-hook ()
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command) "go build -v"))
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-,") 'pop-tag-mark)
  (local-set-key (kbd "C-c ,") 'go-test-current-file)
  (local-set-key (kbd "C-c .") 'go-test-current-test))

(nel:run-after-initializing
 (add-hook 'go-mode-hook 'nel:go-mode-hook))

(when (equal system-type 'darwin)
  (nel:run-after-initializing
   `(add-to-list 'exec-path-from-shell-variables "GOPATH")))
