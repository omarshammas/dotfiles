#!/usr/bin/env bash

echo 'Initializing Submodules'
git submodule init
git submodule update


echo 'Deleting Old Dotfiles'
rm ~/.gemrc 
rm ~/.gitconfig
rm ~/.gitignore
rm ~/.gvimrc
rm ~/.tmux.conf
rm ~/.vim
rm ~/.vimrc
rm ~/.zshrc
rm ~/.oh-my-zsh/themes/omarshammas.zsh-theme

echo 'Symlinking Files'
DOTFILES=~/Github/dotfiles
ln -s $DOTFILES/gemrc ~/.gemrc 
ln -s $DOTFILES/gitconfig ~/.gitconfig
ln -s $DOTFILES/gitignore ~/.gitignore
ln -s $DOTFILES/tmux.conf ~/.tmux.conf
ln -s $DOTFILES/vim ~/.vim
ln -s $DOTFILES/vimrc ~/.vimrc
ln -s $DOTFILES/zshrc ~/.zshrc
ln -s $DOTFILES/omarshammas.zsh-theme ~/.oh-my-zsh/themes/omarshammas.zsh-theme

echo 'Updating Submodules'
git submodule foreach git pull origin master --recurse-submodules


echo 'All Done'
