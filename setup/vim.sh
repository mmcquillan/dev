#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "set history=700" > ~/.vimrc
echo "set autoread" >> ~/.vimrc
echo "set so=7" >> ~/.vimrc
echo "set ruler" >> ~/.vimrc
echo "set cmdheight=2" >> ~/.vimrc
echo "set backspace=eol,start,indent" >> ~/.vimrc
echo "set ignorecase" >> ~/.vimrc
echo "set smartcase" >> ~/.vimrc
echo "set hlsearch" >> ~/.vimrc
echo "set incsearch" >> ~/.vimrc
echo "set showmatch" >> ~/.vimrc
echo "set mat=2" >> ~/.vimrc
echo "set noerrorbells" >> ~/.vimrc
echo "set novisualbell" >> ~/.vimrc
echo "set t_vb=" >> ~/.vimrc
echo "set tm=500" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "set nobackup" >> ~/.vimrc
echo "set nowb" >> ~/.vimrc
echo "set noswapfile" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
echo "set smarttab" >> ~/.vimrc
echo "set shiftwidth=4" >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc
echo "set ai "Auto indent" >> ~/.vimrc
echo "set si "Smart indent" >> ~/.vimrc
echo "set wrap "Wrap lines" >> ~/.vimrc
echo "set shell=/bin/bash" >> ~/.vimrc
echo "call plug#begin('~/.vim/plugged')" >> ~/.vimrc
echo "Plug 'fatih/vim-go'" >> ~/.vimrc
echo "Plug 'jiangmiao/auto-pairs'" >> ~/.vimrc
echo "call plug#end()" >> ~/.vimrc

echo 'run vim and :PlugInstall'
echo 'run vim and :GoInstallBinaries'
