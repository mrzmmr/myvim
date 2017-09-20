" Setup NeoBundle
  let bundleExists = 1
  if (!isdirectory(expand("$HOME/.nvim/bundle/neobundle.vim")))
    call system(expand("mkdir -p $HOME/.nvim/bundle"))
    call system(expand("git clone https://github.com/Shougo/neobundle.vim ~/.nvim/bundle/neobundle.vim"))
    let bundleExists = 0
  endif

  if 0 | endif

  if has('vim_starting')
    if &compatible
      set nocompatible
    endif

" Required:
    set runtimepath+=~/.nvim/bundle/neobundle.vim/
    set runtimepath+=~/.nvim/bundle/bolt.vim/
  endif

" Required:
  call neobundle#begin(expand('~/.nvim/bundle/'))

" Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

" Setup indents
  set expandtab
  set shiftwidth=2
  set softtabstop=2

" Remap esc key
  inoremap EE <Esc>

autocmd BufNewFile,BufRead .*rc set filetype=javascript
autocmd BufNewFile,BufRead *.gyp set filetype=json
autocmd BufNewFile,BufRead *webpack.config set filetype=javascript

" Syntax
  NeoBundle 'othree/yajs.vim'
  NeoBundle 'kern/vim-es7'
  NeoBundle 'hail2u/vim-css3-syntax'
  NeoBundle 'moll/vim-node'
  NeoBundle '1995eaton/vim-better-javascript-completion'
  NeoBundle 'vim-scripts/SyntaxComplete'
  NeoBundle 'othree/javascript-libraries-syntax.vim'
  NeoBundleLazy 'elzr/vim-json', {'autoload':{'filetypes':['json']}}
  NeoBundle 'tpope/vim-markdown'
  NeoBundle 'suan/vim-instant-markdown'
  NeoBundle 'othree/es.next.syntax.vim'
  NeoBundle 'wavded/vim-stylus'
  NeoBundle 'digitaltoad/vim-pug'
  NeoBundle 'dNitro/vim-pug-complete'
  NeoBundle 'gregsexton/Atom'
  NeoBundle 'endel/vim-github-colorscheme'
  NeoBundle 'NLKNguyen/papercolor-theme'
  NeoBundle 'ayu-theme/ayu-vim'

  NeoBundle 'rust-lang/rust.vim'

  NeoBundle 'vimlab/split-term.vim'

 " colorscheme & syntax highlighting
  NeoBundle 'mhartington/oceanic-next'
  NeoBundle 'tomasr/molokai'
  NeoBundle 'Yggdroot/indentLine'
  NeoBundle 'Raimondi/delimitMate'
  NeoBundle 'valloric/MatchTagAlways'
  NeoBundle 'hzchirs/vim-material'
  NeoBundle 'crusoexia/vim-monokai'
  NeoBundle 'rakr/vim-one'

  NeoBundle 'billyvg/tigris.nvim'

 " git helpers
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'airblade/vim-gitgutter'
  NeoBundle 'Xuyuanp/nerdtree-git-plugin'

 " utils
  NeoBundle 'benekastah/neomake'
  NeoBundle 'editorconfig/editorconfig-vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'AndrewRadev/switch.vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'tomtom/tcomment_vim'
  NeoBundle 'mattn/emmet-vim'
  NeoBundle 'Chiel92/vim-autoformat'
  NeoBundle 'gorodinskiy/vim-coloresque'
  NeoBundle 'MarcWeber/vim-addon-mw-utils'
  NeoBundle 'tomtom/tlib_vim'
  NeoBundle 'garbas/vim-snipmate'
  NeoBundle 'honza/vim-snippets'

 " shougo stuff
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/deoplete.nvim'
  NeoBundle 'Shougo/neco-vim'
  NeoBundle 'Shougo/neoinclude.vim'
  NeoBundle 'Shougo/neosnippet.vim'
  NeoBundle 'Shougo/neosnippet-snippets'

  NeoBundle 'wincent/terminus'

  call neobundle#end()

  let g:one_allow_italics=1

  set termguicolors
  let ayucolor="light"
  colorscheme ayu

  if (empty($TMUX))
    if (has('nvim'))
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has('termguicolors'))
      set termguicolors
    endif
  endif


" Required:
  filetype plugin indent on
  filetype plugin on
  set omnifunc=syntaxcomplete#Complete

  NeoBundleCheck
  if bundleExists == 0
    echo "Installing bundles, ignore errors"
  endif

" System Settings
  set termguicolors
  set noshowmode
  set noswapfile
  set ruler
  filetype on
  set relativenumber number
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
  set wildmenu
  set laststatus=2
  set wrap linebreak nolist
  set wildmode=full
  let mapleader = ','
  set undofile
  set undodir="$HOME/.VIM_UNDO_FILES"
  let g:jsx_ext_required = 0

  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

  let g:unit_source_codesearch_command = '$HOME/bin/csearch'
  let g:table_mode_corner='|'

" #Neosnippet #deoplete
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  xmap <C-k> <Plug>(neosnippet_expand_target)

  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  imap <expr><tab>
    \ pumvisible() ? "\<C-n>" :
    \ neosnippet#expandable_or_jumpable() ?
    \   "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"

  smap <expr><TAB> neosnippet#mappings#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

  if has('conceal')
    set conceallevel=2 concealcursor=niv
  endif

" Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1

  let g:deoplete#enable_at_startup = 1

" Highlights
"  autocmd FileType * hi Normal ctermbg=none guibg=none guifg=#6C7A89
  autocmd FileType * hi Comment ctermfg=240 guifg=#b0bec5
  autocmd FileType * hi LineNr ctermbg=none guibg=none
  hi Cursor cterm=reverse gui=reverse
