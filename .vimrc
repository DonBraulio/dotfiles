filetype off
filetype plugin indent on

" Prerequisite: install curl
"
" (Optional) Automatically install vim-plug:
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'maralla/completor.vim'
call plug#end()

syntax on
colorscheme donbr

set nocompatible
set number
" set relativenumber
set modelines=0

set nobackup
set nowritebackup
set noswapfile

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set splitbelow


nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set wrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=100

let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

nnoremap j gj
nnoremap k gk
nnoremap <leader>v V`]
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-o> :Buffers<CR>
nnoremap <C-f>g :Ag<CR>
nnoremap <C-f>c :Commands<CR>
nnoremap <C-f>l :BLines<CR>
nnoremap <C-p> :Files<CR>

imap <c-l> <plug>(fzf-complete-line)
map <C-n> :NERDTreeToggle<CR>

" Git commits format:
autocmd Filetype gitcommit setlocal spell textwidth=72

" ALE
" set statusline += {ALEGetStatusLine()}
" let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
\   'python': ['flake8'],
\}

