(nel:require-packages 'auto-complete
		      'auto-highlight-symbol
		      'dash
		      'eproject
		      'popup
		      'erlang
		      'edts)

(nel:run-after-initializing
 (setq edts-inhibit-package-check t)
 (setq erlang-root-dir "/usr/local/lib/erlang")
 (setq exec-path (cons (concat erlang-root-dir "/bin") exec-path))
 (add-hook 'after-init-hook (lambda () (progn (require 'erlang-start)
					      (require 'edts-start)))))
