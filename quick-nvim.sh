#!/bin/bash

# Creating a new .config/nvim
mkdir -p ~/.config/nvim

# Creating init.vim and adding quick config
echo "let mapleader=' '" > ~/.config/nvim/init.vim
echo "set number" >> ~/.config/nvim/init.vim
echo "set relativenumber" >> ~/.config/nvim/init.vim
echo "call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')" >> ~/.config/nvim/init.vim
echo "Plug 'tpope/vim-sensible'" >> ~/.config/nvim/init.vim
echo "Plug 'junegunn/seoul256.vim'" >> ~/.config/nvim/init.vim
echo "Plug 'ghifarit53/tokyonight-vim'" >> ~/.config/nvim/init.vim
echo "Plug 'preservim/nerdtree'" >> ~/.config/nvim/init.vim
echo "call plug#end()" >> ~/.config/nvim/init.vim
echo "set termguicolors" >> ~/.config/nvim/init.vim
echo "let g:tokyonight_style = 'night'" >> ~/.config/nvim/init.vim
echo "let g:tokyonight_enable_italic = 1" >> ~/.config/nvim/init.vim
echo "colorscheme tokyonight" >> ~/.config/nvim/init.vim
echo "nnoremap <leader>m :NERDTreeFocus<CR>" >> ~/.config/nvim/init.vim
echo "nnoremap <c-n> :NERDTree<CR>" >> ~/.config/nvim/init.vim
echo "nnoremap <c-t> :NERDTreeToggle<CR>" >> ~/.config/nvim/init.vim
echo "nnoremap <c-f> :NERDTreeFind<CR>" >> ~/.config/nvim/init.vim

# VimPlug install
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Remember to source your configuration and :PlugInstall"
