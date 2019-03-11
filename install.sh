#!/bin/sh

cd $(dirname ${0})
current=`pwd`

git_user=$1
git_email=$2
env=$3

echo "===================================="
echo "Gitユーザー名: "$git_user
echo "Gitメールアドレス: "$git_email
echo "環境: "$env
echo "===================================="

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


#-------------------------------------
# fish
#-------------------------------------
if [ $env = "mac" ]; then
  ln -sf ${current}/fish/fishfile.mac ~/.config/fish/fishfile
  ln -sf ${current}/fish/config.fish.mac ~/.config/fish/config.fish
elif [ $env = "ubuntu" ]; then
  ln -sf ${current}/fish/fishfile.ubuntu ~/.config/fish/fishfile
  ln -sf ${current}/fish/config.fish.ubuntu ~/.config/fish/config.fish
fi

#-------------------------------------
# alacritty
#-------------------------------------

if [ $env = "mac" ]; then
  ln -sf ${current}/alacritty/alacritty.yml.mac ~/.config/alacritty/alacritty.yml
fi


#-------------------------------------
# Git
#-------------------------------------
ln -sf ${current}/git/_gitconfig ~/.gitconfig
cp ${current}/git/_gitconfig.local.template ~/.gitconfig.local
cat ${current}/git/_gitconfig.local.template | \
  sed "s/git_user/$git_user/g" | \
  sed "s/git_email/$git_email/g" \
  > ~/.gitconfig.local

echo "インストールが完了しました。"

