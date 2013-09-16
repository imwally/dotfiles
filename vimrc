syntax off
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

call pathogen#infect()
map <F2> :NERDTreeToggle<CR>
let NERDTreeDirArrows=0

highlight LineNr ctermfg=grey ctermbg=white
