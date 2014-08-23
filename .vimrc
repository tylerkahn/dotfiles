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

if has("gui_running")
  set guioptions-=T " Removes top toolbar
  set guioptions-=r " Removes right hand scroll bar
  set go-=L " Removes left hand scroll bar
endif

set shell=/bin/sh

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

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

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
set clipboard=unnamed

" }}} Behavior

" Folding {{{

set foldmethod=syntax
set foldlevelstart=20

" }}} Folding


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
"
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  let g:ctrlp_use_caching = 0

  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif
let g:ctrlp_custom_ignore             = '\v%(\.git|_darcs|cabal-dev|dist|state|tags)$'
let g:ctrlp_working_path_mode         = 'ra'
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

" JavaScript {{{

au FileType javascript call JavaScriptFold()

" }}} JavaScript

" Python {{{
autocmd BufWritePost *.py call Flake8()
" }}}
