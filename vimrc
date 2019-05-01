let g:elm_setup_keybindings = 0

call pathogen#infect()
call pathogen#helptags()

set nocompatible
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch

set hidden

set cino=g0,(0

" disable beeping
set vb t_vb=

let g:netrw_liststyle=3     " Tree mode view
let g:netrw_browse_split=4  " Open file in previous buffer
let g:netrw_preview=1       " Preview window shown in vsplit
let g:netrw_winsize=20      " Make netrw window smaller

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=25
let g:ctrlp_custom_ignore='node_modules'

let g:clojure_align_multiline_strings=1
autocmd BufNewFile,BufRead *.edn setfiletype clojure

set ruler
set incsearch
set number
set backspace=indent,eol,start whichwrap+=<,>,[,]
set nowrap
set linebreak    " for when we do want wrap

if has('mouse')
    set mouse=a
endif

if has('vms')
    set nobackup
else
    set backup
endif

if has('gui_running') || $TERM == "xterm"
    let &t_Co = 256
endif

if &t_Co > 2
    syntax on
    highlight comment ctermfg=darkgray
    set hlsearch

endif

filetype plugin indent on
colorscheme xcode-dusk " desert256

if has('autocmd')
    augroup vimrcEx
        autocmd!
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
        autocmd BufNewFile,BufRead *.rml set filetype=xml
        autocmd BufNewFile,BufRead *.rcss set filetype=css
        autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        autocmd WinLeave * setlocal nocursorline
    augroup END
endif

if has('multi_byte')
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1,ucs-2le
endif

"
" MAPPINGS
"

map <Leader>nt :NERDTree<cr>
