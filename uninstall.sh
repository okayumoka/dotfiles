#!/bin/sh

cd `dirname ${0}`

#-------------------------------------
# vim and neovim
#-------------------------------------

vim_home=~/.vim

rm -rf ~/.vimrc
rm -rf ${vim_home}

nvim_home=~/.nvim

rm -rf ~/.config/nvim
rm -rf ${nvim_home}

