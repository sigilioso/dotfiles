# Paths
fish_add_path -U $HOME/.local/bin

# Disable fish greeting
set -g fish_greeting

# Environment variables
set -gx EDITOR nvim
set -gx LANG "en_US.utf-8"

# Tools setup
if type -q zoxide
    zoxide init fish | source
end
