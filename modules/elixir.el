(nel:require-packages 'elixir 'alchemist 'elixir-yasnippets)

(setq elixir-iex-command "/usr/local/bin/iex")
(setq elixir-compiler-command "/usr/local/bin/elixirc")

(nel:run-after-initializing
  (add-hook 'elixir-mode-hook 'smartparens-strict-mode)
  (add-hook 'elixir-mode-hook 'sp-use-paredit-bindings)
  (add-hook 'elixir-mode-hook 'alchemist-mode))