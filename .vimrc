runtime macros/matchit.vim

call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'jgdavey/tslime.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'keith/swift.vim'
Plug 'lervag/vimtex'
Plug 'mhartington/oceanic-next'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'w0rp/ale'

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --rust-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }

call plug#end()

" Plugin Configuration
" ===================

let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

map <C-n> :NERDTreeToggle<CR>

" Syntax
" ======

set termguicolors
syntax enable
colorscheme OceanicNext

" General Config
" ==============

let mapleader=','

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-p> :FZF<CR>
tnoremap <Esc> <C-\><C-n>

nnoremap j gj
nnoremap k gk
nnoremap <CR> o<Esc>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

command W w
command Q q

set autoread                    " Reload files changed outside vim
set backspace=indent,eol,start  " Allow backspace in insert mode
set encoding=utf-8
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history
set laststatus=2                " Always show status line
set lazyredraw
set number
set relativenumber
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set splitbelow                  " Opens horizontal split below current window
set splitright                  " Opens vertical split right of current window
set updatetime=1000

" Colors
" ======

let g:gitgutter_override_sign_column_highlight = 0
set noshowmode

" Git Config
" ==========

autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal spell

" Search Settings
" ===============

set incsearch        " Find the next match as we type the search
set hlsearch         " Hilight searches by default
set ignorecase       " Search case insensitively
set smartcase        " Search case sensitively if our search contains uppercase letters
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

" Turn Off Swap Files
" ===================

set noswapfile
set nobackup
set nowritebackup

" Indentation and Display
" =======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set numberwidth=4
set nowrap

" Completion
" ==========

set wildmode=longest,list,full
set wildmenu                        " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~,*.a     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*

" Scrolling
" =========

set scrolloff=10
set sidescrolloff=15
set sidescroll=1
