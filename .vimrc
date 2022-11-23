" Vundle {{{
set nocompatible
filetype off
let mapleader = '\'
let maplocalleader = ','
let g:vundle_default_git_proto = 'git'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Colorschemes {{{

Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'blueshirts/darcula'

" }}}


" Features {{{

"Plugin 'wincent/Command-T'
Plugin 'kien/ctrlp.vim'

Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'


Plugin 'Shougo/vimproc'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

"Plugin 'lordm/vim-browser-reload-linux'

" }}}


" Filetypes {{{

" JavaScript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'


" Markdown
Plugin 'hallison/vim-markdown'

" Haskell
Plugin 'adinapoli/cumino'
Plugin 'bitc/vim-hdevtools'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'ujihisa/neco-ghc'
Plugin 'dag/vim2hs'

" Handlebars
Plugin 'nono/vim-handlebars'

" }}}

" Python
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
" }}}

call vundle#end()

filetype plugin indent on

" }}} Vundle

" Colorscheme {{{

set t_Co=256
colorscheme darcula

" for transparent background
function! AdaptColorscheme()
   highlight clear CursorLine
   highlight Normal ctermbg=none
   highlight LineNr ctermbg=none
   highlight Folded ctermbg=none
   highlight NonText ctermbg=none
   highlight SpecialKey ctermbg=none
   highlight VertSplit ctermbg=none
   highlight SignColumn ctermbg=none
endfunction
autocmd ColorScheme * call AdaptColorscheme()

highlight Normal guibg=NONE ctermbg=NONE
highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
highlight clear LineNr
highlight clear SignColumn
highlight clear StatusLine


" Change Color when entering Insert Mode
autocmd InsertEnter * set nocursorline

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * set nocursorline
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
map <leader>d :split<CR> :YcmCompleter GoTo<CR>

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

" Commands {{{
command CDC cd %:p:h
command LCDC lcd %:p:h
" }}} Commands

" Indentation {{{

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

set backspace=indent,eol,start

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

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

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

" au FileType javascript call JavaScriptFold()
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" }}} JavaScript

" Python {{{
autocmd BufWritePost *.py call Flake8()
" }}}
