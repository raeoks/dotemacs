(nel:require-packages 'erlang-mode
		      'erlware-mode)

(nel:run-after-initializing
 (setq erlang-root-dir "/usr/local/lib/erlang")
 (setq exec-path (cons (concat erlang-root-dir "/bin") exec-path))
 (add-hook 'after-init-hook (lambda () (progn (require 'erlang-start)))))
