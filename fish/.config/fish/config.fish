fish_add_path -U $HOME/.local/bin

set -gx EDITOR nvim
set -gx LANG "en_US.utf-8"

if type -q zoxide
    zoxide init fish | source
end
