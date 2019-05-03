let g:elm_setup_keybindings = 0

set nocompatible

" Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim,~/vimfiles/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ElmCast/elm-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'beyondmarc/glsl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rust-lang/rust.vim'
Plugin 'fsharp/vim-fsharp'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'cespare/vim-toml'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'shmup/vim-sql-syntax'
Plugin 'desert256.vim'
Plugin 'pboettch/vim-cmake-syntax'

call vundle#end()
filetype plugin indent on

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set ruler
set incsearch
set number
set backspace=indent,eol,start whichwrap+=<,>,[,]
set nowrap
set linebreak    " for when we do want wrap
set hidden
set cino=g0,(0
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
