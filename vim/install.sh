#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./vimrc ~/.vimrc
echo 'run vim and :PlugInstall'
echo 'run vim and :GoInstallBinaries'
