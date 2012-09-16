Bundle 'gmarik/vundle'

" Colorschemes {{{

Bundle 'nanotech/jellybeans.vim'

" }}}


" Features {{{

Bundle 'wincent/Command-T'

Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'
Bundle 'SirVer/ultisnips'

Bundle 'Shougo/vimproc'

Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rvm'

" }}}


" Filetypes {{{

" Markdown
Bundle 'hallison/vim-markdown'

" Haskell
Bundle 'adinapoli/cumino'
Bundle 'bitc/vim-hdevtools'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'dag/vim2hs'

" }}}


" Reloading {{{

augroup Vundle
  auto!
  auto BufWritePost ~/.vim/vundle.vim nested source ~/.vim/vundle.vim
augroup END

" }}} Reloading
