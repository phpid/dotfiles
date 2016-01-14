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

" enable mouse support
set mouse=a
set mousemodel=popup
" disable mous in non-gui mode
if !has('gui_running')
    set background=dark
    set mouse=
else
    set background=light
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


"Use TAB to complete when typing words, else inserts TABs as usual.
""Uses dictionary and source files to find matching words to complete.

"See help completion for source,
""Note: usual completion is on <C-n> but more trouble to press all the time.
"Never type the same word twice and maybe learn a new spellings!
""Use the Linux dictionary when spelling is in doubt.
"Window users can copy the file to their machine.
"function! Tab_Or_Complete()
"  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-N>"
"  else
"    return "\<Tab>"
"  endif
"endfunction
"inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
" ------------
" PHP settings
" -----------
"set dictionary=~/.vim/dic/php
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

" fix vim erros when run in fish shell
set shell=/bin/sh

execute pathogen#infect()
call pathogen#helptags()

let g:airline#extensions#tabline#enabled = 1

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
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

map <F2> :mksession! ~/vim_session <cr> " Quick write session with F2
map <F3> :source ~/vim_session <cr>     " And load session with F3
