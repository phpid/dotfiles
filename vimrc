" no compatible mode   
set nocompatible

set background=dark

" show row numbers
set nu

" set standard setting for PEAR coding standards
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set ai " enable autoindents for new rows
set cin " c style indents
syntax on

" Enable line break wrapping
set wrap
set linebreak

" enable mouse support
set mouse=a
set mousemodel=popup
" disable mous in non-gui mode
if !has('gui_running')
set mouse=
endif

" disable menu and toolbar in gui
"set guioptions-=T
"set guioptions-=m

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
set listchars=tab:··
set list

"set statusline=%t\ %y%m%r[%{&fileencoding}]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P

" docblock comments are continued when a newline is inserted
set comments=sr:/*,mb:*,ex:*/
set backspace=indent,eol,start

let g:solarized_termcolors=256
colorscheme solarized
set t_Co=256

" enable filetype settings
filetype on
filetype plugin on
filetype indent on

" C-c and C-v - Copy/Paste to the global clipboard
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

if has("autocmd")
    autocmd BufRead *.sql set filetype=mysql      
endif


"Use TAB to complete when typing words, else inserts TABs as usual.
""Uses dictionary and source files to find matching words to complete.

"See help completion for source,
""Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
""Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
" ------------
" PHP settings
" -----------
set dictionary=~/.vim/dic/php
set makeprg=php\ -l\ %
set errorformat=%m\ in\ %f\ on\ line\ %l
" enable folding 
"let php_folding = 1
"
" do not allow short tags
let php_noShortTags = 1
"
" highlight SQL inside PHP strings
let php_sql_query=1
"
" hightlist HTML inside PHP strings
let php_htmlInStrings=1 
"
" Highlight basic PHP functions
let php_baselib = 1
