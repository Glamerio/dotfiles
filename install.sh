#!/bin/bash

set -e

DOTFILES="$HOME/dotfiles"

echo "Installing dotfiles..."

# Backup existing configs
backup() {
    if [ -e "$1" ] && [ ! -L "$1" ]; then
        mv "$1" "$1.backup"
    fi
}

# Vim
backup "$HOME/.vimrc"
ln -sfn "$DOTFILES/.vimrc" "$HOME/.vimrc"

# Tmux
backup "$HOME/.tmux.conf"
ln -sfn "$DOTFILES/.tmux.conf" "$HOME/.tmux.conf"

# Neovim
mkdir -p "$HOME/.config/nvim"

backup "$HOME/.config/nvim/init.vim"
ln -sfn "$DOTFILES/.config/nvim/init.vim" \
    "$HOME/.config/nvim/init.vim"

# vim-plug
mkdir -p "$HOME/.vim/autoload"

if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
    curl -fLo "$HOME/.vim/autoload/plug.vim" \
    --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "Dotfiles installed!"
echo "Open Vim or Neovim and run :PlugInstall"
