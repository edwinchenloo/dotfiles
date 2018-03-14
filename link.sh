#!/bin/sh

DOT="$HOME/.dotfiles"

ln -nsf "$DOT/vim"           "$HOME/.vim"
ln -nsf "$DOT/vim/vimrc"     "$HOME/.vimrc"
ln -nsf "$DOT/zsh"           "$HOME/.zsh"
ln -nsf "$DOT/zsh/zshrc"     "$HOME/.zshrc"
ln -nsf "$DOT/emacs.d"       "$HOME/.emacs.d"
ln -nsf "$DOT/xmonad"        "$HOME/.xmonad"
ln -nsf "$DOT/Xresources"    "$HOME/.Xresources"
ln -nsf "$DOT/xinitrc"       "$HOME/.xinitrc"
ln -nsf "$DOT/rakudobrew"    "$HOME/.rakudobrew"
ln -nsf "$DOT/mutt/mailcap"  "$HOME/.mailcap"
ln -nsf "$DOT/msmtprc"       "$HOME/.msmtprc"
ln -nsf "$DOT/offlineimaprc" "$HOME/.offlineimaprc"

mkdir -p "$HOME/.mutt"
ln -nsf "$DOT/mutt/muttrc"   "$HOME/.mutt/muttrc"
ln -nsf "$DOT/mutt/gmail.rc" "$HOME/.mutt/gmail.rc"
ln -nsf "$DOT/mutt/icloud.rc" "$HOME/.mutt/icloud.rc"

ln -nsf "$DOT/dot-update" "$DOT/bin/dot-update"
ln -nsf "$DOT/pkgsearch"  "$DOT/bin/pkgsearch"
ln -nsf "$DOT/sshget"     "$DOT/bin/sshget"
ln -nsf "$DOT/st/st"      "$DOT/bin/st"
ln -nsf "$DOT/gbrt"       "$DOT/bin/gbrt"

ln -nsf "$DOT/c_ycm_extra_conf.py" "$HOME/.ycm_extra_conf.py"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p "$HOME/.config"
ln -nsf "$DOT/vim" "$HOME/.config/nvim"

mkdir -p "$HOME/.ssh"
ln -nsf "$DOT/ssh/config" "$HOME/.ssh/config"

for file in ackrc gemrc irbrc ghci tmux.conf; do
  ln -nsf "$DOT/$file" "$HOME/.$file"
done

XFCE_TERMRC_PATH="$HOME/.config/xfce4/terminal/"
mkdir -p "$XFCE_TERMRC_PATH"
ln -nsf "$HOME/.dotfiles/base16-default.dark.terminalrc" "$XFCE_TERMRC_PATH/terminalrc"

ln -nsf "$HOME/.dotfiles/git/ignore" "$HOME/.gitignore"
cp "$HOME/.dotfiles/git/config.example" "$HOME/.gitconfig"

mkdir -p "$HOME/.config/herbstluftwm"
ln -nsf "$HOME/.dotfiles/herbstluftwm" "$HOME/.config/herbstluftwm/autostart"

# TODO: replace with XDGHOME
mkdir -p "$HOME/.config/termite"
ln -nsf "$HOME/.dotfiles/termite/config" "$HOME/.config/termite/config"

ln -nsf "$DOT/Xmodmap" "$HOME/.Xmodmap"
ln -nsf "$DOT/tmux-cssh" "$HOME/.tmux-cssh"

ln -nsf "$DOT/base16-shell" "$HOME/.config/base16-shell"

mkdir -p "$HOME/.tmux/plugins"
ln -nsf "$DOT/third-party/tpm" "$HOME/.tmux/plugins/tpm"
