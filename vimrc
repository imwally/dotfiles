syntax off
set number
set tabstop=2

call pathogen#infect()
map <F2> :NERDTreeToggle<CR>
let NERDTreeDirArrows=0

highlight LineNr ctermfg=grey ctermbg=white
