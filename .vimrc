" Vundle {{{
set nocompatible
filetype off
let mapleader = '\'
let maplocalleader = ','
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
runtime vundle.vim

" }}} Vundle

" Colorscheme {{{

set t_Co=256
colorscheme jellybeans

" }}} Colorscheme


" IDE {{{

filetype plugin indent on
syntax on
set omnifunc=syntaxcomplete#Complete
set completeopt=menu

" }}} IDE


" Mappings {{{

nmap <leader>l :set list!<CR>
nnoremap <silent> <leader>tcc :call toggle#colorcolumn()<CR>
nnoremap <silent> <leader>tsp :setlocal spell!<CR>
nnoremap <silent> <leader>tcu :setlocal cursorline! cursorcolumn!<CR>
nnoremap <silent> <leader>tnu :call toggle#relativenumber()<CR>
nnoremap <silent> <leader>tsy :SyntasticToggleMode<CR>
nnoremap <silent> <leader>tne :NERDTreeToggle<CR>
nnoremap <silent> <leader>tli :setlocal wrap! list!<CR>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" }}} Mappings


" Indentation {{{

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" }}} Indentation


" Wrapping {{{

let &showbreak = '➥ '
set linebreak
set nowrap
set textwidth=75

" }}} Wrapping

" Behavior {{{

set autowriteall
set confirm
set hidden
set keywordprg=:help
"set modeline
set path+=bin
set path+=src
set path+=test
set undofile

" }}} Behavior


" Interface {{{

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set ruler
set showcmd

set number
set listchars=tab:▸\ ,eol:¬,trail:!
set list

" }}} Interface


" Completion {{{

set wildignore=.*.*~,.*.sw?,.swp,*.hi,*.o
set wildmenu
set wildmode=list:longest,list:full
" }}} Completion


" Search {{{

set gdefault
set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase

" }}} Search


" Plugins {{{

let g:ctrlp_custom_ignore             = '\v%(\.git|_darcs|cabal-dev|dist|state|tags)$'
let g:ctrlp_working_path_mode         = 0
let g:cumino_default_terminal         = '/usr/bin/gnome-terminal'
let g:neocomplcache_enable_at_startup = 1
let g:syntastic_enable_highlighting   = 0
let g:syntastic_stl_format            = '%E{ E:%fe }'
let g:UltiSnipsDontReverseSearchPath  = 1
let NERDTreeIgnore                    = [g:ctrlp_custom_ignore]

let &statusline = join([
  \ '%<%f %h%m%r',
  \ '[%{pathshorten(substitute($PWD, "^" . $HOME, "~", ""))}]',
  \ '%{fugitive#statusline()}',
  \ '%=%-14.(%l,%c%V%) %P',
  \ '%#ErrorMsg#%{SyntasticStatuslineFlag()}%*',
  \ ])

" }}} Plugins


" Haskell {{{

let g:haddock_browser          = 'open'
let g:haddock_browser_callformat = "%s %s"
let g:haskell_conceal_wide     = 1
let g:haskell_autotags         = 1
let g:haskell_tags_generator   = 'hasktags'
let g:hpaste_author            = 'tylerkahn'

let g:syntastic_haskell_checker_args =
  \ '--hlintOpt="--language=XmlSyntax" --hlintOpt="--ignore=Use import/export shortcut" --ghcOpt="-fno-warn-name-shadowing"'

" }}} Haskell
