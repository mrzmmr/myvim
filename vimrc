execute pathogen#infect()
filetype plugin indent on
syntax on

"" Mappings

nmap ZZ :wqall<CR>
imap EE <Esc>

"" Set
set wrap
set linebreak
set expandtab
set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=80
set wrapmargin=80
set background=dark
set laststatus=2
set statusline=1
set colorcolumn=80
hi ColorColumn ctermbg=darkgrey

set t_Co=256

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END


"" Syntastic
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

"" Goyo
"" autocmd VimEnter * Goyo

"" Git Gutter
autocmd VimEnter * GitGutterLineHighlightsToggle
autocmd VimEnter * GitGutterToggle

"" For some reason comments show blue ??WTF??
autocmd VimEnter * highlight Comment ctermfg=243


colorscheme lucius
LuciusLightLowContrast
