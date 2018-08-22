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

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
:silent! autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

let g:pyflakes_use_quickfix = 0
let g:pyflakes_perfer_python_version = 3
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/opt/conda/bin/python'
let g:LanguageClient_serverCommands = {'python': ['/opt/conda/bin/pyls'],
			\ 'java': ['/usr/bin/jdtls'],
			\ 'r': ['R', '--quiet', '--slave', '-e', 'languageserver::run()']}

syntax on
filetype plugin indent on
filetype plugin on
cd ~

:silent! colorscheme gruvbox
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
autocmd FileType java :set fdm=syntax
autocmd FileType python :set fdm=indent

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap “ <Esc>
endif

" nnoremap <C-v> "+p 
" vmap <C-c> "+yi
" vmap <C-x> "+ci

" Terminal mode:
tnoremap ˙ <c-\><c-n><c-w>h
tnoremap ∆ <c-\><c-n><c-w>j
tnoremap ˚ <c-\><c-n><c-w>k
tnoremap ¬ <c-\><c-n><c-w>l
tnoremap <M-h> <c-\><c-n><c-w>h
tnoremap <M-j> <c-\><c-n><c-w>j
tnoremap <M-k> <c-\><c-n><c-w>k
tnoremap <M-l> <c-\><c-n><c-w>l
" Insert mode:
inoremap ˙ <Esc><c-w>h
inoremap ∆ <Esc><c-w>j
inoremap ˚ <Esc><c-w>k
inoremap ¬ <Esc><c-w>l
inoremap <M-h> <Esc><c-w>h
inoremap <M-j> <Esc><c-w>j
inoremap <M-k> <Esc><c-w>k
inoremap <M-l> <Esc><c-w>l
" Visual mode:
vnoremap ˙ <Esc><c-w>h
vnoremap ∆ <Esc><c-w>j
vnoremap ˚ <Esc><c-w>k
vnoremap ¬ <Esc><c-w>l
vnoremap <M-h> <Esc><c-w>h
vnoremap <M-j> <Esc><c-w>j
vnoremap <M-k> <Esc><c-w>k
vnoremap <M-l> <Esc><c-w>l
" Normal mode:
nnoremap ˙ <c-w>h
nnoremap ∆ <c-w>j
nnoremap ˚ <c-w>k
nnoremap ¬ <c-w>l
nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l
