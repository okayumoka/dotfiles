#!/bin/sh

cd $(dirname ${0})

#-------------------------------------
# Vim and Neovim
#-------------------------------------

vim_home=~/.vim

mkdir -p ${vim_home}
ln -sf `pwd`/vim/vimrc ~/.vimrc
ln -sf `pwd`/vim/gvimrc ~/.gvimrc
ln -sf `pwd`/vim/rc ${vim_home}/rc

nvim_home=~/.nvim

mkdir -p ${nvim_home}
mkdir -p ~/.config/nvim
ln -sf `pwd`/vim/vimrc ~/.config/nvim/init.vim
ln -sf `pwd`/vim/rc ${nvim_home}/rc

