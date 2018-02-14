syntax off

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" backspace like a normal editor, please
set backspace=indent,eol,start

highlight LineNr ctermfg=darkgreen

execute pathogen#infect()
filetype plugin indent on
