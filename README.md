# Dotfiles

## Requirements

Ubuntu:

```sh
sudo apt install stow fish neovim git fzf bat ripgrep
```

Mac:

```sh
brew install stow fish neovim git fzf bat ripgrep
```

Switch to fish shell (needs restart):

```sh
chsh --shell $(which fish)
```

## stow usage

```sh
stow <config-folder>
```

Mind [.stowrc](./.stowrc) file including some options `--no-folding` avoids linking directories and ending up with local information in the repository.


## fish

Install [fisher plugin manager](https://github.com/jorgebucaran/fisher) and plugins

```sh
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source 
fisher update
```


## git

```sh
git config --global include.path $HOME/.config/git/gitconfig.static
git config --global user.name "<your-name>"
git config --global user.email <your@email>
```

## vim

```sh
vim -c "PlugInstall"
```
