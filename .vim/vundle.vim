Bundle 'gmarik/vundle'

" Colorschemes {{{

Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'

" }}}


" Features {{{

"Bundle 'wincent/Command-T'
Bundle 'kien/ctrlp.vim'

Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'


Bundle 'Shougo/vimproc'

Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

Bundle 'lordm/vim-browser-reload-linux'

" }}}


" Filetypes {{{

" JavaScript
Bundle 'marijnh/tern_for_vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'bergren2/JavaScript-Indent'


" Markdown
Bundle 'hallison/vim-markdown'

" Haskell
Bundle 'adinapoli/cumino'
Bundle 'bitc/vim-hdevtools'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'dag/vim2hs'

" Handlebars
Bundle 'nono/vim-handlebars'

" }}}

" Python
Bundle 'nvie/vim-flake8'
Bundle 'tell-k/vim-autopep8'
" }}}


" Reloading {{{

augroup Vundle
  auto!
  auto BufWritePost ~/.vim/vundle.vim nested source ~/.vim/vundle.vim
augroup END

" }}} Reloading
