"""""""""""""""""""""""""""""""""
" Andreas Halkjær From - .vimrc "
"""""""""""""""""""""""""""""""""

" Nocompatible, Pathogen and filetype {
set nocompatible
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin on
filetype plugin indent on
" }

" General settings {
let mapleader=","
set encoding=utf-8
set hidden
set wildmenu
set wildmode=list:longest
set backspace=indent,eol,start
set completeopt=menu,menuone,longest
set modelines=0
set mouse-=a
let g:ackprg="ack -H --nocolor --nogroup --column"
let g:ctrlp_working_path_mode=0

"" Vim-Latex {
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat="pdf"
"" }
" }

" Autocommands {
if has('autocmd')
  au FocusLost * :silent! wall
  au VimResized * :wincmd =
  autocmd BufReadPost * set formatoptions-=cro |

  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

  "" Spellchecking {
  autocmd BufRead *
        \ set nospell |
        \ if match(@%, "Dansk") >= 0 |
        \   set spell |
        \   set spelllang=da |
        \ endif |
        \ if match(@%, "English") >= 0 |
        \   set spell |
        \   set spelllang=en |
        \ endif |
  ""}
endif
" }

"  Appearance {
syntax on
set scrolloff=3
set showmode
set showcmd
set cursorline
set visualbell
set ruler
set laststatus=2
set relativenumber
set gcr=a:blinkon0
set bg=dark
colorscheme badwolf
if has('gui_running')
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
else
  set ttyfast
endif
" }

" Indentation {
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
" }

" Backup files and settings {
set undofile
set backup
set noswapfile
set backupdir=~/.vimbackup/
set undodir=~/.vimbackup/
set dir=~/.vimbackup/
set history=1000
set undoreload=10000
" }

" Supertab {
let g:SuperTabDefaultCompletionType="<c-n>"
let g:SuperTabLongestHighlight=1
" }

" Improved searching {
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
" }

" Handle long lines {
set wrap
set textwidth=79
set colorcolumn=85
" }

" Mappings {
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }
