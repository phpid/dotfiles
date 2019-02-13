set nocompatible " not compatible with vi
set autoread " detect when a file is changed
set background=dark

set ruler " show line, column number, and relative position
"set relativenumber " show relative line number (overrides 'number' if last)
set number " show row numbers (overrides 'relativenumber' if last)

" set up colorscheme before other color changes
set t_Co=256 " explicitly tell Vim that the terminal supports 256 colorsspace
colorscheme distinguished
syntax on " turn on syntax highlighting (more readable files)

" color column settings
set textwidth=80
set colorcolumn=+1
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
set wrap " turn on line break wrapping
set linebreak " set soft wrapping

" Tab control 
set tabstop=4 " the visible width of tabs
set softtabstop=4 " number of spaces to use for tab
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " indent to nearest 'tabstop' 
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set expandtab " insert spaces rather than tabs for <Tab>
set autoindent " carries over previous indent to the next line
set smartindent " smart 'autoindent' to match C-style blocks '{', '}', '#'
set cin " enable c-style indents

" User Interface
set clipboard=unnamed " Use global system clipboard
set scrolljump=7 " number of lines to scroll off the screen
set scrolloff=7 " number of lines to keep above and below the cursor
set hidden " current buffer can be put into background between windows
set fileformats=unix
set termencoding=utf-8
set ttyfast " faster redrawing
set lazyredraw " speed up macros. do not redraw screen while executing macros

" show tabs as dots
set listchars=tab:▸\ ,eol:¬
set list

" Searching
" when you start searching text with /, search is performed at every new
" character insertion
set incsearch " incremental search (useful when searching large text files)
set hlsearch " turns on highlighting for matched search patterns
set ignorecase " case insensitive search
set smartcase " case-sensitive if expression contains a capital letter

set showmatch " jump to the matching bracket seen on the screen
hi MatchParen cterm=reverse ctermbg=yellow ctermfg=blue " change matching color

" setup folders for temporary files
set backupdir=~/.vim/.backup
set directory=~/.vim/.swap
set undodir=~/.vim/.undo

" docblock comments are continued when a newline is inserted
set comments=sr:/*,mb:*,ex:*/
set backspace=indent,eol,start

" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" C-c and C-v - Copy/Paste to the global clipboard
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" enable filetype settings
filetype on
filetype plugin on
filetype indent on
"set omnifunc=syntaxcomplete#Complete

autocmd FileType css setlocal ts=2 sts=2 sw=2 
autocmd FileType html,markdown setlocal ts=2 sts=2 sw=2 
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

"if has("autocmd")
"    autocmd BufRead *.sql set filetype=mysql      
"endif

"let g:airline#extensions#tabline#enabled = 1
"let g:SuperTabCrMapping = 0

" Plugins configuration
"
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
" npm install -g eslint
" npm install -g babel-eslint
" npm install -g eslint-plugin-react
" configure linter in ~/.eslintrc
let g:syntastic_javascript_checkers=['eslint']

