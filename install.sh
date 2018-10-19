#!/bin/sh

cd $(dirname ${0})
current=`pwd`

#-------------------------------------
# Vim and Neovim
#-------------------------------------

vim_home=~/.vim

mkdir -p ${vim_home}
ln -sf ${current}/vim/vimrc ~/.vimrc
ln -sf ${current}/vim/gvimrc ~/.gvimrc
ln -sf ${current}/vim/rc ${vim_home}/rc

nvim_home=~/.nvim

mkdir -p ${nvim_home}
mkdir -p ~/.config/nvim
ln -sf ${current}/vim/vimrc ~/.config/nvim/init.vim
ln -sf ${current}/vim/rc ${nvim_home}/rc

rm -r ${current}/vim/rc/rc


#-------------------------------------
# fish
#-------------------------------------
ln -sf ${current}/fish/fishfile ~/.config/fish/fishfile
ln -sf ${current}/fish/config.fish ~/.config/fish/config.fish

#-------------------------------------
# Git
#-------------------------------------
ln -sf ${current}/git/_gitconfig ~/.gitconfig


