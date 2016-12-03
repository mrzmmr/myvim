execute pathogen#infect()
filetype plugin indent on
syntax on
set t_Co=256
set expandtab
set shiftwidth=4
set tabstop=4
nmap ZZ :wqall<CR>
imap EE <Esc>

""""""""""
" Default for files
""""""""""
color dracula


""""""""""
" For Markdown files
""""""""""
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()

function! DistractionFreeWriting()
    let g:limelight_conceal_ctermfg=251
    color iawriter
    set background=light
    Goyo 100%
    Limelight
endfunction

""""""""""""""""""""
" For Js files
""""""""""""""""""""
au BufNewFile,BufRead *.{js,javascript,es,json,es6,babel} call Javascript()
au BufNewFile,BufRead *.{js,javascript,es,json,es6,babel} call Test()

function! Javascript()
    let g:limelight_conceal_ctermfg=238
    color dracula
    set background=dark
    Goyo 100%
""    Limelight
endfunction

function! Test()
    set nu
endfunction

""""""""""""""""""""
" For .gyp files
""""""""""""""""""""
au BufNewFile,BufRead *.gyp setfiletype json

""""""""""""""""""""
" NERDTree
""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""
" C++ syntax highlighting
""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

