"Use Vim settings, rather then Vi settings
set nocompatible

" Vundle setup
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'nanotech/jellybeans.vim'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'tomasr/molokai'
Plugin 'w0ng/vim-hybrid'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'

Plugin 'luochen1990/rainbow'
Plugin 'davidhalter/jedi-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-commentary'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-unimpaired'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'majutsushi/tagbar'
Plugin 'vim-latex/vim-latex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'gcmt/taboo.vim'
Plugin 'godlygeek/tabular'
Plugin 'gregsexton/VimCalc'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'


call vundle#end()
" end of Vundle

"load ftplugins and indent files
filetype plugin indent on
filetype on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"leader
let mapleader = ","

"map ESC to JK
inoremap jk <ESC>
"insert a new line without entering insert mode
nnoremap oo o<Esc>k
nnoremap OO O<Esc>j

"move between wrapped lines using j k
nnoremap j gj
nnoremap k gk

"remove trailing space
nnoremap <F2> :%s/\s\+$//g <cr> :noh<cr>

vmap <C-c> "+y
vmap <C-v> "+gP
vmap <C-x> "+x

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"END OF MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"appearance configurations
set background=dark
colorscheme lucius
set t_Co=256            "use 256 colors in terminal
set t_ut=
" set guifont=DejaVu\ Sans\ Mono\ 12
set guifont=Source\ Code\ Pro\ 12
" set guifont=Cousine\ 11
set guioptions-=T       "remove toolbar
set guioptions-=m       "remove menu
set guioptions-=r       "remove rightscroll

set cc=80

"no swap and backup
set noswapfile
set nobackup

cd %:p:h
set noautochdir

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"solve E764
set omnifunc=syntaxcomplete#Complete

set lines=30 columns=85

set number
set relativenumber

"set nowrap               " dont wrap lines
set linebreak            " wrap lines at convenient points

set mouse=a              " enable mouse

set ruler

set wildmenu             " enable ctrl-n/p to scroll thru matches
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title

set showcmd              " show incomplete cmds down the bottom
set showmode             " show current mode down the bottom

set incsearch            " find the next match as we type the search
set hlsearch             " hilight searches by default

set ignorecase
set smartcase

syntax on

"indentation settings
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace


"taboo settings
set sessionoptions+=tabpages,globals
let g:taboo_tab_format="%N %f"

"vim-latex settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat ='pdf'
let g:Tex_UseMakefile = 0


"double rainbow aha
let g:rainbow_active = 0
nnoremap <Leader>~ :RainbowToggle<CR>
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}


"ctrlp settings
" Set this to 1 to set searching by filename (as opposed to full path) as the
" default:
let g:ctrlp_by_filename = 1
" Set this to 1 to set regexp search as the default:
let g:ctrlp_regexp = 1
" 1 - the parent directory of the current file.
" 2 - the nearest ancestor that contains one of these directories or files:
"     .git/ .hg/ .svn/ .bzr/ _darcs/
" 0 - don't manage working directory.
let g:ctrlp_working_path_mode = 0
" Set this to 1 to enable the lazy-update feature: only update the match window
" after typing been stopped for a certain amount of time:
" If is 1, update after 250ms. If bigger than 1, the number will be used as the
" delay time in milliseconds.
let g:ctrlp_lazy_update = 1
" The maximum number of files to scan, set to 0 for no limit:
let g:ctrlp_max_files = 0
" Set the maximum height of the match window:
let g:ctrlp_max_height = 40
" In addition to |'wildignore'|, use this for files and directories you want only
" CtrlP to not show. Use regexp to specify the patterns:
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll|elf|o|obj|class|jar
    \               |png|jpg|jpeg|bmp|vsd|vsdx|doc|docx|xls|xlsx)$',
    \ 'link': '',
    \ }


"You Complete Me
" let g:loaded_youcompleteme = 0
let g:jedi#completions_enabled = 0
let g:ycm_complete_in_comments = 1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_complete_in_strings = 1
let g:ycm_show_diagnostics_ui = 0

let g:neocomplcache_enable_at_startup = 0


"Ultisnips
"Trigger configuration
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"vim-commentary
"gcc
autocmd FileType python set commentstring=#\ %s
autocmd FileType java set commentstring=//\ %s
autocmd FileType c set commentstring=//\ %s
autocmd FileType cpp set commentstring=//\ %s


"Bufexplorer
nnoremap <F7> :BufExplorer<cr>


"Tagbar
nnoremap <F8> :TagbarToggle<cr>


"yankstack
let g:yankstack_map_keys = 0
nmap <Leader>j <Plug>yankstack_substitute_older_paste
nmap <Leader>k <Plug>yankstack_substitute_newer_paste
nnoremap <F10>: Yanks<CR>


"jedi-vim settings
let g:jedi#usages_command = "<leader>s"
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 1
let g:jedi#show_call_signatures = 0
let g:jedi#squelch_py_warning = 1
autocmd FileType python setlocal completeopt-=preview


"airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'


"enable fenced code block syntax highlighting in your markdown documents
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
