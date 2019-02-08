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

"set statusline=%t\ %y%m%r[%{&fileencoding}]%<[%{strftime(\"%d.%m.%y\",getftime(expand(\"%:p\")))}]%k%=%-14.(%l,%c%V%)\ %P

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

" Neocomplete bundle settings
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"
" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
