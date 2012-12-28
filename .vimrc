"Tex kram"
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"



set tags+=~/.vim/tags/tags
syntax on

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on
   
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
   
  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  autocmd FileType c setlocal ts=4 sts=4 sw=4 expandtab
  autocmd FileType c++ setlocal ts=4 sts=4 sw=4 expandtab
   
endif

