#!/bin/sh

echo "backup old vim config..."
mv ~/.vim ~/.vim.orig
mv ~/.vimrc ~/.vimrc.orig
echo "backup done"

echo "install new vim config..."
git clone git://github.com/nxbtch/dot-vimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "enter vim and enter :PluginInstall to complete the installation"
