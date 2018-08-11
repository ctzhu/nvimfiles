" 1. install Python Language Server:
" pip install python-language-server
" pip install python-language-server[all]
" 2, the Pathogen and Plug
" curl -LkSso ./autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" curl -LkSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

call plug#begin('~/.config/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'chrisbra/csv.vim'
Plug 'elzr/vim-json'
Plug 'itchyny/lightline.vim'
Plug 'kevinw/pyflakes-vim'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'
Plug 'nvie/vim-flake8'
Plug 'roxma/nvim-yarp'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

" nnoremap <C-v> "+p 
vmap <C-c> "+yi
vmap <C-x> "+ci

" autocmd Filetype java setlocal omnifunc=javacomplete#Complete
" nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
let g:python_host_prog = '/Users/user/conda/envs/py27/bin/python'
let g:python3_host_prog = '/Users/user/conda/bin/python'
let g:LanguageClient_serverCommands = {'python': ['/Users/user/conda/bin/pyls']}
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

syntax on
filetype plugin indent on
filetype plugin on
let g:pyflakes_use_quickfix = 0
let g:pyflakes_perfer_python_version = 3
cd ~

colorschem gruvbox
set background=dark
set number
set wrap!
set list
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent

