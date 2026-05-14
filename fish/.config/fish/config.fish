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

# pure-fish prompt
set -g pure_show_numbered_git_indicator true
set -g pure_show_prefix_root_prompt true
set -g pure_show_subsecond_command_duration true
