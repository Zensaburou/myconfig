#!/bin/bash
##### Sets up vim plugins

mkdir ~/.vim

# Pathogen package manager
cd ~/.vim
git init
git remote add origin https://github.com/tpope/vim-pathogen.git
git pull origin master

mkdir ~/.vim/bundle
mkdir ~/.vim/plugin

# Install plugins
cd ~/.vim/bundle/

git clone https://github.com/Yggdroot/indentLine.git
git clone git://github.com/tpope/vim-endwise.git
git clone git://github.com/jeetsukumaran/vim-indentwise.git

# Set path for pathogen plugins
echo "execute pathogen#infect()" >> ~/.vimrc

# Sym link
ln -s ./lib/support/vim ~/.vim_aliases

# Create .vimrc
touch ~/.vimrc
echo "source ~/.vim_aliases" >> ~/.vimrc
