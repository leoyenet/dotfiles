source /usr/share/cachyos-fish-config/cachyos-config.fish

# Disable the CachyOS Fastfetch greeting.
function fish_greeting
end
starship init fish | source

set -Ux EDITOR nvim
set -gx TERMINAL kitty
set -x GPG_TTY (tty)

abbr -a c clear
abbr -a x exit
abbr -a y yazi
abbr -a j just
abbr -a n nvim
abbr -a conf cd ~/.config
abbr -a g sudo pacman -S

fish_config theme choose catppuccin-mocha --color-theme=dark
