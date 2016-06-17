#!/bin/sh

mkdir ~/.vim
mkdir ~/.vim/rc

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/rc/dein.toml ~/dein.toml
ln -sf ~/dotfiles/rc/dein_lazy.toml ~/dein_lazy.toml

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile

