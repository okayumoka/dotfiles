#!/bin/sh

cd $(dirname ${0}) 

#-------------------------------------
# vim and neovim
#-------------------------------------

vim_home=~/.vim

mkdir ${vim_home}
ln -sf `pwd`/vim/vimrc ~/.vimrc
ln -sf `pwd`/vim/rc ${vim_home}/rc

