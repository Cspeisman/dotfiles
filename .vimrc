autocmd VimEnter * wincmd p 
syntax on

" Add full file path to your existing statusline
set hlsearch
set noswapfile
set wrap
set showcmd
set ignorecase
set smartcase
set splitright
set number
set fileformats+=dos
set binary
set noeol
set tabstop=4
set expandtab
set shiftwidth=2 
set softtabstop=2
set autoread
set autoindent
set ls=2
set wmw=0                     " set the min width of a window to 0 so we can maximize others 
set wmh=0                     " set the min height of a window to 0 so we can maximize others
set clipboard=unnamedplus
colorscheme tomorrow-night-eighties

" Cursorline {{{
" Only show cursorline in the current window and in normal mode.
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-t> gt

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" because I type too fast
cmap WQ wq
cmap Wq wq
cmap W w
cmap Q q

" move one line at a time
noremap j gj
noremap k gk

" easy indenting
noremap > >>
noremap < <<
vnoremap > >gv
vnoremap < <gv

" quick escape
inoremap jj <Esc>  

" keep the cursor centered on screen
set scrolloff=999

" let me know when my lines are too long
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=8 et sw=4 sts=4 
