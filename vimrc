execute pathogen#infect()
filetype plugin indent on
syntax on

set background=light
colorscheme pencil

nmap ZZ :wqall<CR>
nmap C-t :ConqueTermVSplit zsh<CR>
imap EE <Esc>
nmap <C-P> :NERDTreeToggle<CR>

set nu
set wrap
set linebreak
set expandtab
set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=75
set wrapmargin=75
set laststatus=2
set statusline=1
set t_Co=256
set statusline+=%warningmsg#
set statusline+=%*

let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = '-Wall'
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler_options = '-Wall'
let g:syntastic_c_compiler_options = '-std=c11'
let g:syntastic_c_auto_refresh_includes = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:NERDTreeWinSize = 20

augroup Split
  au!
  au VimEnter * Goyo
  au VimEnter * set nu
  au VimEnter * hi LineNr ctermfg=black ctermbg=NONE
  au VimEnter * set numberwidth=5
  au VimEnter * GitGutterEnable
"  au VimEnter * GitGutterLineHighlightsEnable
"  au VimEnter * ConqueTermVSplit zsh
  au VimEnter * Goyo 80
augroup end

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
  autocmd BufRead,BufNewFile *.racket set filetype=racket
  autocmd BufRead,BufNewFile *.rust set filetype=rust
  autocmd BufRead,BufNewFile *.gyp set filetype=json
  autocmd VimEnter * hi Comment ctermfg=248
augroup end

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au VimEnter,WinEnter,BufWinEnter * hi CursorLine cterm=none ctermbg=lightgrey
  au WinLeave * setlocal nocursorline
augroup end
