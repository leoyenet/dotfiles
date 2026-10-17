set -l fzf_theme_opts "\
--color=bg+:#313244
--color=bg:#1e1e2e
--color=spinner:#f5e0dc
--color=hl:#f38ba8
--color=fg:#cdd6f4
--color=header:#f38ba8
--color=info:#cba6f7
--color=pointer:#f5e0dc
--color=marker:#a6adc8
--color=fg+:#cdd6f4
--color=prompt:#cba6f7
--color=hl+:#f38ba8
--color=selected-bg:#45475a
--color=border:#585b70
--color=label:#cdd6f4"

if set -q FZF_DEFAULT_OPTS[1]; and test -n "$FZF_DEFAULT_OPTS"
    set -Ux FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS
$fzf_theme_opts"
else
    set -Ux FZF_DEFAULT_OPTS "$fzf_theme_opts"
end
