" no compatible mode   
set nocompatible

set background=dark

" show row numbers
set nu
" show line, column number, and relative position
set ruler

" set standard setting for PEAR coding standards
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set showmatch
set ai " enable autoindents for new rows
set cin " c style indents
syntax enable

" Enable line break wrapping
set wrap
set linebreak

" when you start searching text with /, search is performed at every new
" character insertion
set incsearch
set hlsearch
set ignorecase

set scrolljump=7
set scrolloff=7
set hidden
set fileformats=unix,dos
set termencoding=utf-8
" speed up macros
set lazyredraw

" show tabs as dots
set listchars=tab:▸\ ,eol:¬
set list

" setup folders for temporary files
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swap//
set undodir=~/.vim/.undo//

" docblock comments are continued when a newline is inserted
set comments=sr:/*,mb:*,ex:*/
set backspace=indent,eol,start

set t_Co=256
" let g:solarized_termcolors=256
colorscheme distinguished

" enable filetype settings
filetype on
filetype plugin on
filetype indent on

" C-c and C-v - Copy/Paste to the global clipboard
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

"if has("autocmd")
"    autocmd BufRead *.sql set filetype=mysql      
"endif


let g:airline#extensions#tabline#enabled = 1
let g:SuperTabCrMapping = 0
