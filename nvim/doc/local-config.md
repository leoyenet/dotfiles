# Local configuration

This setup targets Neovim 0.12+. Space is the leader key. The active theme is
Tokyo Night; `lua/custom/theme.lua` contains an optional Catppuccin plugin spec
that is not enabled. Additional plugins are loaded from `lua/custom/plugins/`.

| Shortcut | Action |
| --- | --- |
| Space e | Toggle file explorer |
| Space o | Focus explorer or return to the previous window |
| Alt j / Alt k | Move line or selected lines |
| Space rp | Save and run the current Python file in a terminal split |
| Esc Esc | Leave terminal input mode |
| Space f | Format buffer or selection |
| Space rr | Restart LSP clients |
| Space th | Toggle inlay hints for the current buffer, when supported |

Mason installs Lua, Python, and C/C++ language servers, StyLua, Markdownlint,
and the Treesitter CLI. Go's language server and debugger are installed when
the `go` executable is available. Install the Go toolchain before using Go
language tooling or debugging.

Treesitter uses the installed plugin's `main` API and native Neovim highlighting.
The configured parsers install automatically when the CLI is available; on a
fresh setup, restart Neovim after Mason finishes installing tools. Check tooling
with `:checkhealth kickstart nvim-treesitter` and `:Mason`.

Noice is disabled using `enabled = false` in `lua/custom/plugins/init.lua`.
Autopairs is the sole bracket-pairing plugin. Lua formatting follows
`.stylua.toml` so saving the config retains two-space indentation.
