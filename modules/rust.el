(nel:require-packages 'rust-mode
		      'rusti
		      'rust-racer
		      'emacs-racer
		      'flycheck-rust
		      'cargo)

(setq racer-cmd "~/.cargo/bin/racer")
(setq racer-rust-src-path "~/Code/GitHub/rust-lang/rust/src/")

(defun nel:rust-mode-hook ()
  (local-set-key (kbd "TAB") 'company-indent-or-complete-common)
  (local-set-key (kbd "C-c <tab>") #'rust-format-buffer))

(nel:run-after-initializing
 (add-hook 'rust-mode-hook 'nel:rust-mode-hook)
 (add-hook 'rust-mode-hook 'cargo-minor-mode)
 (add-hook 'rust-mode-hook 'racer-mode)
 (add-hook 'racer-mode-hook 'eldoc-mode)
 (add-hook 'racer-mode-hook 'company-mode)
 (add-hook 'flycheck-mode-hook 'flycheck-rust-setup))
