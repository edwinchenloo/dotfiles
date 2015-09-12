#!/bin/sh

DOT="$HOME/.dotfiles"

ln -nsf "$DOT/vim" "$HOME/.vim"
ln -nsf "$DOT/vim/vimrc" "$HOME/.vimrc"

mkdir -p ~/.ssh
ln -nsf "$DOT/ssh/config" "$HOME/.ssh/config"

for file in "ackrc gemrc irbrc ghci tmux.conf"; do
  ln -nsf "$DOT/$file" "$HOME/.$file"
done
